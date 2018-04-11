(TeX-add-style-hook
 "fs-10-twosamples"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "xcolor=dvipsnames")))
   (add-to-list 'LaTeX-verbatim-environments-local "alltt")
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "teachbeamer")
   (LaTeX-add-labels
    "eq:eefuashi"
    "eq:ewahgada"
    "eq:uobaikam"
    "eq:eipoosoo"
    "eq:ooxaifei"
    "eq:rohvaete"
    "eq:xohkahbu"
    "eq:oobidiex"
    "eq:uazohkeu"
    "eq:oidohgoe"
    "eq:quohthai"
    "eq:noocheij"
    "eq:thiawook"
    "eq:ainahmai"
    "eq:aebohfuu"
    "eq:jaegeeng"
    "eq:vaepiewu"))
 :latex)

