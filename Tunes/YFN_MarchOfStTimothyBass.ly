
\version "2.18.0"

% -------------------------------------------------------------------------

MarchStTimothy = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    b'4.-1 c''8-2 d''4-4 b'-1 |
    a'4-0 b'4-1 c''4-2 a'-0 |
    g'4.-4 a'8-0 b'4-1 g'-4 |
    g'-4 fis'-3 e'-1 d'-0 |
    e'4.-1 fis'8-3 g'4-4 e'-1 | \break
    d'-0 g'-4 b'-1 d''-4 |
  }
  \alternative {
    {
      c''4.-2 b'8-1 a'4-0 g'-4 |
      fis'-3 a'-0 d'-0 c''-2
    }
    {
      c''8-2 b'-1 a'4-0 fis'4-3 a'-0 |
      \partial 4*3 g'2.-4
    }
  } \break
  \partial 4 d''8-4 d''-4 |
  c''4-2 d''-4 a'-0 c''-2 |
  fis'4-3 a'-0 d'-0 d''8-4 d''-4 |
  b'4-1 d''-4 g'-4 b'-1 |
  d'-0 g'-4 b-3 d''8-4 d''-4 | \break
  c''4-2 d''-4 a'-0 c''-2 |
  fis'-3 a'-0 d'-0 d''8-4 d''-4 |
  d''4-4 d'-0 e'-1 fis'-3 |
  g'-4 a'-0 b'-1 d''8-4 d''-4 | \break
  c''4-2 d''-4 a'-0 c''-2 |
  fis'-3 a'-0 d'-0 d''8-4 d''-4 |
  b'4-1 d''-4 g'-4 b'-1 |
  d'-0 g'-4 b-3 g'-4 | \break
  e'4.-1 fis'8-3 g'4-4 e'-1 |
  d'-0 g'-4 b'-1 d''-4 |
  c''8-2 b'-1 a'4-0 fis'4-3 a'-0 |
  g'1-4 \bar "|."
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
  \transpose g g, { \MarchStTimothyChords }
  \new Staff
  \transpose g g, { \clef bass \MarchStTimothy }
  >>
  \header { piece = \markup {\fontsize #4.0 "March of St. Timothy"}
  opus = \markup {\fontsize #3.0 "Judi Morningst"}}
  }
%}
