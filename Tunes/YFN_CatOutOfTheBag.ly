
\version "2.18.0"

% -------------------------------------------------------------------------

CatOutOfBag = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    e''4 g''8 e'' b'4 b' |
    b'8 c'' b' a' g' fis' e'4 |
    d'2 fis'4. g'8 |
    a' b' a' g' fis' e' d'4 | \break
    e'' g''8 e'' b'4 b' |
    b'8 c'' b' a' g' fis' e'4 |
    d'8 e' fis' g' a'4 g'8 a' |
    b'4 b' e'2
  } \break
  \repeat volta 2 {
    g''4 b' fis'' g''8 fis'' |
    e'' fis'' e'' d'' b'4 b' |
    a' a'8 b' a' g' fis' e' |
    d'4 d'8 e' fis' e' d'4 | \break
    e'2 g' |
    a'8 g' a'4 b' e''8 fis'' |
    g'' fis'' e''4 fis'' b' |
    e''2 e''
  }
}

CatOutOfBagChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    e1:min s1 d1 s1 e1:min s1 d1 b2:7 e2:min
  }
  \repeat volta 2 {
    e2:min d2 c2 b2:7 a1:min d1
    e2:min c2 d2 b2:7 e2:min b2:7 e1:min
  }
}

%{
  \score {
  <<
  \new ChordNames \CatOutOfBagChords
  \new Staff { \clef treble \CatOutOfBag }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cat Out of the Bag"}
  opus = \markup {\fontsize #3.0 "Jim Kimball"}}
  }
%}
