(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(transient-mark-mode 1))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; highlight selection area
(transient-mark-mode t)

;; highlight current line
(global-hl-line-mode 1)

;; use space instead of tab
(setq-default indent-tabs-mode nil) 

;; do not create backup files
(setq make-backup-files nil) 

;; key binding for goto line
(global-set-key (kbd "M-g") 'goto-line)

;; create a new problem solver from the basic template
(defun have-fun (filename)
  "setup for a new competitive programming problem"
  (interactive "F")
  (unless (file-exists-p filename)
    (copy-file "~/AlgoTemplates/basic_temp.hpp" filename))
  (unless (file-exists-p "./Makefile")
    (copy-file "~/AlgoTemplates/Makefile.temp" "./Makefile") )
  (find-file filename))

;; insert your templates
(defun require-float-utility ()
  "require float utility"
  (interactive nil)
  (insert-file-contents "~/AlgoTemplates/float_utility.hpp"))

;; key binding for compile
(global-set-key [f5] 'compile)  
(global-set-key [f6] 'gud-gdb)
