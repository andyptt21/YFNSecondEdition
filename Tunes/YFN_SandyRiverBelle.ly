
\version "2.18.0"

% -------------------------------------------------------------------------

SandyRiverBelle = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    d'8 e' g' a' b'2 |
    b'8 a' g' b' e''4 d'' |
    d'8 e' g' a' b'2 |
    b'8 a' g' d' e'2 | \break
    d'8 e' g' a' b'2 |
    b'8 a' g' b' e''4 d'' |
    g''8 a'' g'' e'' d'' e'' g'' e'' |
    d'' b' a' fis' g'2
  } \break
  \repeat volta 2 {
    g''8 a'' g'' e'' d'' e'' g'' a'' |
    b''4 b'' a'' g'' |
    g''8 a'' g'' e'' d'' e'' g'' e'' |
    fis'' e'' fis'' g'' a''2 | \break
    g''8 a'' g'' e'' d'' e'' g'' a'' |
    b''4 b'' a'' g'' |
    g''8 a'' g'' e'' d'' e'' g'' e'' |
    d'' b' a' fis' g'2
  }
}


SandyRiverBelleChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 s1 s1 s2 e2:min g1 s1 c1 d2 g2
  }
  \repeat volta 2 {
    g1 s1 s1 d1 g1 s1 c1 d2 g2
  }
}

%{
  \score {
  <<
  \new ChordNames \SandyRiverBelleChords
  \new Staff { \clef treble \SandyRiverBelle }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sandy River Belle"}}
  }
%}
