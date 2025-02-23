\version "2.18.0"

SaltyDogRagChords = \chordmode{
  e1 s a s
  d d:7 g s
  e:7 s a s
  d s g d2 g  
}

SaltyDogRag = \relative{
  \key d \major
  \time 2/2
  e'4 gis fis gis8. fis16
  e4 gis fis4. e8
  a4 cis b cis8. b16
  a4 cis b4. a8
  d4 fis e d8. d16
  d4 fis8. d16 e4 d
  g4 e d b8. a16
  g8. fis16 g4 b2
  \break
  e4 dis d4. b8
  e4 dis d4. b8
  b4 bes a e
  b' bes a4. a8
  d4 b8. a16 d4 b8. a16
  d8. b16 a4 d e8. d16
  g4 e d b8. g16
  d8. e16 fis4 g8. g16 fis8. f16
}


  \score {
  <<
  \new ChordNames \SaltyDogRagChords 
  \new Staff { \clef treble \SaltyDogRag }
  >>
  \header { piece = \markup {\fontsize #4.0 "Salty Dog Rag"}}
  \layout {}
  \midi {}
  }
