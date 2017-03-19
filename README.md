# 131
LaTeX source for Physics 131, the first semester of our two-semester introductory physics sequence.

----
Note by Matt Trawick, 3/18/2017:
The 131 manual and the 132 manual are now coupled together, in the sense that they share some files and refer explicitely to each other.  If you want 132 to work, you need to have 131 cloned locally as well. This arose to avoid having two different versions of the same lab in the two repos.

- Any lab used by 131 and 132 will live in only one of those places, generally the one where it more naturally belongs.  (Mechanics stuff in 131, e&m in 132, and appendices in 131 by default.)

- Because files in the 132 repository can now refer to files within the 131 repository, this means that in order to compile, the 131 and 132 repositories have to be placed in directories in the same place relative to each other.  Both of the repositories need to be cloned locally as subdirectories of a common directory:

/Local_lab_manuals_directory (call it whatever you want)
  |-131
  |   |-StudentGuideModule1
  |   |-.git
  |
  |-132
      |-StudentGuideModule2
      |-.git
    
Note that the main disadvantage of using files from two repositories like this is that the history of the 132 repo no longer tracks changes to the 131 labs, and vice-versa.

As of 3/18/2017, the best way to implement shared labs has now changed with an updated version of the \includelab command. For instance in the 132 manual, if you want to call a 131 lab, you would use: \includelab{1}[../../131/StudentGuideModule1/]{velocity/velocity}.  You no longer a need to create a separate dummy file and use the \input command.


----
