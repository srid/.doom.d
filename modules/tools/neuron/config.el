;;; tools/neuron/config.el -*- lexical-binding: t; -*-

(use-package! neuron-mode
  :config
  (map! :leader
        (:prefix ("z" . "zettel")
          "z" #'neuron-new-zettel
          "e" #'neuron-edit-zettel
          "s" #'neuron-select-zettelkasten
          "o"  #'neuron-open-current-zettel
          "g"  #'neuron-rib-generate
          )
        )

  (map! :map neuron-mode-map
        :localleader
        ;; Override markdown-mode's default behavior
        "o" #'neuron-follow-thing-at-point
        (:prefix ("z" . "zettel")
          "z" #'neuron-new-zettel
          "e" #'neuron-edit-zettel
          "t" #'neuron-insert-tag
          "T" #'neuron-query-tags
          "o" #'neuron-open-current-zettel
          "l" #'neuron-insert-zettel-link
          "L" #'neuron-insert-new-zettel
          )
        )
  )
