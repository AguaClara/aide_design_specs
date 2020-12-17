from django import forms
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
import subprocess
import os
from pdflatex import PDFLaTeX
from aide_doc import settings

LANGUAGES = [
    ('es', 'Español'),
    ('en', 'English')
]

FILE_TYPE = [
    ('website', 'Website'),
    ('pdf', 'PDF')
]


class DocGenForm(forms.Form):
    link = forms.URLField()
    language = forms.CharField(widget=forms.Select(choices=LANGUAGES))
    file_type = forms.CharField(widget=forms.Select(choices=FILE_TYPE))


# Create your views here.


def submit_form(request):
    if request.method == 'POST':
        form = DocGenForm(request.POST)
        if form.is_valid():
            link = form.cleaned_data["link"]
            language = form.cleaned_data["language"]
            file_type = form.cleaned_data["file_type"]

            if (os.path.basename(os.getcwd()) != "docs"):
                os.chdir("form_submit/templates/docs")
            # TODO: add 'make clean' equivalent before 'build_sphinx'

            f = open("settings.py", "w")
            f.write("language = '" + language + "'\n")
            f.write("link = '" + link + "'\n")
            f.close()

            if file_type == 'website':
                subprocess.call(['python', 'setup.py', 'build_html'])
                return HttpResponseRedirect('/index')

            elif file_type == 'pdf':
                subprocess.call(['python', 'setup.py', 'build_latex'])
                print(os.getcwd())
                os.chdir("./build/sphinx/latex")
                pdfl = PDFLaTeX.from_texfile('AideDesignSpecs.tex')
                pdf, log, _ = pdfl.create_pdf(keep_pdf_file=True)

                output_file = open('AideDesignSpecs.pdf', 'rb')

                response = HttpResponse(output_file,
                                        content_type='application/pdf')

                response['Content-Disposition'] = ('attachment; filename='
                                                   '"AideDesignSpecs.pdf"')

                output_file.close()

                # reset directory so if called again it's back in docs
                os.chdir("../../..")

                return response

        else:
            # If the form is invalid, re-render the page with existing info
            return render(request, 'form_submit/submit.html', {
                "form": form
            })

    return render(request, 'form_submit/submit.html', {
        'form': DocGenForm()
    })


def index(request):
    return render(request, 'docs/build/sphinx/html/index.html')


def docs(request, doc=index, page=None):
    if page:
        return render(request, 'docs/build/sphinx/html/'
                      + doc + '/' + page + '.html')
    else:
        return render(request, 'docs/build/sphinx/html/' + page + '.html')


def image(request, image):
    return render(request, 'docs/build/sphinx/html/_images/' + image + '.png')
