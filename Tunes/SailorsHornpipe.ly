\version "2.18.0"

SailorsHornpipeChords = \chordmode{
  s4
  a1 s b e
  d b:min a2 e a1
  a1 d b e
  d b:min a2 e a1
}


SailorsHornpipe = \relative{
  \key a \major
  \time 2/2
  \partial 4 a''8 gis
  \repeat volta 2 {
    a4 a, a e'8 d
    cis e a4 a8 cis b a
    b4 b, b b'8 a
    gis b e,4 e fis8 gis
    a gis fis e fis e d cis
    d cis b a b a gis fis
    e a gis a b cis d b
    \partial 2. cis4 a a
  }
  \break
  \repeat volta 2{
    \partial 4 e'8 d
    cis e a e cis e a e
    fis4 d d fis8 e
    dis fis b fis dis fis b fis
    gis4 e e fis8 e
    d e fis e d cis b a
    b cis d cis b a gis fis
    e a gis a b cis d b
    \partial 2. cis4 a a
  }  
}


  \score {
  <<
  \new ChordNames \SailorsHornpipeChords 
  \new Staff { \clef treble \SailorsHornpipe }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sailor's Hornpipe"}}
  \layout {}
  \midi {}
  }
