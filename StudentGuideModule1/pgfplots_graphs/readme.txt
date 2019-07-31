
In summer 2019, a few of us (mostly Matt and Mariama) noted that graphs 
in our lab manuals were not styled consistently.  Some were downright ugly.

Also, the graphs come from many sources (xfig, Microsoft Word, etc.) or have no 
source other than an un-editable eps file.  This makes tweaking them hard.

This folder represents the start of a solution, cobbled together by Matt in summer 2019. 
The idea is to use pgfplots to generate at least most of the graphs in the manuals.  
If this is done using a handful of presets, it will generally enforce stylistic 
consistency, while still allowing customization as necessary.

As of July 31, 2019, this directory contains both a working file of the presets and
definitions, lab_graph_definitions.tex (which would eventually be read by the 
labmanual_formatting_commands.tex file), and also a standalone document, 
lab_graph_examples.tex, which contains several examples of how the presets and 
some other options can be used to create various graphs and axes for the manual.

--Matt Trawick, July 31, 2019
