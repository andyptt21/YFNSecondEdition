\version "2.18.0"

DFHRTwoChords = \chordmode{
  s8
  a2 d a e:7
  a d e:7 a
  a d a e:7
  a d e:7 a
}

DFHRTwo = \relative{
  \key a \major
  \time 2/4
  
  \repeat volta 2 {
    \partial 8 e'8
    a cis16 e a e cis16 a
    d8 fis d fis
    a, cis16 e a e cis16 a
    b8 e b e
    \break
    a, cis16 e a e cis16 a
    d8 fis d fis
    a, cis16 e a e cis16 a
    a8 a' a
  }
  \break
  
  \repeat volta 2 {
    \partial 8 d,16 cis 
    e8 cis e cis
    fis d fis d
    e cis e cis
    b e e8. e16
    \break
    e8 cis e cis
    fis d fis d
    e gis16 fis e d cis b
    a8 a' a
  }
}


\score {
  <<
    \new ChordNames \DFHRTwoChords 
    \new Staff { \clef treble \DFHRTwo }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dorset Four Hand Reel (Second Tune)"}}
  \layout {}
  \midi {}
}
