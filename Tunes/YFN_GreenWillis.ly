
\version "2.18.0"

% -------------------------------------------------------------------------

GreenWillis = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 { a'8 (b' cis''}
    d''8) a' d'' a' d'' a' fis'' (e'') |
    d'' a' d'' a' d'' a' g'' (fis'' |
    e'') d'' cis'' b' a' b' cis'' d'' |
    e'' d'' cis'' b' (a'4) \tuplet 3/2 { a'8 (b' cis''} | 
    \break
    d'') a' d'' a' d'' a' fis'' (e'') |
    d'' a' d'' a' d'' a' g'' (fis'' |
    e'') d'' cis'' a' (b' [a') cis'' a'] |
    \partial 4*3 d''4 d''2
  } 
  \break
  \repeat volta 2 {
    \partial 4 fis''8 (g'' |
    a'' g'') fis'' g'' a'' g'' fis'' (e'') |
    d''4 d''8 cis'' (d''4) e''8 fis'' |
    g'' fis'' g'' a'' b'' a'' g'' fis'' |
    e'' d'' cis'' b' (a'4) fis''8 g'' | 
    \break
    a'' g'' fis'' g'' a'' g'' fis'' (e'') |
    d'' a' d'' a' g'' (e'') g'' (fis'' |
    e'' d'') cis'' a' (b' [a') cis'' a'] |
    \partial 4*3 d''4 d''2
  }
}

GreenWillisChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1 s1 d1 s1 a1
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g1 a1 d1 s2 g2 a1
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \GreenWillisChords
  \new Staff { \clef treble \GreenWillis }
  >>
  \header { piece = \markup {\fontsize #4.0 "Green Willis"}}
  }
%}