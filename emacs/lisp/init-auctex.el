;; (mapc (lambda (mode)
;;         (add-hook 'LaTeX-mode-hook mode))
;;       (list 'turn-on-cdlatex
;;             'reftex-mode
;;             ;; 'outline-minor-mode
;;             ;; 'flyspell-mode
;;             ;; 'hide-body t
;;             ))

;; ;;添加CDLaTeX辅模式
;; (require 'texmathp)
;; ;; (require 'cdlatex)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/")
;; (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
;; (autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
;; (autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)

;; ;; 将cdlatex设置为AUCtex的辅模式
;; (add-hook 'LaTex-mode-hook 'turn-on-cdlatex);with AUCTeX LaTeX mode
;; (add-hook 'laTex-mode-hook 'turn-on-cdlatex);with Emacs latex mode
;; ;; (add-hook 'TeX-mode-hook 'zotelo-minor-mode)
;; ;;自己写的
;;                                         ;(setq reftex-plug-into-AUCTeX t)
;;Emacs加载AUCTeX
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook (lambda()
                             ;;LaTeX模式下,不打开自动拆行
                             (turn-off-auto-fill)
                             ;;显示行数
                             (linum-mode 1)
                             ;;打开自动补全
                                        ;(auto-complete-mode 1)
                             ;;启动math mode
                             (LaTeX-math-mode 1)
                             ;;打开outline mode
                             ;; (outline-minor-mode 1)
                             ;;
                             ))
;;=====================================================================
;;代码折叠
;;=====================================================================
(setq TeX-fold-env-spec-list
      (quote
       (
        ("[figure]"  ("figure"))
        ("[table]"   ("table"))
        ("[itemize]"  ("itemize"))
        ("[overpic]"  ("overpic"))
        ("dmath"  ("dmath"))
        ("dmath*"  ("dmath*"))
        ("theorem"  ("theorem"))
        ("proof"  ("proof"))
        ;; ("equation"  ("equation"))
        ;; ("equation*"  ("equation*"))
        )))
(provide 'init-auctex)
;;; auctex 在这里结束
