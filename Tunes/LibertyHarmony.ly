\version "2.18.0"

LibertyHarmonyChords = \chordmode{
  s4
  d1 s g a:7
  d s a:7 d
  d s s a:7
  d s a:7 d d2.
}

LibertyHarmony = \relative{
  \key d \major
  \time 2/2
  \partial 4 r4
  \repeat volta 2 {
    d''4 fis, d' fis,
    d' d8 cis a4 cis8 d
    d4 g, d' g,
    b4 b8 a cis4 d8 e
    d4 fis, d' fis,
    d' d8 cis fis,4 a
    cis cis8 b e,4 a8 a
    fis4 a fis a
  }
  \break
  \repeat volta 2{
    fis4. g8 fis e d cis
    a d fis a d2
    fis,4. g8 fis e d4
    cis4. d8 cis2
    fis4. g8 fis e d cis
    a d fis a d2
    cis4 cis8 b e,4 a8 a
  }
  \alternative{
    {fis4 a fis a}
    {\partial 2. fis4 a fis}
  }

}


\score {
  <<
    \new ChordNames \LibertyHarmonyChords 
    \new Staff { \clef treble \LibertyHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "Liberty (Harmony)" }}
  \layout {}
  \midi {}
}
