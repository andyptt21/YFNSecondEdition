
\version "2.18.0"

% -------------------------------------------------------------------------

TailToddle = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''4 fis''8 (d'') g''4 fis''8 (e'') |
    d''4 fis''8 (d'') e''4 cis''8 (a') |
    d''4 fis''8 (d'') g''4 fis''8 (e'') |
    fis'' g'' a'' fis'' e''4 cis''8 (a') |
  }
  \repeat volta 2 {
    <g'' b'>4 d''8 (b') b'4_\prall d''8 (b') |
    <g'' b'>4 d''8 (b') <e'' a'>4 cis''8 (a') |
    <g'' b'>4 d''8 (b') b'4_\prall d''8 (b') |
    a'4_\prall a''8 (fis'') e''4 cis''8 (a')
  }
}

TailToddleChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d2 g2 d2 a2 d2 g2 d2 a2
  }
  \repeat volta 2 {
    g1 g2 a2 g1 a1
  }
}

%{
  \score {
  <<
  \new ChordNames \TailToddleChords
  \new Staff { \clef treble \TailToddle }
  >>
  \header { piece = \markup {\fontsize #4.0 "Tail Toddle"}}
  }
%}
