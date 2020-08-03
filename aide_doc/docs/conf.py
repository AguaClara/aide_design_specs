#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# AguaClara Plant Design documentation build configuration file, created by
# sphinx-quickstart on Fri Jun 22 18:21:19 2018.
#
# This file is execfile()d with the current directory set to its
# containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))
import parse
import os

# -- General configuration ------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.

extensions = ['sphinx.ext.doctest',
              'sphinx.ext.mathjax',
              'sphinx.ext.todo',
              'sphinxcontrib.bibtex',
              'sphinxcontrib.disqus',
              'matplotlib.sphinxext.only_directives',
              'matplotlib.sphinxext.plot_directive'
              ]

# To setup mathjax with required extensions for all files
mathjax_path = "mathjax_config.js"

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = '.rst'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = 'AIDE Design Specifications'
copyright = '2020, AguaClara Cornell'
author = 'AguaClara Cornell'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
# We use semantic versioning - see here: semver.org as applied to textbooks.
# Note that version names are set on GitHub - NOT here.
version = os.getenv("TRAVIS_TAG", "EXPERIMENTAL")
# The full version, including alpha/beta/rc tags.
release = version
# Make version available to other processes

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
# TODO: set based on language param passed from Documenter
language = 'es'
locale_dirs = ['locale/']
gettext_compact = False

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This patterns also effect to html_static_path and html_extra_path
exclude_patterns = ['_build']
html_extra_path = [".nojekyll"]

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = False

# disqus setup
disqus_shortname = 'AguaClara'


# -- Options for HTML output ----------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
# html_theme_options = {}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

html_context = {
    'css_files': [
        '_static/theme_overrides.css',  # override wide tables in RTD theme
        ],
     }
# taken from https://rackerlabs.github.io/docs-rackspace/tools/rtd-tables.html

# Custom sidebar templates, must be a dictionary that maps document names
# to template names.
#
# This is required for the alabaster theme
# refs: http://alabaster.readthedocs.io/en/latest/installation.html#sidebars
# html_sidebars = {
#     '**': [
#         'about.html',
#         'navigation.html',
#         'relations.html',  # needs 'show_related': True theme option to display
#         'searchbox.html',
#         'donate.html',
#     ]
# }


# -- Options for HTMLHelp output ------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = 'AideDesignSpecs'

# -- Options for LaTeX output ---------------------------------------------

# The config value `latex_engine` has to be a one of ('pdflatex', 'xelatex', 'lualatex', 'platex')
latex_engine = 'pdflatex'

# Add required latex elements for processing. Add things to be imported that aren't
# automatically to the preamble section.
latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
    #
    # 'papersize': 'letterpaper',

    # The font size ('10pt', '11pt' or '12pt').
    #
    # 'pointsize': '10pt',

    # Additional stuff for the LaTeX preamble.
    #
    'preamble': r'''
        \usepackage{cancel}
    ''',

    # Latex figure (float) alignment
    #
    # 'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'AideDesignSpecs.tex', 'AIDE Design Specifications',
     'AguaClara Cornell', 'manual'),
]


# -- Options for manual page output ---------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, 'aidedesignspecs', 'AIDE Design Specifications',
     [author], 1)
]


# -- Options for Texinfo output -------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'AideDesignSpecs', 'AIDE Design Specification',
     author, 'AideDesignSpecs', 'One line description of project.',
     'Miscellaneous'),
]

# -- Options for figure, equation and table referencing -------------------

numfig = True
math_number_all = True

# -- Inclusion of Plots? --------------------------------------------------



# -- Custom roles ---------------------------------------------------------
rst_prolog = """
.. role:: red
"""

# TODO: download entire folder from GitHub via this: https://stackoverflow.com/questions/7106012/download-a-single-folder-or-directory-from-a-github-repo
    # alternatively, use a file path since the Heroku server could store the source docs
# Here's a function to define custom styles to be used with the roles:
def setup(app):
    # parsed_measurements = get_parsed_measurements("https://cad.onshape.com/documents/c3a8ce032e33ebe875b9aab4/w/de9ad5474448b34f33fef097/e/1336f29c2649ad86aceaeaeb")
    parsed_measurements = parse.get_parsed_measurements("https://cad.onshape.com/documents/c3a8ce032e33ebe875b9aab4/v/e86333de5acab12a19f1d87b/e/d75b2f7a41dde39791b154e8")
    # TODO: add way to retrieve file/path from Documenter
    parse.make_replace_file(parsed_measurements, './Entrance_Tank/LFOM.rst')

    app.add_stylesheet('css/custom.css')