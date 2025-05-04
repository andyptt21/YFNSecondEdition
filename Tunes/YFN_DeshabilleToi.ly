
\version "2.18.0"

% -------------------------------------------------------------------------

Deshabille = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 2
    g'8 a'8 b'8 c''8 |
    d''4 d''8 d'' d''4 g'' |
    b'4. b'8 b'4 d'' |
    d'' (c''8 b') c''4 e'' |
    e'' (d'') g'8 (a') b' c'' | 
    \break
    d''4 d''8 d'' d''4 g'' |
    b'4. b'8 b'4 d'' |
    d'' (c''8 b') c''4 a'
  }
  \alternative {
    { g'2 }
    { g'4. }
  } 
  \break
  \repeat volta 2 {
    \partial 8*5
    d''8 d''4 g''4
    fis''4. d''8 e'' g'' fis'' a'' |
    g''4. b'8 b'4 d'' |
    d'' (c''8 b') c''4 e'' |
    e'' (d'') d'' g'' | 
    \break
    fis''4. d''8 e'' g'' fis'' a'' |
    g''4. b'8 b'4 d'' |
    d'' (c''8 b') c''4 a'
  }
  \alternative {
    { g'4. }
    { g'2 }
  }
}

DeshabilleChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 2
    s2
    g1 s1 c1 d1 g1 s1 c2 d2
  }
  \alternative {
    { \partial 2 g2 }
    { \partial 8*3 g4. }
  }
  \repeat volta 2 {
    \partial 8*5
    s8 s2
    d1 g1 c1 s2 g2 d1 g1 c2 d2
  }
  \alternative {
    { \partial 8*3 g4. }
    { \partial 2 g2 }
  }
}

%{
\score {
  <<
    \new ChordNames \DeshabilleChords
    \new Staff { \clef treble \Deshabille }
  >>
  \header { piece = \markup {\fontsize #4.0 "Deshabille Toi"}}
}
%}
