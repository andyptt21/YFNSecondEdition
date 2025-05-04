
\version "2.18.0"

% -------------------------------------------------------------------------

BigScioty = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {d'8 (e' fis')}
    g'4 b'8 d'' b' (a') g' b' |
    a' b' b' b' b'4 d''8 c'' |
    b' a' (b') d'' a' g' e' g' |
    a' b' b' b' b'4 d' | 
    \break
    g'8 fis' (g') a' b'4 d'' |
    e''4. g''8 e''4 d''8 c'' |
    b' a' (b') g' a' [g' e' g'] |
    \partial 4*3 a' [b' b' b'] b'4
  } \break
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {d'8 (e' fis')}
    g'8 a' b' d'' <b' g''>4 <b' g''> |
    a''4. b''8 a''4 g''8 fis'' |
    g'' fis'' (g'') fis'' d'' d'' b'4 |
    e''4. g''8 e''4 g''8 fis'' | 
    \break
    g'' fis'' (g'') fis'' e'' d'' b'4 |
    e''4. g''8 e''4 d''8 c'' |
    b' a' (b') g' a' [g' a' g'] |
    \partial 4*3 a' [b' b' b'] b'4
  }
}

BigSciotyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 s1 s1 s1 c1 s2 d2
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 d1 s1 c1 s1 s1 g2 d2
    \partial 4*3 g2.
  }
}

%{
\score {
  <<
    \new ChordNames \BigSciotyChords
    \new Staff { \clef treble \BigScioty }
  >>
  \header { piece = \markup {\fontsize #4.0 "Big Scioty"}}
}
%}
