
\version "2.18.0"

\paper {
  top-margin = 0 \mm
  bottom-margin = 5 \mm
  obsolete-between-system-padding = 0.0  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-system-space = 10 \mm  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  head-separation = 2 \mm
  obsolete-after-title-space = 3 \mm  markup-system-spacing #'basic-distance = #(/ obsolete-after-title-space staff-space)
  obsolete-before-title-space = 15 \mm  score-markup-spacing #'basic-distance = #(/ obsolete-before-title-space staff-space)
}

\header {
  tagline = \markup {\fontsize #6.0 ""}
}

#(set-global-staff-size 22)


% -------------------------------------------------------------------------

\include "Tunes\YFN_Tamlin.ly"
\include "Tunes\YFN_ReelTiMe.ly"
