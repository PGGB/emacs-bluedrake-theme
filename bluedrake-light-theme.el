;;; bluedrake-light-theme.el --- Light Bluedrake theme for Emacs

;;; Commentary:

;;; Code:

(require 'bluedrake-theme)

(deftheme bluedrake-light "Light variant of the Bluedrake theme")
(create-bluedrake-theme 'light 'bluedrake-light)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'bluedrake-light)
;;; bluedrake-light-theme.el ends here
