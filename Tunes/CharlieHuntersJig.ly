\version "2.18.0"

CharlieHuntersJigChords = \chordmode{
  d4. g d2. s4. g a2.:7
  d4. g d2. s4. a s d
  d2. g e a
  d g d4. a s d
}

CharlieHuntersJig = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    d'8 fis a g b d
    a d fis a4 g8
    fis e d b cis d
    e cis a g fis e
    \break
    d8 fis a g b d
    a d fis a4 g8
    fis e fis g e cis
    e d cis d4.
  }
  \break
  \repeat volta 2 {
    \appoggiatura {fis16 g} a8 fis d d cis d
    b4 g8 g4 fis8
    e gis b e4 d8
    cis b a a a' g
    \break
    fis d a fis d fis
    g b d g4 g8
    fis e fis g e cis
    e d cis d4.
  }
}


\score {
  <<
    \new ChordNames \CharlieHuntersJigChords 
    \new Staff { \clef treble \CharlieHuntersJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Charlie Hunter's Jig" }}
  \layout {}
  \midi {}
}
