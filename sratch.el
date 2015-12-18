;;;;; Use latexmk & xelatex for org conversion
    (require 'org)
    (require 'ox-bibtex)
    (require 'ox-latex)
    (setq org-latex-listings t)

    (org-add-link-type "cite"
                       (defun follow-cite (name)
                         "Open bibliography and jump to appropriate entry.
        The document must contain \bibliography{filename} somewhere
        for this to work"
                         (find-file-other-window
                          (save-excursion
                            (beginning-of-buffer)
                            (save-match-data
                              (re-search-forward "\\\\bibliography{\\([^}]+\\)}")
                              (concat (match-string 1) ".bib"))))
                         (beginning-of-buffer)
                         (search-forward name))
                       (defun export-cite (path desc format)
                         "Export [[cite:cohen93]] as \cite{cohen93} in LaTeX."
                         (if (eq format 'latex)
                             (if (or (not desc) (equal 0 (search "cite:" desc)))
                                 (format "\\cite{%s}" path)
                               (format "\\cite[%s]{%s}" desc path)))))


    ;; Originally taken from Bruno Tavernier: http://thread.gmane.org/gmane.emacs.orgmode/31150/focus=31432
    ;; but adapted to use latexmk 4.20 or higher.
    (defun my-auto-tex-cmd ()
    "When exporting from .org with latex, automatically run latex,
        pdflatex, or xelatex as appropriate, using latexmk."
    (let ((texcmd)))
    ;; default command: oldstyle latex via dvi
    (setq texcmd "latexmk -dvi -pdfps -quiet %f")
    ;; pdflatex -> .pdf
    (if (string-match "LATEX_CMD: pdflatex" (buffer-string))
        (setq texcmd "latexmk -pdf -quiet %f"))
    ;; xelatex -> .pdf
    (if (string-match "LATEX_CMD: xelatex" (buffer-string))
        (setq texcmd "latexmk -pdflatex=xelatex -pdf -quiet %f"))
    ;; LaTeX compilation command
    (setq org-latex-to-pdf-process (list texcmd)))

    (add-hook 'org-export-latex-after-initial-vars-hook 'my-auto-tex-cmd)


    ;; Specify default packages to be included in every tex file, whether pdflatex or xelatex
    (setq org-latex-packages-alist
        '(("" "graphicx" t)
                ("" "longtable" nil)
                ("" "float" nil)))

    (defun my-auto-tex-parameters ()
        "Automatically select the tex packages to include."
        ;; default packages for ordinary latex or pdflatex export
        (setq org-latex-default-packages-alist
                '(("AUTO" "inputenc" t)
                ("T1"   "fontenc"   t)
                (""     "fixltx2e"  nil)
                (""     "wrapfig"   nil)
                (""     "soul"      t)
                (""     "textcomp"  t)
                (""     "marvosym"  t)
                (""     "wasysym"   t)
                (""     "latexsym"  t)
                (""     "amssymb"   t)
                (""     "hyperref"  nil)))

        ;; Packages to include when xelatex is used
        (if (string-match "LATEX_CMD: xelatex" (buffer-string))
            (setq org-latex-default-packages-alist
                    '(("" "fontspec" t)
                    ("" "xunicode" t)
                    ("" "url" t)
                    ("" "rotating" t)
                    ("american" "babel" t)
                    ("babel" "csquotes" t)
                    ("" "soul" t)
                    ("xetex" "hyperref" nil)
                    )))

        (if (string-match "LATEX_CMD: xelatex" (buffer-string))
            (setq org-latex-classes
                    (cons '("article"
                            "\\documentclass[11pt,article,oneside]{memoir}"
                            ("\\section{%s}" . "\\section*{%s}")
                            ("\\subsection{%s}" . "\\subsection*{%s}")
                            ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                            ("\\paragraph{%s}" . "\\paragraph*{%s}")
                            ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                        org-latex-classes))))

    (add-hook 'org-export-latex-after-initial-vars-hook 'my-auto-tex-parameters)


