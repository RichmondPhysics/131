# 131
LaTeX source for Physics 131, the first semester of our two-semester introductory physics sequence.

----
Note by Matt Trawick, 9/3/2015:
The 131 manual and the 132 manual are now coupled together, in the sense that they share some files and refer explicitely to each other.  If you want 132 to work, you need to have 131 cloned locally as well. This arose to avoid having two different versions of the same lab in the two repos.  Here's what I propose, and will gradually start to implement:

* Any lab used by 131 and 132 will live in only one of those places, generally the one where it more naturally belongs.  (Mechanics stuff in 131, e&m in 132, and appendices in 131 by default.)

* If 132 needs to use a 131 lab (say, "motion.tex", there will be a file in the 132 repo called something like "motion.tex" or "motion_from_131.tex" that contains a single line:
	\input{../../131/StudentGuideModule1/motion/motion.tex}
(The reason for the extra file with a single input line, rather than just directly changing the \include statement in the master.tex to point include something from 131, is to make sure that the generated .aux files from 131 and 132 end up in different places, so they don't interfere with each other.

- Within the 132 repo, either the one-line motion.tex file or its containing folder should be renamed to something like "motion_from_131".  This way, anyone working with the 132 manual can see at a glance which files come from the other repo, in case they need to make sure they have the right version, check on change histories, or whatever.  The big disadvantage of using files from two repositories like this is that the history of the 132 repo no longer tracks changes to the 131 labs, and vice-versa.

- Because files in the 132 repository can now refer to files within the 131 repository, this means that in order to compile, the 131 and 132 repositories have to be placed in directories in the same place relative to each other.  Both of the repositories need to be cloned locally as subdirectories of a common directory:

/Lab_manuals_directory
  |-131
  |   |-StudentGuideModule1
  |   |-.git
  |
  |-132
      |-StudentGuideModule2
      |-.git
    

----
