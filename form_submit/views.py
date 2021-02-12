from django import forms
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
import subprocess
import os
from pdflatex import PDFLaTeX
from aide_validation.validator import Validator


# LANGUAGES = [("es", "Español"), ("en", "English")]

# FILE_TYPE = [("pdf", "PDF"), ("html", "HTML")]

REPORT_TYPE = [
    ("docs_website_eng", "Design Specifications: HTML (English)"),
    ("docs_website_esp", "Memoria Tecnica: HTML (Español)"),
    ("docs_pdf_eng", "Design Specifications: PDF (English)"),
    ("docs_pdf_esp", "Memoria Tecnica: PDF (Español)"),
    ("validation_pdf", "Validation Report: PDF (English)"),
]


class DocGenForm(forms.Form):
    # TODO: Add logic restricting certain language/file_type combinations
    link = forms.URLField()
    # language = forms.CharField(widget=forms.Select(choices=LANGUAGES))
    report_type = forms.CharField(widget=forms.Select(choices=REPORT_TYPE))
    # file_type = forms.CharField(widget=forms.Select(choices=FILE_TYPE))


def submit_form(request):
    if request.method == "POST":
        form = DocGenForm(request.POST)
        if form.is_valid():
            link = form.cleaned_data["link"]
            report_type = form.cleaned_data["report_type"]

            if "esp" in report_type:
                language = "es"
            elif "eng" in report_type:
                language = "en"
            # language = form.cleaned_data["language"]
            # file_type = form.cleaned_data["file_type"]

            if "validation_pdf" in report_type:
                validator = Validator()
                validator.validate(link)
                file_name = ".".join(
                    validator.report_writer.report_name.split(".")[:-1] + ["pdf"]
                )

                output_file = open(file_name, "rb")

                response = HttpResponse(output_file, content_type="application/pdf")

                response["Content-Disposition"] = (
                    'attachment; filename="' + file_name + '"'
                )

                output_file.close()

                return response

            else:
                if os.path.basename(os.getcwd()) != "docs":
                    os.chdir("form_submit/templates/docs")

                with open("settings.py", "w") as f:
                    f.write("language = '" + language + "'\n")
                    f.write("link = '" + link + "'\n")
                    f.close()

                # TODO: add 'make clean' equivalent before 'build_sphinx'
                if "docs_website" in report_type:
                    subprocess.call(["python", "setup.py", "build_html"])
                    return HttpResponseRedirect("/index")

                elif "docs_pdf" in report_type:
                    subprocess.call(["python", "setup.py", "build_latex"])
                    os.chdir("./build/sphinx/latex")
                    pdfl = PDFLaTeX.from_texfile("AideDesignSpecs.tex")
                    pdf, log, _ = pdfl.create_pdf(keep_pdf_file=True)

                    output_file = open("AideDesignSpecs.pdf", "rb")

                    response = HttpResponse(output_file, content_type="application/pdf")

                    response["Content-Disposition"] = (
                        "attachment; filename=" '"AideDesignSpecs.pdf"'
                    )

                    output_file.close()

                    # reset directory so if called again it's back in docs
                    os.chdir("../../..")

                    return response

        else:
            # If the form is invalid, re-render the page with existing info
            return render(request, "form_submit/submit.html", {"form": form})

    return render(request, "form_submit/submit.html", {"form": DocGenForm()})


def docs(request, doc="index", page=None):
    if page:
        return render(request, "docs/build/sphinx/html/" + doc + "/" + page + ".html")
    else:
        return render(request, "docs/build/sphinx/html/" + doc + ".html")
