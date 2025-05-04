
\version "2.18.0"

% -------------------------------------------------------------------------

Tuttles = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    d'4. e'8 f'4. g'8 |
    a' c'' g' c'' a' d'' d''4 |
    d'4. e'8 f'4 a'8 d'' |
    c'' a' g' e' f' d' d'4 | \break
    d'4. e'8 f'4. g'8 |
    a' c'' g' c'' a' d'' d'' e'' |
    f'' d'' d''4 d''8 c'' a' b' |
    c'' a' g' e' f' d' d'4 |
  } \break
  \repeat volta 2 {
    d'' d''8 a' c''4 c''8 a' |
    d''4 d''8 a' c'' a' g' a' |
    d''4 d''8 a' c'' a' g' d' |
    e'4 c''8 e' f' d' d'4 | \break
    d'' d''8 a' c''4 c''8 a' |
    d''4 d''8 a' c''4 d''8 e'' |
    f'' d'' d''4 d''8 c'' a' b' |
    c'' a' g' e' f' d' d'4
  }
}

TuttlesChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1:min c2 d2:min s1 c2 d2:min
    d1:min c2 d2:min s1 c2 d2:min
  }
  \repeat volta 2 {
    d2:min c2 d2:min c2 d2:min c2 s2 d2:min
    d2:min c2 d2:min c2 d1:min c2 d2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \TuttlesChords
  \new Staff { \clef treble \Tuttles }
  >>
  \header { piece = \markup {\fontsize #4.0 "Tuttle's"}}
  }
%}
