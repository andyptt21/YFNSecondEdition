
\version "2.18.0"

% -------------------------------------------------------------------------

RandyWives = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 8 cis''8
    d''4 a'8 g' fis'4 d'8 cis'' |
    d''4 fis''8 d'' e'' b' b' cis'' |
    d''4 a'8 g' fis'4 d'8 [fis'] |
    \partial 8*7 g' [b' a' g'] fis' [d'] d'
  }
  \repeat volta 2 {
    \partial 8 cis''8
    d''4 d''8 fis'' a'' b'' a'' fis'' |
    g'' e'' fis'' d'' e'' b' b' cis'' |
    d''4 d''8 fis'' a'' b'' a'' fis'' |
    g'' e'' a'' g'' fis'' d'' d'' a' |
    d''4 d''8 fis'' a'' b'' a'' fis'' |
    g'' e'' fis'' d'' e'' b' b' cis'' |
    d'' fis'' cis'' e'' b' [d'' a' fis'] |
    \partial 8*7 g' [b' a' g'] fis' [d'] d'
  }
}

RandyWivesChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 8 s8
    d1 s1 s1
    \partial 8*7 g2 d4.
  }
  \repeat volta 2 {
    \partial 8 s8
    d1 d2 a2 s1 s1 d1 s2 a2 s1
    \partial 8*7 s2 d4.
  }
}

%{
  \score {
  <<
  \new ChordNames \RandyWivesChords
  \new Staff { \clef treble \RandyWives }
  >>
  \header { piece = \markup {\fontsize #4.0 "Randy Wives of Greenlaw"}}
  }
%}
