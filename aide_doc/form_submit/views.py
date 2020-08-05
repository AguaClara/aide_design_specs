from django import forms
from django.shortcuts import render
import subprocess
import os

LANGUAGES = [
    ('es', 'Español'),
    ('en', 'English')
]


class DocGenForm(forms.Form):
    link = forms.URLField()
    language = forms.CharField(widget=forms.Select(choices=LANGUAGES))

# Create your views here.


def submit_form(request):
    if request.method == 'POST':
        form = DocGenForm(request.POST)
        if form.is_valid():
            link = form.cleaned_data["link"]
            language = form.cleaned_data["language"]

            os.chdir("form_submit/templates/docs")
            # TODO: add 'make clean' equivalent before 'build_sphinx'
            subprocess.call(['python', 'setup.py', 'build_sphinx'])

        else:
            # If the form is invalid, re-render the page with existing information.
            return render(request, "form_submit/submit.html", {
                "form": form
            })

    return render(request, 'form_submit/submit.html', {
        'form': DocGenForm()
    })


def index(request):
    return render(request,'docs/build/sphinx/html/index.html')

def docs(request, doc='index', page=None):
    if page:
        return render(request,'docs/build/sphinx/html/' + doc + '/' + page + '.html')
    else:
        return render(request, 'docs/build/sphinx/html/' + page + '.html')

def image(request, image):
    return render(request,'docs/build/sphinx/html/_images/' + image + '.png')
