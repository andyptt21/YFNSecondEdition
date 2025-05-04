
\version "2.18.0"

% -------------------------------------------------------------------------

Floyds = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''4 fis'' a'' a'' |
    g'' g''8 b''~ b'' b'' b''4 |
    fis'' a'' a''8 fis'' e'' d'' |
    b' a' b' cis'' d'' cis'' d'' e'' |
    fis''4 fis'' a'' a'' |
    g'' g''8 b''~ b'' b'' b''4 |
    fis'' a'' a''8 fis'' e'' d'' |
    b' a' b' cis'' d''2 |
  }
  \repeat volta 2 {
    b'4 b' (c'') c''( |
    b') b'8 e''~ e'' e'' e''4 |
    b' b' (c'') c''( |
    b') b'8 e'~ e'2 |
    b'4 b' (c'') c''( |
    b') b'8 e''~ e'' e'' e''4 |
    fis'' a'' a''8 fis'' e'' d'' |
    b' a' b' cis'' d''2
  }
}

FloydsChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 g1 d1 g2 a2 d1 g1 d2 g2 a2 d2
  }
  \repeat volta 2 {
    b2:min a2:min b2:min e2:min b2:min a2:min b2:min e2:min
    b2:min a2:min b2:min e2:min d2 g2 a2:7 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \FloydsChords
  \new Staff { \clef treble \Floyds }
  >>
  \header { piece = \markup {\fontsize #4.0 "Floyd's Reel"}}
  }
%}
