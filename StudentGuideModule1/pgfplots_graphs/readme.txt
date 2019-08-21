
In summer 2019, a few of us (mostly Matt and Mariama) noted that graphs 
in our lab manuals are not styled consistently.  Many of them look okay, but
some are downright ugly.

Also, the graphs come from many sources (xfig, Microsoft Word, etc.) or have no 
source other than an un-editable eps file.  This makes tweaking them hard.

This folder represents the start of a solution, cobbled together by Matt in summer 2019. 
The idea is to use pgfplots to generate at least most of the graphs in the manuals.  
If this is done using a handful of presets, it will generally enforce stylistic 
consistency, while still allowing customization as necessary.

As of August 21, 2019, this directory contains both a working file of the presets and
definitions, lab_graph_definitions.tex (which would eventually be read by the 
labmanual_formatting_commands.tex file), and also a standalone document, 
lab_graph_examples.tex, which contains several examples of how the presets and 
some other options can be used to create various graphs and axes for the manual. It also contains a user manual (tex and pdf) with brief descriptions of the eight different styles and short-cuts I've defined.

In the lab_graph_examples file, I've shown how to use a bunch of different 
preset styles and options that I have created for convenience.  But the way 
pgfplots is written, there is no limit to the amount of additional customization 
you can do.  (And personally, if anyone wants to ignore my presets entirely 
and code your own graphs from scratch, that's fine with me.)

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

Here's a summary of what I believe are the main arguments for and against using pgfplots for all our graphs:

Cons:
1. Most of us don't know anything about pgfplots, and would have to learn something new in order to make graphs this way.  (It won't be too hard, assuming you mostly follow the examples I've already made.)  Matt will always help you figure something out if you need it.
2. Pgfplots isn't a wysiwyg editor like Microsoft Word.  You write lines of script (as in Latex or Mathematica) and it gets compiled into a pretty figure within your Latex document.
3. pgfplots is a pain to use, IMHO.  (quirky syntax, manual not great, not tons of help online).
4. Changing all of the graphs will be a reasonable amount of work.  (Though Matt volunteers to do it.)

Pros:
1. Will set stylistic consistency as the default (though it won't preclude you from breaking it if you want to).
2. If individual graphs are tweaked later, Github will actually show what changes were made to each graph.  (Currently it just says, "binary file changed", which doesn't really help, and doesn't offer a good way to see both versions.)
3. Although figuring out pgfplots is kind of a pain, using preset styles that are already set up isn't that bad.
4. It's very easy to tweak styles later if we want to.  A change made to a preset style will automatically affect all graphs.
5. Pgfplots appears to be extremely powerful, and will not limit anything we want to do.  (That said, I'm not necessarily in favor of using it for EVERY single one-of-a-kind graph in the manual.  For really complicated graphs with lots of annotations, that would be a nuisance, and I think it would be totally fine to make a few graphs in Mathematica or
Excel or whatever, roughly matching the style of the other plots in the manual.)

--Matt Trawick, July 31, 2019
