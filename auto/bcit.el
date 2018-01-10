(TeX-add-style-hook
 "bcit"
 (lambda ()
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
    "exercise"))
 :latex)

