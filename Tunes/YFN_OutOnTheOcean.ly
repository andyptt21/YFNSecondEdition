
\version "2.18.0"

% -------------------------------------------------------------------------

OutOnTheOcean = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8 e'8
    d'4 b'8 b' a' g' |
    b' d'' b' a' b' a' |
    g' e' d' g'4 a'8 |
    b'4. \turn a'8 g' e' | \break
    d'4 b'8 b' a' g' |
    b' d'' b' a' b' a' |
    g' e' d' g'4 a'8 |
  }
  \alternative {
    { \partial 8*5 b'8 [g' fis'] g'4 }
    { b'8 [g' fis'] g' [b' d''] }
  } \break

  e''4. \turn e''8 d'' b' |
  e'' fis'' e'' e'' d'' b' |
  d''4. \turn d''8 b' a' |
  d''4 d''8 d'' b' a' |
  g'4 a'8 b'4 d''8 | \break
  e'' g'' e'' d'' b' a' |
  g' e' d' g'4 a'8 |
  b' g' fis' g' b' d'' |
  e''4. \turn e''8 d'' b' |
  e'' fis'' e'' e'' d'' b' | \break
  d''4. \turn d''8 e'' fis'' |
  g'' fis'' e'' d'' b' a' |
  g'4 a'8 b'4 d''8 |
  e'' g'' e'' d'' b' a' |
  g' e' d' g'4 a'8 |
  \partial 8*5 b' [g' fis'] g'4
}

OutOnTheOceanChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    g2. s4. d4. g2. s4. d4. g2. s4. d4. g4. d4.
  }
  \alternative {
    { \partial 8*5 g4. s4 } { g2. }
  }
  e2.:min s2. d2. s2. g2. c2. g4. d4. g2.
  e2.:min s2. d2. s2. g2. c2. g4. d4.
  \partial 8*5 g4. s4
}

%{
  \score {
  <<
  \new ChordNames \OutOnTheOceanChords
  \new Staff { \clef treble \OutOnTheOcean }
  >>
  \header { piece = \markup {\fontsize #4.0 "Out On The Ocean"}}
  }
%}
