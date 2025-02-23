\version "2.18.0"

RoadToTheIslesChords = \chordmode{
  s4
  g1 c c2 g d1
  g c g2 d g1
  s c s2 g d1
  g c g2 d g1

}

RoadToTheIsles = \relative{
  \key g \major
  \time 4/4
  \partial 4 g'8. a16
  \repeat volta 2 {
    b2 d8. b16 a8. b16
    g8. a16 g8. fis16 e4 g8. fis16
    e8. c16 e8. fis16 g8. a16 b8. d16
    a2. g8. a16
    b2 d8. b16 a8. b16
    g8. a16 g8. fis16 e4 c'
    b8. d16 b8. g16 d8. fis16 a8. fis16
    g2. b8. c16
    d8. d,16 d8. d16 d'8. d,16 d8. d16
    g8. a16 g8. fis16 e4 g8. fis16
    e8. c16 e8. fis16 g8. a16 b8. d16
    a2. b8. c16
    d8. d,16 d8. d16 d'8. d,16 d8. d16
    g8. a16 g8. fis16 e4 c'
    b8. d16 b8. g16 d8. fis16 a8. fis16
    g2. g8. a16
 }
}


  \score {
  <<
  \new ChordNames \RoadToTheIslesChords 
  \new Staff { \clef treble \RoadToTheIsles }
  >>
  \header { piece = \markup {\fontsize #4.0 "Road to the Isles"}}
  \layout {}
  \midi {}
  }
