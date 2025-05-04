
\version "2.18.0"

% -------------------------------------------------------------------------

MarchStTimothy = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    b'4. c''8 d''4 b' |
    a'4 b'4 c''4 a' |
    g'4. a'8 b'4 g' |
    g' fis' e' d' |
    e'4. fis'8 g'4 e' | \break
    d' g' b' d'' |
  }
  \alternative {
    {
      c''4. b'8 a'4 g' |
      fis' a' d' c''
    }
    {
      c''8 b' a'4 fis'4 a' |
      \partial 4*3 g'2.
    }
  } \break
  \partial 4 d''8 d'' |
  c''4 d'' a' c'' |
  fis' a' d' d''8 d'' |
  b'4 d'' g' b' |
  d' g' b d''8 d'' | \break
  c''4 d'' a' c'' |
  fis' a' d' d''8 d'' |
  d''4 d' e' fis' |
  g' a' b' d''8 d'' | \break
  c''4 d'' a' c'' |
  fis' a' d' d''8 d'' |
  b'4 d'' g' b' |
  d' g' b g' | \break
  e'4. fis'8 g'4 e' |
  d' g' b' d'' |
  c''8 b' a'4 fis'4 a' |
  g'1 \bar "|."
}

MarchStTimothyChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 d1 e1:min b1:min c1 g1
  }
  \alternative {
    { a1:min d1:7 }
    { a2:min d2:7 \partial 4*3 g2. }
  }
  \partial 4 s4 |
  d1:7 s1 g1 s1 d1:7 s1 g1 s1 d1:7 s1 g1 s1
  c2 cis2:dim g2 e2:min a2:min d2:7 g1
}

%{
  \score {
  <<
  \new ChordNames
  \transpose g d' { \MarchStTimothyChords }
  \new Staff
  \transpose g d' { \clef treble \MarchStTimothy }
  >>
  \header { piece = \markup {\fontsize #4.0 "March of St. Timothy"}
  opus = \markup {\fontsize #3.0 "Judi Morningst"}}
  }
%}
