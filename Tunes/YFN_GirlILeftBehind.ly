
\version "2.18.0"

% -------------------------------------------------------------------------

GirlILeftBehind = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 g''8 (fis'') |
    e''4 d''8 c'' b'4 a' |
    b' g' e' e'8 (fis') |
    g'4 g' g'8 a' b' c'' |
    d''4 d''8 c'' b'4 g''8 (fis'') | 
    \break
    e''4 d''8 c'' b'4 a' |
    b'8 a' g' fis' e'4. g'8 |
    fis' g' a' fis' d'4 e'8 [fis'] |
    \partial 4*3 g'2 (g'4)
  } \break
  \repeat volta 2 {
    \partial 4 d''8 (c'') |
    b'4 d'' e'' fis'' |
    g'' d''8 c'' b' a' g'4 |
    b'8 g' b' d'' e'' d'' e'' fis'' |
    g''4 a''8 g'' fis''4 g''8 (fis'') | 
    \break
    e''4 d''8 c'' b'4. a'8 |
    b' a' g' fis' e'4. g'8 |
    fis' g' a' fis' d'4 e'8 [fis'] |
    \partial 4*3 g'2 (g'4)
  }
}

GirlILeftChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 c1 g1 d1:7 g1 c1 d1
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 s1 d1 g1 c1 d1
    \partial 4*3 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \GirlILeftChords
  \new Staff { \clef treble \GirlILeftBehind }
  >>
  \header { piece = \markup {\fontsize #4.0 "Girl I Left Behind Me"}}
  }
%}