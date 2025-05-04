
\version "2.18.0"

% -------------------------------------------------------------------------

StephsReel = {
  \time 4/4
  \key d \major
  \partial 4 e'4
  \repeat volta 2 {
    a'4 a'8 b' cis''4 cis''8 d'' |
    e''4 a'' e'' d'' |
    cis'' a' a' b'8 cis'' |
    d''4 d''8 b' g'4 b' |
    a' a'8 b' cis'' b' cis'' d'' |
    e''4 a'' e'' d'' |
    cis'' b'8 a' g'4 b' |
  }
  \alternative {
    { a'2. e'4 }
    { a'2. g''8 fis'' }
  }
  e''4 a'' a'' g''8 fis'' |
  e''4 a'' a'' d'' |
  cis'' a' a' b'8 cis'' |
  d''4 d''8 b' g'4 g''8 fis'' |
  e''4 a'' a'' g''8 fis'' |
  e''4 a'' a'' d'' |
  cis'' b'8 a' g'4 b' |
  a'2. g''8 fis'' |
  e''4 a'' a'' g''8 fis'' |
  e''4 a'' a'' d'' |
  cis'' a' a' b'8 cis'' |
  d''4 d''8 b' g'4 b' |
  a' a'8 b' cis'' b' cis'' d'' |
  e''4 a'' e'' d'' |
  cis'' b'8 a' g'4 b' |
  a'2. fis''4 |
  \repeat volta 2 {
    e'' e'' e'' fis'' |
    g''2 fis''4 e'' |
    d'' b' g' b' |
    d'' b' d'' g'' |
    e'' e'' e'' fis'' |
    g''2 fis''4 e'' |
    d'' b' g'' b'
  }
  \alternative {
    { b' a' a' fis'' }
    { \partial 4*3 b' a' a' }
  }
}

StephsReelChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    a1 s1 s1 g1 a1 s1 g1
  }
  \alternative {
    { a1 } { a1 }
  }
  a1 s1 s1 g1 a1
  s1 s2 g2 a1 s1 s1
  s1 g1 a1 s1 s1 s1
  \repeat volta 2 {
    a1 s1 g1 s1 a1 s1 g1
  }
  \alternative {
    { s2 a2 }
    { \partial 4*3 s2 a4 }
  }
}

%{
  \score {
  <<
  \new ChordNames \StephsReelChords
  \new Staff { \clef treble \StephsReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "StephsReel / Campbell's Farewell to Redgap"}}
  }
%}
