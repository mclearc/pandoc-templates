(TeX-add-style-hook
 "letter"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("newlfm" "12pt" "stdletter" "orderfromtodate" "sigleft" "dateleft")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("hyperref" "xetex" "	colorlinks=true" "	urlcolor=darkblue" "linkcolor=darkblue" "plainpages=false" "		")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "newlfm"
    "newlfm12"
    "charter"
    "graphicx"
    "color"
    "hyperref")
   (LaTeX-add-saveboxes
    "Lunl")
   (LaTeX-add-color-definecolors
    "darkblue")))

