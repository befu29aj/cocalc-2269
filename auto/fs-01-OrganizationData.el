(TeX-add-style-hook
 "fs-01-OrganizationData"
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
    "graphicx"
    "wrapfig"
    "colortbl"
    "alltt")
   (TeX-add-symbols
    "CourseName"
    "CourseNumber"
    "CourseInst")
   (LaTeX-add-labels
    "eq:daechuev"
    "eq:aethecux"
    "eq:eogheivi"
    "eq:uevuemoo"
    "eq:zephahwu"
    "eq:nahjuise"
    "eq:foofieng"
    "eq:ungoliex"
    "eq:aengoore"
    "eq:riquithu"
    "eq:roongeef"
    "eq:ilosoama"
    "eq:boolaesh"
    "eq:xeiroong"
    "eq:eecheaxe"
    "eq:beingeip"
    "eq:iefoopoo"
    "eq:phaecoab")
   (LaTeX-add-xcolor-definecolors
    "myblue"))
 :latex)

