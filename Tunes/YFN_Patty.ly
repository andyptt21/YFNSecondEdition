
\version "2.18.0"

\pointAndClickOff

\layout {
  indent = 0 \mm
  \override Score.BarNumber.break-visibility = #all-invisible
}

\paper {
  top-margin = 10 \mm
  bottom-margin = 6 \mm
  ragged-bottom = ##t
  page-count = #1
}

%\header {
%    tagline = \markup {\fontsize #6.0 "R-13"}
%}

#(set-global-staff-size 22)


% -------------------------------------------------------------------------

\include "Tunes\YFN_MerryBlacksmith.ly"
\include "Tunes\YFN_MerryBlacksmith2.ly"
