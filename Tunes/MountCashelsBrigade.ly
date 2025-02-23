\version "2.18.0"

MountCashelsBrigadeChords = \chordmode{
  a1 s s e
  a s e a a
  a s e s
  a s s2 e2 a1 a1
}


MountCashelsBrigade = \relative{
  \key a \major
  \time 4/4
  \repeat volta 2 {
    a'4 cis8. b16 a8 b a fis
    e8. fis16 e8 d cis4 e
    a cis8. b16 a8 b cis d
    b4 e8. fis16 e8 d cis b
    a4 cis8. b16 a8 b a fis
    e8. fis16 e8 d cis4 e
    e'8 d cis b cis b a gis
  }
  \alternative{
    {a4 a8. b16 a4 e}
    {a4 a8. b16 a4  \tuplet 3/2 {b8 cis d}}
  }
  \break
  \repeat volta 2{
    e8. fis16 e8 d cis8. d16 cis8 b
    a4 a8 b cis a b cis
    d8. e16 d8 cis b8. cis16 b8 a
    gis4 e8. fis16 gis8 e fis gis
    a4 a gis8 b gis e
    fis8. e16 fis8 gis a4 fis'
    e8. fis16 e8 cis d b gis e
  }
  \alternative{
    {a4 a8. b16 a4  \tuplet 3/2 {b8 cis d}}
    {a4 a8. b16 a4 e}
  }
}


  \score {
  <<
  \new ChordNames \MountCashelsBrigadeChords 
  \new Staff { \clef treble \MountCashelsBrigade }
  >>
  \header { piece = \markup {\fontsize #4.0 "Mount Cashel's Brigade"}}
  \layout {}
  \midi {}
  }
