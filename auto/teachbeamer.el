(TeX-add-style-hook
 "teachbeamer"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "alltt")
   (TeX-run-style-hooks
    "tikz"
    "cancel"
    "graphicx"
    "wrapfig"
    "colortbl"
    "color"
    "alltt")
   (TeX-add-symbols
    '("ubung" 0)
    '("beispiel" 1)
    "CourseName"
    "CourseNumber"
    "CourseInst"
    "qeq"
    "QEQ")
   (LaTeX-add-counters
    "expls"
    "exercise")
   (LaTeX-add-xcolor-definecolors
    "red"
    "myblue"))
 :latex)

