\version "2.18.0"

WestEndChords = \chordmode{
  s4
  d1 a:7 d a
  d1 a:7 d2 a:7 d1
  d a:7 d a
  d a:7 d2 a:7 d2.
  
}

WestEnd = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    \partial 4 a'8. g16
    fis8. d16 fis8. a16 d4 d
    cis8. d16 e8. fis16 g4 g
    fis8. a16 fis8. d16 b8. fis'16 e8. d16
    cis4 a a a8. g16
    fis8. d16 fis8. a16 d4 d
    cis8. d16 e8. fis16 g4 g
    fis8. a16 fis8. d16 b8. g'16 e8. cis16
    d4 d d
  }
  \break
  \repeat volta 2 {
    \partial 4 fis8. g16
    a8. fis16 d8. fis16 a8. fis16 d8. fis16
    g8. e16 cis8. e16 g8. e16 cis8. e16
    a8. fis16 d8. fis16 a8. fis16 d8. fis16
    cis4 a a a8. g16
    fis8. d16 fis8. a16 d4 d
    cis8. d16 e8. fis16 g4 g
    fis8. a16 fis8. d16 b8. g'16 e8. cis16
    d4 d d
  }
}


\score {
  <<
    \new ChordNames \WestEndChords 
    \new Staff { \clef treble \WestEnd }
  >>
  \header { piece = \markup {\fontsize #4.0 "West End" }}
  \layout {}
  \midi {}
}
