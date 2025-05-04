
\version "2.18.0"

% -------------------------------------------------------------------------

Spootiskerry = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 d'4
    g'4 d'8 e' g' d' e' g' |
    d' e' g' a' b'4 a'8 b' |
    g'4 d'8 e' g' a' b' d'' |
    e'' g'' e'' d'' b'4 a'8 b' |
    g'4 d'8 e' g' d' e' g' |
    d' e' g' a' b'4 a'8 b' |
    g''4 e''8 g'' e'' [d'' b' a'] |
    \partial 4*3 b'4 g' g'
  }
  \partial 4 d''4 |
  g'' e''8 g'' e'' d'' b' a' |
  b' d'' b' g' e'4 d'8 e' |
  g' a' b' d'' e'' g'' e'' d'' |
  b'4 a' a' d'' |
  g'' e''8 g'' e'' d'' b' a' |
  b' d'' b' g' e'4 d'8 e' |
  g' a' b' d'' g'' e'' d'' c'' |
  b'4 g' g' d'' |
  g'' e''8 g'' e'' d'' b' a' |
  b' d'' b' g' e'4 d'8 e' |
  g' a' b' d'' e'' g'' e'' d'' |
  b'4 a' a' d' |
  g' d'8 e' g' d' e' g' |
  d' e' g' a' b'4 a'8 b' |
  g''4 e''8 g'' e'' [d'' b' a'] |
  \partial 4*3 b'4 g' g' \bar "|."
}

SpootiskerryChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 s1 c2 d2:7 g1 s1 c1
    \partial 4*3 d2:7 g4
  }
  \partial 4 s4
  e1:min s2 c2 g2 c2 a2:min d2 e1:min s2 c2 g2 c2 d2 g2
  e1:min s2 c2 g2 c2 a2:min d2 g1 s1 c2 g2
  \partial 4*3 d2 g4
}

%{
  \score {
  <<
  \new ChordNames \SpootiskerryChords
  \new Staff { \clef treble \Spootiskerry }
  >>
  \header { piece = \markup {\fontsize #4.0 "Spootiskerry / The Fateful Head"}
  opus = \markup {\fontsize #3.0 "Samuel Ian Rothmar Burns"}}
  }
%}