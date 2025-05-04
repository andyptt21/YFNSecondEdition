
\version "2.18.0"

% -------------------------------------------------------------------------

BoysOfBlueHill = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 d''8 b'
    b'8 a' fis' a' d' a' fis' a' |
    b' a' \tuplet 3/2 {b'8 (cis'' d'') } e''4 d''8 e'' |
    fis'' a'' g'' fis'' e'' g'' fis'' e'' |
    d'' fis'' e'' d'' b'4 d''8 b' | 
    \break
    \tuplet 3/2 {a'8 (b' a')} fis'8 a' d'4 fis'8 a' |
    b' a' \tuplet 3/2 {b'8 (cis'' d'')} e''4 d''8 e'' |
    fis'' a'' g'' fis'' e'' [g'' fis'' e''] |
    \partial 4*3 d''4 fis'' d''
  } 
  \break
  \repeat volta 2 {
    \partial 4 fis''8 g'' |
    a'' fis'' d'' fis'' a''4 g''8 fis'' |
    e'' fis'' g'' a'' b''4 a''8 g'' |
    fis'' a'' g'' fis'' e'' g'' fis'' e'' |
    d'' fis'' e'' d'' b'4 d''8 b' | 
    \break
    \tuplet 3/2 {a'8 (b' a')} fis'8 a' d'4 fis'8 a' |
    b' a' \tuplet 3/2 {b'8 (cis'' d'')} e''4 d''8 e'' |
    fis'' a'' g'' fis'' e'' [g'' fis'' e''] |
    \partial 4*3 d''4 fis'' d''
  }
}

BoysOfBlueHillChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 a2 d2 a2 d2 g2 d1 g2 a2 d2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 e1:min d2 a2 d2 g2 d1 g2 a2 d2 a2
    \partial 4*3 d2.
  }
}

%{
\score {
  <<
    \new ChordNames \BoysOfBlueHillChords
    \new Staff { \clef treble \BoysOfBlueHill }
  >>
  \header { piece = \markup {\fontsize #4.0 "Boys of Blue Hill"}}
}
%}
