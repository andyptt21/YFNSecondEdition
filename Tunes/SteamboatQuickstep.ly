\version "2.18.0"

SteamboatQuickstepChords = \chordmode{
  a2. e4. a4. s2. e4. a4.
  s2. e4. a4. s2. e4. a4.
  a2. s2. d  s4. e4.
  a2. s d4. a e a
}

SteamboatQuickstep = \relative{
  \key a \major
  \time 6/8
  \repeat volta 2 {
    a''4 e8 cis4 a8
    e'8 fis gis a4.
    a8 gis fis e d cis
    b e d cis b a
    a'4 e8 cis4 a8
    e'8 fis gis a4.
    a8 gis fis e d cis
    e d cis a4.
    
  }

  \break

  \repeat volta 2 {
    cis8 e d cis b a
    e' fis e cis4 a8
    d4 fis8 fis gis fis
    fis gis a e4.
    cis4 e8 e fis e
    e fis e cis4 a8
    a' gis fis e d cis
    e d cis a4.
  }

}


\score {
  <<
    \new ChordNames \SteamboatQuickstepChords 
    \new Staff { \clef treble \SteamboatQuickstep }
  >>
  \header { piece = \markup {\fontsize #4.0 "Steamboat Quickstep"}}
  \layout {}
  \midi {}
}
