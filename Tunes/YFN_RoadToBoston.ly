
\version "2.18.0"

% -------------------------------------------------------------------------

RoadToBoston = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 e''4
    fis''2. e''8 fis'' |
    g''4 fis'' e'' d'' |
    cis'' d'' e'' fis'' |
    d'' a' fis' a' | \break
    fis''2. e''8 fis'' |
    g''4 fis'' e'' d'' |
    cis'' d'' e'' cis'' |
    \partial 4*3 d''2.
  } \break
  \repeat volta 2 {
    \partial 4 fis''8 g'' |
    a''2. gis''8 a'' |
    b''4 a'' g'' fis'' |
    g''2. fis''8 g'' |
    a''4 g'' fis'' e'' | \break
    fis''2. e''8. fis''16 |
    g''4 fis'' e'' d'' |
    cis'' d'' e'' cis'' |
    \partial 4*3 d'' a' d''
  }
}

RoadToBostonChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1:7 d1 d1 s1 a1:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g1 s1 d1 s1 a1:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \RoadToBostonChords
  \new Staff { \clef treble \RoadToBoston }
  >>
  \header { piece = \markup {\fontsize #4.0 "Road To Boston"}}
  }
%}
