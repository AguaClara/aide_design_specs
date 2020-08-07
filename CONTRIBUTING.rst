.. _title_Translation_Process:
**********************************************
The Translation Process
**********************************************

.. _heading_Sphinx_Internationlization:

Using the Sphinx Internationalization Feature
===============================================

To translate the AIDE Design Specifications Sphinx project, the Sphinx
Internationalization Feature known as Internationalization can be used.

See https://aguaclara.github.io/Textbook/Textbook_Creation_Help/rst_intro.html
for an introduction to RST and Sphinx

sphinx-intl is a useful tool that allows the translation process to run smoothly.

After installing sphinx-intl, configurations must be set up in conf.py such as
specifications for the path and a language parameter. Once the configurations
are set up, translatable messages are extracted in pot files by using the command
"make gettext". The pot files will then be found in the "_build/gettext" directory.
Next, po files will be generated from the pot files using
"sphinx-intl update -p _build/gettext -l <source language> -l <target language>".
These po files will be found in these directories:

  ./locale/<source language>/LC_MESSAGES/

  ./locale/<target language>/LC_MESSAGES/

The .po files in ./locale/<target language>/LC_MESSAGES/ can then be translated
into the target language either manually or through the use of a tool such as
Poedit. For manual translation, the .po files contain "msgid" string messages
in the source language along with an empty "msgstr" string message directly below
each one. The user can fill in the msgstr string with the translated message in
the target language. Once the desired po files have been translated, a translated
document can be built in the command prompt by running "make html" or any
desired build command.

For detailed instructions on how to get set up and use sphinx-intl,
see https://www.sphinx-doc.org/en/master/usage/advanced/intl.html#id7

.. _heading_what_are_pot_and_po_files:

What are POT and PO files?
===========================
POT files contain text extracted from the RST files and serve as a template for
translations. The "msgid" messages are automatically filled in, but the "msgstr"
messages contain empty strings.

PO files are copies of their corresponding POT files except that they contain the
translations in the "msgstr" messages. Each language has its own PO files, so if
another language is to be added, a new copy of POT files are made as PO files in
which its "msgstr" messages can be filled in with a translator.


.. _heading_Poedit:

How to use Poedit
==================
Poedit is an efficient tool to help automate the translation of po files. Once
Poedit is opened, the user can follow these instructions:

#. Navigate to the open button on the sidebar in the upper left corner.
#. Find the desired .po file to translate within the ./locale/<target language>/LC_MESSAGES/ directory. If not already, make sure the field next to "file name" is set to either "All Translation Files" or "PO Translation Files (*.po)" :

    .. _figure_choose_file:

    .. figure:: .images/choose_file.png
          :width: 400px
          :align: center

#. If it is the first time editing that file, the following warning message will appear:

    .. _figure_Poedit_lang_warning:

    .. figure:: .images/poedit_lang_warning.JPG
        :width: 550px
        :align: center

        select "Set language". A new window will open:

    .. _figure_catalog_properties:

    .. figure:: .images/catalog_properties.JPG
        :width: 300px
        :align: center

        In the Language field, select the desired target language and click "OK".

#. If the language listed next to "source text" is not the source language, continue to steps 5-6. If it is the source language, skip to step 7.

#. Click "save" in Poedit, then open the po file in a text editor such as Atom.

#. At the top of the file, below the first "msgid" and "msgstr" messages, "X-Generator: Poedit 2.3.1\\n" can be found. Right below this, insert "X-Source-Language: <source language>\\n" so that it looks like line 22 in the following example where <source language> is "es" (Spanish):

    .. _figure_change_source_lang_ex:

    .. figure:: .images/change_source_lang_ex.JPG
        :width: 500px
        :align: center

#. Click on "Pre-translate" in the sidebar. Put a checkmark next to "Use online suggestions" and "Don't mark exact matches as needing work" (optional) and click "Pre-translate".

#. Go through each translation and unmark/mark as "Needs work". Once done, click "Save" and start back at step 1 to translate a different file.
