
\version "2.18.0"

% -------------------------------------------------------------------------

OffToCalifornia = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 { d'8 (e' fis') }
    g'8 fis' g' b' a' g' e' d' |
    g' b' d'' g'' e''4 e''8 (fis'') |
    g'' fis'' g'' d'' e'' d'' b' g' |
    a' b' a' g' e'4 \tuplet 3/2 { d'8 (e' fis') } | \break
    g' fis' g' b' a' g' e' d' |
    g' b' d'' g'' e''4 e''8 (fis'') |
    g'' fis'' g'' d'' e'' [d'' b' g'] |
    \partial 4*3 a' [g' e' fis'] g'4
  } \break
  \repeat volta 2 {
    \partial 4 e''8 fis'' |
    g'' fis'' e'' g'' fis'' e'' d'' fis'' |
    e'' d'' e'' fis'' e'' d'' b' fis'' |
    g'' fis'' g'' d'' e'' d'' b' g' |
    a' b' a' g' e'4 \tuplet 3/2 { d'8 (e' fis') } | \break
    g' fis' g' b' a' g' e' d' |
    g' b' d'' g'' e''4 e''8 (fis'') |
    g'' fis'' g'' d'' e'' [d'' b' g'] |
    \partial 4*3 a' g' e' fis' g'4
  }
}

OffToCaliforniaChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g2 d2 g2 c2 g2 e2:min a2:min d2
    g2 d2 g2 c2 g2 e2:min
    \partial 4*3 d2 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    e2:min b2:min c2 e2:min g2 e2:min a2:min d2
    g2 d2 g2 c2 g2 e2:min
    \partial 4*3 d2 g4
  }
}

%{
  \score {
  <<
  \new ChordNames \OffToCaliforniaChords
  \new Staff { \clef treble \OffToCalifornia }
  >>
  \header { piece = \markup {\fontsize #4.0 "Off To California"}}
  }
%}
