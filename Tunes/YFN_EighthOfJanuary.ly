
\version "2.18.0"

% -------------------------------------------------------------------------

EightOfJanuary = {
  \time 4/4
  \key d \major
  \partial 4 d''8 e''
  fis''8 (e'') fis'' a'' fis'' (e'') d'' fis'' |
  e'' (fis'') e'' d'' b'4 cis''8 d'' |
  e''4 e''8 (fis'') e'' cis'' (b' a') |
  d'' b' a' fis' (d'4) d''8 e'' |
  fis'' (e'') fis'' a'' (fis'' e'') d'' fis''( |
  e'' fis'') e'' d'' (b'4) cis''8 d'' |
  e''4 e''8 (fis'') e'' cis'' (b' a') |
  d'' b' a' fis' (d'4) d'8 e' |
  fis'4 a' a' fis' |
  a'8 b' a' fis' (e' d') d' e' |
  fis'4 a' a' a'8 (b') |
  a' fis' (e' fis') d'4 d'8 e' |
  fis'4 a' a' fis' |
  a'8 b' a' fis' (e' d') d' e' |
  fis'4 a' a' a'8 [b'] |
  \partial 4*3 a' fis' (e' fis') d'4
}

EightOfJanuaryChords = \chordmode {
  \time 4/4
  \partial 4 s4
  d1 g1 a1 d1 s1 g1 a1 d1
  d1 s1 s1 a2 d2 s1 s1 s1
  \partial 4*3 a2 d4
}

%{
  \score {
  <<
  \new ChordNames \EightOfJanuaryChords
  \new Staff { \clef treble \EightOfJanuary }
  >>
  \header { piece = \markup {\fontsize #4.0 "Eight of January / Battle of New Orleans"}}
  }
%}
