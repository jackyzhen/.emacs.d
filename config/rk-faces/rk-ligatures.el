;;; rk-ligatures.el --- Ligatures setup for Fira Code.  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 Raghuvir Kasturi

;; Author: Raghuvir Kasturi <raghuvir.kasturi@gmail.com>

;;; Commentary:

;;; Code:

(defconst rk-fira-ligatures
  '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
    (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
    (36 . ".\\(?:>\\)")
    (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
    (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
    (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
    (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
    (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
    (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
    (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
    (48 . ".\\(?:x[a-zA-Z]\\)")
    (58 . ".\\(?:::\\|[:=]\\)")
    (59 . ".\\(?:;;\\|;\\)")
    (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
    (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
    (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
    (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
    (91 . ".\\(?:]\\)")
    (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
    (94 . ".\\(?:=\\)")
    (119 . ".\\(?:ww\\)")
    (123 . ".\\(?:-\\)")
    (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
    (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")))

(defun rk-setup-fira-code-ligatures ()
  (when (equal 'Fira\ Code (ignore-errors (font-get (face-attribute 'default :font) :family)))
    (let ((lig-alist rk-fira-ligatures))
      (dolist (char-regexp lig-alist)
        (set-char-table-range composition-function-table (car char-regexp)
                              `([,(cdr char-regexp) 0 font-shape-gstring]))))))

(provide 'rk-ligatures)

;;; rk-ligatures.el ends here
