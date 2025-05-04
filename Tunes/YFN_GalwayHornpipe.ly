
\version "2.18.0"

% -------------------------------------------------------------------------

Galway = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 fis'8 e'
    d'4 fis'8 a' d'' a' fis' d' |
    cis' d' e' fis' g'4 fis'8 e' |
    d'4 fis'8 a' d'' cis'' d'' fis'' |
    e'' d'' cis'' b' \tuplet 3/2 {a' [(b' a')]} \tuplet 3/2 {g' [(fis' e')]} | \break
    d'4 fis'8 a' d'' a' fis' d' |
    cis' d' e' fis' g'4 fis'8 g' |
    a' d'' cis'' b' a' [g' fis' e'] |
    \partial 4*3 d'4 fis' d'
  } \break
  \repeat volta 2 {
    \partial 4 d''8 e'' |
    fis'' e'' fis'' g'' fis'' e'' d'' cis'' |
    b' a' b' cis'' b'4 cis''8 d'' |
    e''4 e''8 fis'' e'' d'' cis'' b' |
    \tuplet 3/2 {a' [(b' a')]} cis'' [e''] a''4 \tuplet 3/2 {a'8 (b' cis'')} | \break
    d'' cis'' d'' e'' fis'' d'' a' fis' |
    g'4 g'8 a' b' d'' cis'' b' |
    a' d'' cis'' b' a' [g' fis' e'] |
    \partial 4*3 d'4 fis' d'
  }
}

GalwayChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 a1:7 d2 b2:min e2:min a2:7
    d1 a1:7 d2 a2:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    b1:min g1 e1:min a1:7
    b2:min d2 g2 b2:min d2 a2:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \GalwayChords
  \new Staff { \clef treble \Galway }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Galway Hornpipe"}}
  }
%}