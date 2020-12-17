#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Sound Design Toolkit OSC Quick Reference documentation build configuration file

import sys
import os

# -- General configuration ------------------------------------------------


extensions = [
    'sphinx_rtd_theme'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'

# General information about the project.
project = 'Sound Design Toolkit OSC Quick Reference'
copyright = '2020, Marco Tiraboschi'
author = 'Marco Tiraboschi'


version = os.environ.get("SDT_VERSION", "version undefined")
release = version

language = None
exclude_patterns = []
pygments_style = 'sphinx'
todo_include_todos = False


# -- Options for HTML output ----------------------------------------------

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
htmlhelp_basename = 'SoundDesignToolkitOSCQuickReferencedoc'

# -- Options for LaTeX output ---------------------------------------------

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
#'papersize': 'letterpaper',

# The font size ('10pt', '11pt' or '12pt').
#'pointsize': '10pt',

# Additional stuff for the LaTeX preamble.
#'preamble': '',

# Latex figure (float) alignment
#'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'SoundDesignToolkitOSCQuickReference.tex', 'Sound Design Toolkit OSC Quick Reference Documentation',
     'Marco Tiraboschi', 'manual'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = None

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# If true, show page references after internal links.
#latex_show_pagerefs = False

# If true, show URL addresses after external links.
#latex_show_urls = False

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_domain_indices = True


# -- Options for manual page output ---------------------------------------

man_pages = [
    (master_doc, 'sounddesigntoolkitoscquickreference', 'Sound Design Toolkit OSC Quick Reference Documentation',
     [author], 1)
]

# -- Options for Texinfo output -------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'SoundDesignToolkitOSCQuickReference', 'Sound Design Toolkit OSC Quick Reference Documentation',
     author, 'SoundDesignToolkitOSCQuickReference', 'One line description of project.',
     'Miscellaneous'),
]

# Documents to append as an appendix to all manuals.
#texinfo_appendices = []

# If false, no module index is generated.
#texinfo_domain_indices = True

# How to display URL addresses: 'footnote', 'no', or 'inline'.
#texinfo_show_urls = 'footnote'

# If true, do not generate a @detailmenu in the "Top" node's menu.
#texinfo_no_detailmenu = False
