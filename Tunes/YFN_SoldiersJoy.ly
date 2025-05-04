
\version "2.18.0"

% -------------------------------------------------------------------------

SoldiersJoy = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 fis'8 g'
    a'8 fis' d' fis' a' fis' d' fis' |
    a'4 d''8 cis'' d''4 fis'8 g' |
    a' fis' d' fis' a' fis' d' fis' |
    g'4 e' e' fis'8 g' | \break
    a' fis' d' fis' a' fis' d' fis' |
    a'4 d''8 cis'' d''4 d''8 e'' |
    fis'' a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''2.
  } \break
  \repeat volta 2 {
    \partial 4 d''8 e'' |
    fis'' e'' fis'' g'' a'' b'' a'' fis'' |
    e'' d'' cis'' d'' e'' fis'' g'' e'' |
    fis'' e'' fis'' g'' a'' b'' a'' fis'' |
    e'' d'' cis'' b' a'4 d''8 e'' | \break
    fis'' e'' fis'' g'' a'' b'' a'' fis'' |
    e'' d'' cis'' d'' e'' fis'' g'' e'' |
    fis'' a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''2.
  }
}

SoldiersJoyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s1 a1 d1 s1 s2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 a2 d1 a1 d1 g2 a2 d2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \SoldiersJoyChords
  \new Staff { \clef treble \SoldiersJoy }
  >>
  \header { piece = \markup {\fontsize #4.0 "Soldier's Joy"}}
  }
%}
