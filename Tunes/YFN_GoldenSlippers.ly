
\version "2.18.0"

% -------------------------------------------------------------------------

GoldenSlippers = {
  \time 4/4
  \key g \major
  \partial 4 g'8 a'
  \repeat volta 2 {
    b'4 b' b'8 a' g' a' |
    b'4 b' b' g'8 a' |
    b'4 b' c''8 b' a' g' |
    b'4 a' a' fis'8 g' |
    a'4 a' a' fis'8 g' | 
    \break
    a'4 a' a' fis'8 g' |
    a'4 c'' b' a'
  }
  \alternative {
    { a'4 g' g' g'8 a' }
    { a'4 g' fis' e' }
  }

  d'2. g'4 |
  b' a' g'8 d'4. |
  e'2. a'4 | 
  \break
  c'' b' a'8 g'4. |
  fis'4 fis' fis'8 e' fis' g' |
  a'4 b' a' fis' |
  g' fis' g' a' |
  b' g' fis' e' |
  d'2. g'4 | 
  \break
  b' a' g'8 d'4. |
  e'2. a'4 |
  c'' b' a'8 g'4. |
  fis'4 fis' fis'8 e' fis' g' |
  a'4 a' a' c'' |
  b' c'' b' a' |
  \partial 4*3 g'2. \bar "|."
}

GoldenSlippersChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    g1 s1 s1 d1:7 s1 s1 s1
  }
  \alternative {
    { g1 } { g1 }
  }
  g1 s1 a1:min s1 d1:7 s1 g1 s1 s1 s1 a1:min s1 d1:7 s1 s1
  \partial 4*3 g2.
}

%{
  \score {
  <<
  \new ChordNames \GoldenSlippersChords
  \new Staff { \clef treble \GoldenSlippers }
  >>
  \header { piece = \markup {\fontsize #4.0 "Golden Slippers"}}
  }
%}