
\version "2.18.0"

% -------------------------------------------------------------------------

Gallopede = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 d''8 c''
    b'4 b'8 c'' a'4 a'8 b' |
    g'4 g' g' a'8 b' |
    c'' b' c'' d'' e'' d'' c'' b' |
    a'4 a' a' d''8 c'' |
    b'4 b'8 c'' a'4 b'8 c'' |
    g'4 g' g' a'8 b' | 
    \break
    c'' b' a' g' fis' [g' a' fis'] |
    \partial 4*3 g'4 g' g'
  }
  \partial 4  d''8 c'' |
  b'4 g''8 fis'' e''4 e''8 d'' |
  d'' c'' b' c'' a'4 d''8 c'' |
  b'4 g''8 fis'' e'' d'' c'' b' |
  a'4 a' a' d''8 c'' | 
  \break
  b'4 g''8 fis'' e''4 e''8 d'' |
  d'' c'' b' c'' a'4 d''8 c'' |
  b' d'' c'' b' a' c'' b' a' |
  g'4 g' g' b'8 c'' |
  d''4 d'' d'' g'' |
  d'' d'' d'' g'' | 
  \break
  d'' d'' e''8 d'' c'' b' |
  a'4 a' a' b'8 c'' |
  d''4 d'' d'' g'' |
  d'' d'' d'' g'' |
  e''8 d'' c'' b' d'' [c'' b' a'] |
  \partial 4*3 g'4 g' g' \bar "|."
}

GallopedeChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g2 d2 g1 c1 d1 g2 d2 g1 c2 d2
    \partial 4*3 g2.
  }
  \partial 4 s4
  g2 c2 g2 d2 g1 d1 g2 c2 g2 d2
  g2 d2 g1 s1 s1 s1 d1 g1 s1 c2 d2:7
  \partial 4*3 g2.
}

%{
  \score {
  <<
  \new ChordNames \GallopedeChords
  \new Staff { \clef treble \Gallopede }
  >>
  \header { piece = \markup {\fontsize #4.0 "Gallopede"}}
  }
%}