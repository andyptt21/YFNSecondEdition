
\version "2.18.0"

% -------------------------------------------------------------------------

EvitGabriel = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    e'8 fis' g' fis' e' fis' g' fis' |
    e' fis' g' a' b' e' g' b' |
    c'' b' a' g' fis' g' a' fis' |
    b' a' g' b' fis'4 fis' | \break
    e'8 fis' g' fis' e' fis' g' fis' |
    e' fis' g' a' b' e' g' b' |
    c'' b' a' g' fis' g' fis' b |
    e'1
  } \break
  \repeat volta 2 {
    e''8 a' a' e'' d'' c'' b' c'' |
    d'' g' g' d'' c'' b' a' g' |
    fis' g' a' c'' b' a' g' fis' |
    e' fis' g' a' b' e' g' b' | \break
    e'' a' a' e'' d'' c'' b' c'' |
    d'' g' g' d'' c'' b' a' g' |
    fis' g' a' c'' b' a' g' fis' |
    e' g' fis' d' e'2
  }
}

EvitGabrielChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    e1:min s1 c2 d2 g2 b2 e1:min s1 c2 d2 e1:min
  }
  \repeat volta 2 {
    c2 d2 g1 a2:min b2 e1:min c2 d2 g1 a2:min b2
    e4:min b4 e2:min
  }
}


%{
  \score {
  <<
  \new ChordNames \EvitGabrielChords
  \new Staff { \clef treble \EvitGabriel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Evit Gabriel"}
  opus = \markup {\fontsize #3.0 "Daniel Thonon"}}
  }
%}
