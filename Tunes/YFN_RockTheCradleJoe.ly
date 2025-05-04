
\version "2.18.0"

% -------------------------------------------------------------------------

RockTheCradleJoe = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''4 a'' fis''8 e'' d''4 |
    fis'' a'' fis''8 e'' d''4 |
    g''2 g''4 b'' |
    a''1 | \break
    fis''4 a'' fis''8 e'' d''4 |
    fis'' a'' fis''8 e'' d''4 |
    a' e'' g''8 fis'' e''4 |
    d''2 d'' |
  } \break
  \repeat volta 2 {
    a'4 cis'' e'' cis'' |
    d'' e'' fis''8 e'' d''4 |
    g''2 g''4 a'' |
    fis''2 fis'' | \break
    a'4 cis'' e'' cis'' |
    d'' e'' fis''8 e'' d''4 |
    g'' fis'' e''8 d'' cis''4 |
    d''2 d''
  }
}

RockTheCradleJoeChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 g1 d1 d1 s1 a1 d1
  }
  \repeat volta 2 {
    a1 d1 g1 d1 a1 d1 g2 a2 d1
  }
}

%{
  \score {
  <<
  \new ChordNames \RockTheCradleJoeChords
  \new Staff { \clef treble \RockTheCradleJoe }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rock the Cradle Joe"}}
  }
%}
