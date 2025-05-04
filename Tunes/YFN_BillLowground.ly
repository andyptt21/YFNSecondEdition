
\version "2.18.0"

% -------------------------------------------------------------------------


BillyLowground = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    e'4 d' e'8 g' a' b' |
    c''4 c''8 d'' c'' b' a' g' |
    a' b' a' g' a' b' c'' d'' |
    e''4. e''8 e''2 | 
    \break
    e'4 d' e'8 g' a' b' |
    c''4 c''8 d'' c'' b' a' g' |
    a' b' a' g' e' g' e' c' |
    d'4 e' e'2
  } \break
  \repeat volta 2 {
    c''4 g'' g'' a''8 g'' |
    e'' a'' g'' e'' a'' g'' e'' c'' |
    a'4 a'' a''8 b'' a'' g'' |
    e''4. e''8 e''2 | 
    \break
    c''4 g'' g'' a''8 g'' |
    e'' a'' g'' e'' a'' g'' e'' c'' |
    a'4 a'8 c'' a' g' e' c' |
    d'4 e' e'2
  }
}

BillyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    c2 g2 a1:min f1 a1:min
    c2 g2 a1:min f1 g2:7 c2
  }
  \repeat volta 2 {
    c2 g2 a1:min f1 f1:maj
    c2 g2 a1:min f1 g2:7 c2
  }
}

%{
\score {
  <<
    \new ChordNames \BillyChords
    \new Staff { \clef treble \BillyLowground }
  >>
  \header { piece = \markup {\fontsize #4.0 "Billy in the Lowground"}}
}
%}
