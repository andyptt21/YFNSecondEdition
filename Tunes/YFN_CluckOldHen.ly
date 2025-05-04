
\version "2.18.0"

% -------------------------------------------------------------------------

CluckOldHen = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    e''4 a''8 (e'' g''4) a''8 e'' ( |
    e''4) a''8 (e'') d''4 fis'' |
    e'' a''8 e'' g'' (fis'') g'' fis'' ( |
    e'') d'' (c''4) <a' a'>2
  } 
  \break
  \repeat volta 2 {
    a'4 a' <e'' c''>2 |
    a'4 a' g'2 |
    a'4 a'8 (b' c'') b' c'' d'' ( |
    e'' d'') c''4 a' a'
  }
}

CluckOldHenChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a2 g2 a2 g2 a2 g2 e2 a2
  } 
  \break
  \repeat volta 2 {
    a2 c2 a2 g2 a1 e2 a2
  }
}

%{
\score {
  <<
    \new ChordNames \CluckOldHenChords
    \new Staff { \clef treble \CluckOldHen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cluck Old Hen"}}
}
%}
