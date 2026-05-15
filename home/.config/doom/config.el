;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Ryan Sonnek"
      user-mail-address "ryan@betterup.co")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;; Set font size
(setq doom-font (font-spec :size 16))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; disable confirmation prompt when quitting emacs
(setq confirm-kill-emacs nil)

;; Remember cursor position across sessions.
(save-place-mode 1)

;; Keep a few lines of context above/below the cursor when scrolling.
(setq scroll-margin 3)

;; Evil tweaks: finer-grained undo + predictable split direction.
(setq evil-want-fine-undo t
      evil-split-window-below t
      evil-vsplit-window-right t)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Window navigation in evil normal state.
;; Note: this shadows C-h (help prefix) while in normal mode — use SPC h instead.
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)

;; Disable lock files — they break tools that watch the filesystem (Next.js HMR,
;; webpack/broccoli livereload, etc.) by creating phantom symlinks.
(setq create-lockfiles nil)

;; macOS: restore Cmd-H / Cmd-Opt-H to hide-others / hide-emacs.
;; Emacs captures these by default; rebind via the Hyper key.
(when IS-MAC
  (map! "H-M-h" #'ns-do-hide-others
        "H-h"   #'ns-do-hide-emacs))

;; Ruby: don't auto-insert magic encoding comments at the top of files.
(after! ruby-mode
  (setq ruby-insert-encoding-magic-comment nil))

;; Projectile: disable file-list caching. The `alien` indexing method shells out
;; to `git ls-files` (already fast and always current), so the cache only adds
;; staleness — new/renamed/deleted files would otherwise require manual
;; `projectile-invalidate-cache` (SPC p i).
(after! projectile
  (setq projectile-enable-caching nil))
