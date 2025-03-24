\version "2.18.0"

RedHairedBoyHarmonyChords = \chordmode{
  s4
  a1 s2 d a1 g
  a s2 d2 a1 e2 a e a
  g1 s2 d a1 g
  a s2 d a1 e2 a e a
}

RedHairedBoyHarmony = \relative{
  \key a \major
  \time 4/4
  \partial 4 a4
  \repeat volta 2 {
    cis cis cis8 e a b
    cis d cis a fis2
    cis4 e cis a'
    g e e d
    cis cis8 b cis e a b
    cis d cis a fis4 a
    d4. d8 b4 gis8 fis
  }
  \alternative{
    { e4 cis cis a}
    {e'4 cis cis gis'8 a}
  }
  \break
  \repeat volta 2{
    b b a b g4 a8 b
    fis4 a8 g fis4 e8 fis
    e2 cis4 e
    g e e d
    cis cis8 b cis e a b
    cis4 cis8 a fis4 a
    d4. d8 b4 gis8 fis
  }
  \alternative{
    {e4 cis cis gis'8 a}
    { e4 cis cis a}
  }
}


\score {
  <<
    \new ChordNames \RedHairedBoyHarmonyChords 
    \new Staff { \clef treble \RedHairedBoyHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "Red Haired Boy (Harmony)" }}
  \layout {}
  \midi {}
}
