;;; bluedrake-theme.el --- Bluedrake theme for Emacs

;;; Commentary:

;;; Code:

(defun create-bluedrake-theme (variant theme-name)
  (let* ((base00  "#002d49")
         (base01  "#003951")
         (base10  "#2f5468")
         (base11  "#b4c3cf")
         (base20  "#577284")
         (base21  "#8ea2b0")
         (base30  "#dae6f0")
         (base31  "#edf8ff")

         (blue    "#0094d4")
         (red     "#d75a69")
         (orange  "#b67800")
         (yellow  "#768f00")
         (green   "#009e3c")
         (cyan    "#00a39a")
         (purple  "#976ce2")
         (magenta "#d74bb9")

         (baseback0  (if (eq variant 'dark) base00 base31))
         (baseback1  (if (eq variant 'dark) base01 base30))
         (basecolor0 (if (eq variant 'dark) base10 base11))
         (basecolor1 (if (eq variant 'dark) base11 base10))
         (basecolor2 (if (eq variant 'dark) base20 base21))
         (basecolor3 (if (eq variant 'dark) base21 base20))
         (basefore0  (if (eq variant 'dark) base30 base00))
         (basefore1  (if (eq variant 'dark) base31 base01)))

    (custom-theme-set-faces
     theme-name
     ;;; basic-faces
     `(default ((t (:foreground ,blue :background ,baseback0))))
     `(shadow)
     `(link)
     `(link-visited)
     `(highlight)
     `(region ((t (:foreground ,baseback1 :background ,basecolor1))))
     `(secondary-selection)
     `(trailing-whitespace)
     `(escape-glyph)
     `(nobreak-space)

     ;; mode-line-faces
     `(mode-line)
     `(mode-line-inactive)
     `(mode-line-highlight)
     
     `(header-line)
     `(window-divider)
     `(window-divider-first-pixel)
     `(window-divier-last-pixel)
     `(minibuffer-prompt)
     `(fringe ((t (:foreground ,basecolor2 :background ,basecolor2))))
     `(cursor ((t (:foreground ,baseback1 :background ,basecolor3))))
     `(tool-bar)
     `(error ((t (:foreground ,red))))
     `(warning ((t (:foreground ,yellow))))
     `(success ((t (:foreground ,green))))
     `(tty-menu-enabled-face)
     `(tty-menu-disabled-face)
     `(tty-menu-selected-face)

     ;;; paren-showing-faces
     `(show-paren-match)
     `(show-paren-mismatch)
     
     `(tooltip)

     `(font-lock-comment-face ((t (:foreground ,basecolor2))))
     `(font-lock-comment-delimiter-face)
     `(font-lock-string-face ((t (:foreground ,green))))
     `(font-lock-doc-face)
     `(font-lock-keyword-face ((t (:foreground ,magenta))))
     `(font-lock-builtin-face ((t (:foreground ,magenta))))
     `(font-lock-function-name-face ((t (:foreground ,cyan))))
     `(font-lock-variable-name-face ((t (:foreground ,purple))))
     `(font-lock-type-face ((t (:foreground ,orange))))
     `(font-lock-constant-face ((t (:foreground ,red))))
     `(font-lock-warning-face)
     `(font-lock-negation-char-face ((t (:foreground ,red))))
     `(font-lock-preprocessor-face ((t (:foreground ,yellow))))
     

     `(isearch ((t (:foreground ,baseback1 :background ,magenta))))
     `(isearch-fail)
     `(lazy-highlight)
     )))



(provide 'bluedrake-theme)
;;; bluedrake-theme.el ends here
