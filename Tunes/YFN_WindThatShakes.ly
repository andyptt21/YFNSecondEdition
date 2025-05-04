
\version "2.18.0"

% -------------------------------------------------------------------------

WindThatShakes = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    a'4 a'8 b' a' fis' e' d' |
    b'4 b'8 a' b' cis'' d'' b' |
    a'4 a'8 b' a' fis' e' d' |
    g'' fis'' e'' d'' b' cis'' d'' b' |
    a'4 a'8 b' a' fis' e' d' |
    b'4 b'8 a' b' cis'' d'' b' |
    a'4 a'8 b' a' fis' e' d' |
    g'' fis'' e'' d'' b'4 d'' |
  }
  \repeat volta 2 {
    fis'' fis''8 d'' g''4 g''8 e'' |
    fis''4 fis''8 d'' \acciaccatura fis''8 e'' d'' b' a' |
    fis''4 fis''8 d'' g''4 g''8 e'' |
    a'' fis'' e'' d'' b'4 d''8 e'' |
    fis''4 d''8 fis'' g''4 e''8 g'' |
    fis''4 fis''8 d'' \acciaccatura fis''8 e'' d'' b' a' |
    d'' e'' fis'' g'' a'' fis'' b'' a'' |
    g'' fis'' e'' d'' b'4 d''
  }
}

WindThatShakesChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 g1 d1 g1 d1 g1 d1 g1
  }
  \repeat volta 2 {
    d2 g2 d2 a2 d2 g2 d2 g2 d2 g2 d2 g2 d1 g1
  }
}

%{
  \score {
  <<
  \new ChordNames \WindThatShakesChords
  \new Staff { \clef treble \WindThatShakes }
  >>
  \header { piece = \markup {\fontsize #4.0 "Wind That Shakes the Barley"}}
  }
%}
