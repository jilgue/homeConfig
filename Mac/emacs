(setq make-backup-files nil) ;; no crea los ficheros "foo.bar~" 
(server-start)
(desktop-save-mode 1)

;(require 'ido)
(ido-mode t)

(show-paren-mode t)

(global-visual-line-mode 1) ;; texto en varias lineas

(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

(setq org-todo-keywords
     '((sequence "TODO(t@/!)" "REPLY(r@/!)" "WORKING(w@/!)" "PendingValidation(v!)" "DONE(d!)")
        (sequence "PAUSED(p!)" "WAITING(i@/!)" "CLOSED(c!)")))
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
	("REPLY" . org-warning)
        ("WORKING" . "black")
        ("WAITING" . "blue")
        ("PAUSED" . "blue")
	("PendingValidation" . ("green" :weight bold))
        ("CLOSE" . (:foreground "black" :weight bold))))

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(add-to-list 'load-path "/home/cesar/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/cesar/.emacs.d//ac-dict")
(ac-config-default)

(require 'ibuffer)
(global-set-key "\C-x\C-b" 'ibuffer)
