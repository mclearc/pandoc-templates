(TeX-add-style-hook
 "tufteII"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("tufte-handout" "$if(papersize)$$papersize$" "$endif$nols" "notitlepage" "notoc")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("caption" "labelformat=empty") ("ulem" "normalem") ("csquotes" "autostyle" "german=guillemets")))
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim*")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (TeX-run-style-hooks
    "latex2e"
    "tufte-handout"
    "tufte-handout10"
    "lmodern"
    "amsthm"
    "amsmath"
    "amssymb"
    "ifxetex"
    "ifluatex"
    "fixltx2e"
    "fontenc"
    "inputenc"
    "setspace"
    "graphicx"
    "enumitem"
    "xltxtra"
    "xunicode"
    "fontspec"
    "lastpage"
    "longtable"
    "caption"
    "booktabs"
    "fancyvrb"
    "xspace"
    "ulem"
    "polyglossia"
    "fancyhdr"
    "epigraph"
    "csquotes")
   (TeX-add-symbols
    "euro"
    "tightlist")
   (LaTeX-add-bibliographies
    "$for(bibliography)$$bibliography$$sep$"
    "$endfor$")
   (LaTeX-add-lengths
    "fullwidthlength")
   (LaTeX-add-fontspec-newfontcmds
    "smallcapsfont"))
 :latex)

