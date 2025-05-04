
\version "2.18.0"

% -------------------------------------------------------------------------

PrettyLittleDog = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    \partial 4 e''8 g''
    a''4 e'' g'' a''8 g'' |
    e'' d'' c'' b' a'4 g' |
    a' a'8 a' c''4 d'' |
    e''2 e''4 e''8 g'' | \break
    a''4 e'' g'' a''8 g'' |
    e'' d'' c'' b' a'4 g' |
    a' a'8 b' c'' a' g'4 |
    \partial 4*3 a'2 a'4
  } \break
  \repeat volta 2 {
    \partial 4 a'8 b' |
    c''4 a'8 b' c'' b' c'' d'' |
    e'' d'' c'' b' a'4 g' |
    a' a'8 a' c''4 d'' |
    e''2 e''4 e''8 g'' | \break
    a''4 e'' g'' a''8 g'' |
    e'' d'' c'' b' a'4 g' |
    a' a'8 b' c'' a' g'4 |
    \partial 4*3 a'2 a'4
  }
}


PrettyLittleDogChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 s1 g1 a1:min s1 s2 g2
    \partial 4*3 a2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 s1 g1 a1:min s1 s2 g2
    \partial 4*3 a2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \PrettyLittleDogChords
  \new Staff { \clef treble \PrettyLittleDog }
  >>
  \header { piece = \markup {\fontsize #4.0 "Pretty Little Dog"}}
  }
%}
