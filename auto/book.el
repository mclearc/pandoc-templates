(TeX-add-style-hook
 "book"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("$documentclass$" "$if(fontsize)$$fontsize$" "$endif$$if(lang)$$babel-lang$" "$endif$$if(papersize)$$papersize$" "$endif$$for(classoption)$$classoption$$sep$" "$endfor$")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("$fontfamily$" "$for(fontfamilyoptions)$$fontfamilyoptions$$sep$" "$endfor$") ("fontenc" "$if(fontenc)$$fontenc$$else$T1$endif$") ("inputenc" "utf8") ("geometry" "$for(geometry)$$geometry$$sep$" "$endfor$") ("babel" "shorthands=off" "$for(babel-otherlangs)$$babel-otherlangs$" "$endfor$main=$babel-lang$") ("biblatex" "hyperref=true" "backref=true" "backend=biber" "style=philosophy-modern" "autocite=footnote" "isbn=false" "doi=true" "url=false" "") ("ulem" "normalem") ("bidi" "RTLdocument") ("csquotes" "italian=guillemets") ("xcolor" "usenames" "dvipsnames" "svgnames" "table") ("footmisc" "hang" "flushmargin" "stable" "multiple") ("fncychap" "Lenny")))
   (add-to-list 'LaTeX-verbatim-environments-local "code")
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "$documentclass$"
    "$documentclass$10"
    "$fontfamily$"
    "lmodern"
    "setspace"
    "amssymb"
    "amsmath"
    "ifxetex"
    "ifluatex"
    "fixltx2e"
    "fontenc"
    "inputenc"
    "eurosym"
    "mathspec"
    "fontspec"
    "xeCJK"
    "upquote"
    "microtype"
    "geometry"
    "hyperref"
    "babel"
    "polyglossia"
    "natbib"
    "biblatex"
    "listings"
    "fancyvrb"
    "longtable"
    "booktabs"
    "graphicx"
    "grffile"
    "ulem"
    "bidi"
    "soul"
    "emptypage"
    "mdwlist"
    "enumitem"
    "fancyhdr"
    "lastpage"
    "type1cm"
    "lettrine"
    "epigraph"
    "flexisym"
    "realscripts"
    "csquotes"
    "comment"
    "xcolor"
    "footmisc"
    "titling"
    "footnote"
    "manyfoot"
    "fncychap")
   (TeX-add-symbols
    '("subtitle" 1)
    '("LR" 1)
    '("RL" 1)
    "euro"
    "tightlist"
    "maxwidth"
    "maxheight"
    "oldparagraph"
    "oldsubparagraph"
    "symbolfootnote"
    "thefootnote")
   (LaTeX-add-environments
    '("code")
    "RTL"
    "LTR")
   (LaTeX-add-bibliographies
    "$for(bibliography)$$bibliography$$sep$"
    "$endfor$")
   (LaTeX-add-xcolor-definecolors
    "coolblack"
    "darkblue"
    "darkgreen"
    "darkmidnightblue"))
 :latex)

