(TeX-add-style-hook
 "fs-termtest-A"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "table")))
   (add-to-list 'LaTeX-verbatim-environments-local "alltt")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "alltt"
    "enumerate"
    "syllogism"
    "october"
    "xcolor")
   (TeX-add-symbols
    '("aufgabe" 1))
   (LaTeX-add-counters
    "aufg"))
 :latex)

