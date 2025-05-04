
\version "2.18.0"

% -------------------------------------------------------------------------

GirlILeftBehindAlt = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 g''8 fis'' |
    e''4 d''4 b'4 g' |
    a'8 b' a' g' e'4 d'8 e' |
    g'4 g' g'8 a' b' c'' |
    d''2 b'4 g''8 fis'' | \break
    e''4 d'' b' g' |
    a'8 b' a' g' e'4 g'4 |
    fis' a' d' e'8 [fis'] |
    \partial 4*3 g'2 g'4
  } \break
  \repeat volta 2 {
    \partial 4 g'8 a' |
    b'4 d'' e'' fis'' |
    g'' d'' b' a' |
    b' d'' e'' fis'' |
    g''4 a''8 g'' fis''4 g''8 fis'' | \break
    e''4 d'' b' g' |
    a'8 b' a' g' e'4 g' |
    fis' a' d' e'8 [fis'] |
    \partial 4*3 g'2 g'4
  }
}

GirlILeftChordsAlt = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 c1 g1 d2 g2 g1 c1 d1
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 e1:min c2 d2 g1 c1 d1
    \partial 4*3 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \GirlILeftChordsAlt
  \new Staff { \clef treble \GirlILeftBehindAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Girl I Left Behind Me (Alt)"}}
  }
%}