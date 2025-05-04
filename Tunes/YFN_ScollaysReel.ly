
\version "2.18.0"

% -------------------------------------------------------------------------

ScollaysReel = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    e'4 e'8 fis' g'4 a' |
    b'8 c'' b' a' g' fis' g' a' |
    b'4 e' e' g' |
    fis'8 g' a' fis' d'4 g'8 fis' |
    e'4 e'8 fis' g'4 a' |
    b'8 c'' b' a' g' fis' g' a' |
    b'4 b'8 c'' b' a' g' fis' |
    g'4 e' e'2 |
  }
  \repeat volta 2 {
    e''8 fis'' g'' e'' b'4 b' |
    g'' g'' b'2 |
    c''4 b'8 a' g'4 g' |
    fis'8 g' a' fis' d'4 fis' |
    e' e'8 fis' g'4 a' |
    b'8 a' b' d'' e''4 d'' |
    b' b'8 c'' b' a' g' fis' |
    g'4 e' e'2
  }
}

ScollaysReelChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    e1:min s1 s1 d1 e1:min s1 b1 e1:min
  }
  \repeat volta 2 {
    e1:min s1 a2:min e2:min d1 e1:min g2 c2 b1 e1:min
  }
}

%{
  \score {
  <<
  \new ChordNames \ScollaysReelChords
  \new Staff { \clef treble \ScollaysReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Scollay's Reel"}}
  }
%}
