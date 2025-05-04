
\version "2.18.0"

% -------------------------------------------------------------------------

MississippiSawyer = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 fis''8 g''
    a''4 a''8 fis'' a''4 a''8 fis'' |
    a''4 a'' b''8 a'' a'' fis'' |
    g''4 a''8 fis'' g''4 a''8 fis'' |
    g''4 a'' b''8 a'' a'' g'' |
    fis''4 fis''8 e'' fis'' g'' fis'' e'' |
    d'' e'' fis'' g'' a''4 a'' |
    a'8 b' d'' fis'' e''4 cis'' |
    \partial 4*3
    d'' d''8 cis'' d''4
  }
  \repeat volta 2 {
    \partial 4 a'4 |
    d'' fis''8 e'' d''4 fis''8 e'' |
    d'' e'' fis'' g'' a''4 a'' |
    a'8 cis'' e'' cis'' a' cis'' e'' cis'' |
    a' cis'' e'' fis'' g''4 g'' |
    d'' fis''8 e'' d''4 fis''8 e'' |
    d'' e'' fis'' g'' a''4 a'' |
    a'8 b' d'' fis'' e''4 cis'' |
    \partial 4*3
    d'' d''8 cis'' d''4
  }
}

MississippiChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 d2 fis2:min g1 s2 a2:7
    d2 g2 d1 d2 a2:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1:7 s1
    d1 s1 d2 a2:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \MississippiChords
  \new Staff { \clef treble \MississippiSawyer }
  >>
  \header { piece = \markup {\fontsize #4.0 "Mississippi Sawyer"}}
  }
%}
