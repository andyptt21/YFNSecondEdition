\version "2.18.0"

SonnysMazurkaChords = \chordmode{
  s4
  d2. s g d4 d2:sus4
  d2. s g2 a4 d2. d
  d a d d:sus4
  d a g2 a4 d2. d
}

SonnysMazurka = \relative{
  \key d \major
  \time 3/4
  \partial 4 fis'8. g16
  \repeat volta 2 {
    a4 a fis8. a16
    d4 d b8. a16
    g4 g a8. g16
    fis8. g16 e8. fis16 d8. fis16
    a4 a fis8. a16
    d4 d b8. a16
    g4 g8. g'16 fis8. e16
  }
  \alternative{
    {d2 fis,8. g16}
    {d'2 a8. d16}
  }
  \break
  \repeat volta 2 {
    fis4 fis g8. fis16
    e4 e fis8. e16
    d4 d e8. d16
    cis8. d16 b8. d16 a8. d16
    fis4 fis g8. fis16
    e4 e fis8. e16
    d4 d fis8. e16
  }
  \alternative{
    {d2 a8. d16}
    {d2 fis,8. g16}
  }
}


\score {
  <<
    \new ChordNames \SonnysMazurkaChords 
    \new Staff { \clef treble \SonnysMazurka }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sonny's Mazurka" }}
  \layout {}
  \midi {}
}
