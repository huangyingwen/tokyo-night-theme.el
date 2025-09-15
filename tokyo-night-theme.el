;;; tokyo-night-theme.el --- A Spacemacs theme inspired by Tokyo Night Moon

(deftheme tokyo-night
  "A Spacemacs theme inspired by Tokyo Night Moon color scheme")

(let ((class '((class color) (min-colors 89)))
      (bg "#222436")
      (bg-dark "#1e2030")
      (bg-highlight "#2f334d")
      (bg-status "#252737")
      (fg "#c8d3f5")
      (fg-dark "#828bb8")
      (fg-gutter "#3b4261")
      (blue "#82aaff")
      (blue-dark "#65bcff")
      (cyan "#86e1fc")
      (magenta "#c099ff")
      (magenta-dark "#b4a1fa")
      (green "#c3e88d")
      (green-dark "#4fd6be")
      (yellow "#ffc777")
      (yellow-dark "#ff966c")
      (red "#ff757f")
      (red-dark "#ff7a93")
      (orange "#ff966c")
      (purple "#9d7cd8")
      (comment "#7a88cf")
      (terminal-black "#444a73")
      (none "NONE"))

  (custom-theme-set-faces
   'tokyo-night

   ;; Basic faces
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,blue))))
   `(region ((,class (:background ,bg-highlight))))
   `(highlight ((,class (:background ,bg-highlight))))
   `(fringe ((,class (:background ,bg :foreground ,fg-gutter))))
   `(mode-line ((,class (:background ,bg-status :foreground ,fg :box (:color ,bg-status :line-width 2)))))
   `(mode-line-inactive ((,class (:background ,bg-dark :foreground ,comment :box (:color ,bg-dark :line-width 2)))))
   `(minibuffer-prompt ((,class (:foreground ,blue :weight bold))))
   `(vertical-border ((,class (:foreground ,bg-dark))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,magenta))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,magenta))))
   `(font-lock-function-name-face ((,class (:foreground ,blue))))
   `(font-lock-keyword-face ((,class (:foreground ,magenta :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,yellow))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-warning-face ((,class (:foreground ,red :weight bold))))

   ;; UI elements
   `(button ((,class (:foreground ,blue :underline t))))
   `(link ((,class (:foreground ,blue :underline t))))
   `(link-visited ((,class (:foreground ,magenta :underline t))))
   `(header-line ((,class (:background ,bg-dark :foreground ,fg))))
   `(tab-line ((,class (:background ,bg-dark :foreground ,fg-dark))))
   `(tab-line-tab-inactive ((,class (:background ,bg-dark :foreground ,fg-dark))))

   ;; Search and matching
   `(isearch ((,class (:background ,green :foreground ,bg-dark))))
   `(lazy-highlight ((,class (:background ,yellow :foreground ,bg-dark))))
   `(match ((,class (:background ,green :foreground ,bg-dark))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,fg-gutter))))
   `(line-number-current-line ((,class (:foreground ,blue :weight bold))))

   ;; Org-mode
   `(org-level-1 ((,class (:foreground ,magenta :height 1.3 :weight bold))))
   `(org-level-2 ((,class (:foreground ,blue :height 1.2 :weight bold))))
   `(org-level-3 ((,class (:foreground ,green :height 1.1 :weight bold))))
   `(org-level-4 ((,class (:foreground ,yellow :weight bold))))
   `(org-level-5 ((,class (:foreground ,cyan :weight bold))))
   `(org-level-6 ((,class (:foreground ,orange :weight bold))))
   `(org-level-7 ((,class (:foreground ,purple :weight bold))))
   `(org-level-8 ((,class (:foreground ,red :weight bold))))
   `(org-code ((,class (:foreground ,green))))
   `(org-date ((,class (:foreground ,cyan :underline t))))
   `(org-todo ((,class (:foreground ,red :weight bold))))
   `(org-done ((,class (:foreground ,green :weight bold))))
   `(org-block ((,class (:background ,bg-dark :foreground ,fg))))
   `(org-quote ((,class (:background ,bg-dark :slant italic))))
   `(org-verse ((,class (:background ,bg-dark :slant italic))))

   ;; Helm
   `(helm-source-header ((,class (:background ,bg-dark :foreground ,magenta :weight bold))))
   `(helm-match ((,class (:foreground ,green))))
   `(helm-selection ((,class (:background ,blue :foreground ,bg-dark))))
   `(helm-candidate-number ((,class (:background ,bg-dark :foreground ,blue))))

   ;; Company mode
   `(company-tooltip ((,class (:background ,bg-dark :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,blue :foreground ,bg-dark))))
   `(company-tooltip-common ((,class (:foreground ,green))))
   `(company-tooltip-annotation ((,class (:foreground ,cyan))))
   `(company-scrollbar-bg ((,class (:background ,bg-highlight))))
   `(company-scrollbar-fg ((,class (:background ,blue))))

   ;; Others
   `(show-paren-match ((,class (:background ,blue :foreground ,bg-dark))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,bg-dark))))
   `(error ((,class (:foreground ,red :weight bold))))
   `(warning ((,class (:foreground ,yellow :weight bold))))
   `(success ((,class (:foreground ,green :weight bold))))
   `(ivy-current-match ((,class (:background ,blue :foreground ,bg-dark))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,fg-dark))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,green))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,green))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,green))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,blue :weight bold))))
   `(magit-branch-local ((,class (:foreground ,green))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-tag ((,class (:foreground ,yellow))))
   `(magit-hash ((,class (:foreground ,fg-dark))))
   `(magit-diff-added ((,class (:foreground ,green))))
   `(magit-diff-removed ((,class (:foreground ,red))))

   ;; LSP and flycheck
   `(lsp-face-highlight-textual ((,class (:background ,bg-highlight))))
   `(flycheck-error ((,class (:underline (:color ,red :style wave)))))
   `(flycheck-warning ((,class (:underline (:color ,yellow :style wave)))))
   `(flycheck-info ((,class (:underline (:color ,blue :style wave)))))

   ;; Tree-sitter (if available)
   `(tree-sitter-hl-face:function.call ((,class (:foreground ,blue))))
   `(tree-sitter-hl-face:property ((,class (:foreground ,cyan))))
   `(tree-sitter-hl-face:keyword ((,class (:foreground ,magenta))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tokyo-night)
(provide 'tokyo-night-theme)

;;; tokyo-night-theme.el ends here
