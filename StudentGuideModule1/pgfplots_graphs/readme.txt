
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

In the lab_graph_examples file, I've shown how to use a bunch of different 
preset styles and options that I have created for convenience.  But the way 
pgfplots is written, there is no limit to the amount of additional customization 
you can do.  (And personally, if anyone wants to ignore my presets entirely, 
that's fine with me.)

Having worked with pgfplots for about a week, my own opinion is that it's kind 
of a pain in the ass to use.  The syntax is difficult, and the documentation 
strikes me as weak.  I don't recommend it as a general solution to making 
graphs.  However, for this specific situation of our labmanuals on github 
(now that I've created a bunch of preset styles), it strikes me as a reasonable 
tool to use, at least for MOST of the graphs in the manual.  A few of the 
graphs in our manuals are sufficiently complicated that I think it does not 
make sense to try to reproduce them in pgfplots.  In those cases, a few tweaks 
to the original file to come closer to matching the style of the pgfplots 
graphs would be fine.

--Matt Trawick, July 31, 2019
