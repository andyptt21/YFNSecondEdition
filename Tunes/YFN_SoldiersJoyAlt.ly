
\version "2.18.0"

% -------------------------------------------------------------------------

SoldiersJoyAlt = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 fis'8 g'
    a'8 fis' d' fis' a' fis' d' fis' |
    a'4 d''4 d'' cis''8 b' |
    a' fis' d' fis' a' fis' d' fis' |
    g'4 e' e' fis'8 g' | \break
    a' fis' d' fis' a' fis' d' fis' |
    a'4 d''4 d''4 d''8 e'' |
    fis'' a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''4 d'' d''
  } \break
  \repeat volta 2 {
    \partial 4 d''8 e'' |
    fis''4 fis''8 d'' fis'' a'' g'' fis'' |
    e''4 e''8 cis'' e'' g'' fis'' e'' |
    fis''4 fis''8 d'' fis'' a'' g'' fis'' |
    e'' d'' cis'' b' a'4 d''8 e'' | \break
    fis''4 fis''8 d'' fis'' a'' g'' fis'' |
    e''4 e''8 cis'' e'' g'' fis'' e'' |
    fis'' a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''4 fis''4 d''4
  }
}

SoldiersJoyChordsAlt = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s1 a1:7 d1 s1 s2 a2:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 a1:7 d1 a1:7 d1 a1:7 d2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \SoldiersJoyChordsAlt
  \new Staff { \clef treble \SoldiersJoyAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Soldier's Joy (Alt)"}}
  }
%}
