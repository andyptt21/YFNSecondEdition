
\version "2.18.0"

% -------------------------------------------------------------------------

BoatinUpSandy = {
  \time 4/4
  \key g \major
  \partial 4 e''8 (fis''
  \repeat volta 2 {
    g''4) e'' fis'' d'' |
    e''8 d'' e'' d'' (b' d'') e'' (fis'' |
    g'' fis'') e'' g'' (fis'' e'' fis''4) |
    e''4. (dis''8 e''4) e''8 (fis'' |
    g''4) e'' fis'' d'' |
    e''8 fis'' e'' d'' (b' d'') a' (b' |
    c''4 a') b' g' |
    a'8 (b') a' g' (e' g') a' (b' |
    c''4) a' b' g' |
    a'4. (gis'8 a'4) a'8 (b' |
    c'' b') a' d'' (b') a' g' b' |
    a' b' a' g' (e'4) a'8 (b' |
    c'' b') a' d'' (b' a' b'4) |
  }
  \alternative {
    { a'4. (gis'8 a'4) e''8 [(fis'')] }
    { \partial 4*3 a'2. }
  }
}

BoatinUpSandyChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    g2 d2 a1 g2 d2 e1 g2 d2 a1 a2:min g2
    a1:min s2 g2 a1:min s2 g2 a1:min s2 g2
  }
  \alternative {
    { a1 }
    { \partial 4*3 a2. }
  }
}

%{
\score {
  <<
    \new ChordNames \BoatinUpSandyChords
    \new Staff { \clef treble \BoatinUpSandy }
  >>
  \header { piece = \markup {\fontsize #4.0 "Boatin Up Sandy"}}
}
%}