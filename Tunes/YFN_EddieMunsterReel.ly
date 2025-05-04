
\version "2.18.0"

% -------------------------------------------------------------------------

EddieMunster = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    d'4 d''8 a' c'' d'' a' c'' |
    d'' a' c'' d'' c'' a' f'4 |
    d' d''8 a' c'' d'' a' b' |
    c''2 b'8 c'' b'4 | \break
    a' d''8 a' c'' d'' a' c'' |
    d'' a' c'' d'' c'' a' f'4 |
    d'8 (e') f' g' a' (b') c'' b' |
    a' (g') f'4 d'2
  } \break
  \repeat volta 2 {
    d'8 e' f' d' e' f' d' e' |
    f' d' e' f' d' e' f' d' |
    e' f' d' e' f' d' e' f' |
    g'2 g' | \break
    d'8 e' f' d' e' f' d' e' |
    f' d' e' f' e' d' c'4 |
    d'8 e' f' g' a' b' c'' b' |
    a' (g') f'4 d'2
  }
}

EddieMunsterChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 s1 c2. g4 d1 s1 f1 g2 d2
  }
  \repeat volta 2 {
    d1:min s1 s1 g1 d1:min s1 f1 g2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \EddieMunsterChords
  \new Staff { \clef treble \EddieMunster }
  >>
  \header { piece = \markup {\fontsize #4.0 "Eddie Munster Reel"}
  opus = \markup {\fontsize #3.0 "Bill Garrison"}}
  }
%}
