(TeX-add-style-hook
 "fs-06-PoissonNormal"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "xcolor=dvipsnames")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "alltt")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "teachbeamer")
   (LaTeX-add-labels
    "eq:zaengeit"
    "eq:hiechoib"
    "eq:iechahve"
    "eq:iedohdah"
    "eq:aitoolah"
    "eq:uotoogoo"
    "eq:igutheib"
    "eq:deapheph"
    "eq:taedaiga"
    "eq:ahraefis"
    "eq:aequaixe"
    "eq:oocohdau"
    "eq:aethohph"
    "eq:aedecaba"
    "eq:oolojuth"
    "eq:eikaiche"
    "eq:aihuroot"))
 :latex)

