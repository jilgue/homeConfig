(server-start)
(desktop-save-mode 1)

;(require 'ido)
(ido-mode t)

(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

(setq org-todo-keywords
     '((sequence "TODO(t@/!)" "WORKING(w@/!)" "DONE(d!)")
        (sequence "PAUSED(p!)" "WAITING(i@/!)" "CANCELED(c!)")))
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
        ("WORKING" . "black")
        ("WAITING" . "blue")
        ("PAUSED" . "blue")
        ("CANCELED" . (:foreground "blue" :weight bold))))

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(add-to-list 'load-path "/home/cesar/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/cesar/.emacs.d//ac-dict")
(ac-config-default)

(require 'ibuffer)
(global-set-key "\C-x\C-b" 'ibuffer)
