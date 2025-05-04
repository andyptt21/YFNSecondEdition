\version "2.18.0"

MaggieInTheWoodsChords = \chordmode{
  s8
  g2 e:m g4 d:7 s2
  g e:m g4 d:7 g2
  g c g4 d:7 s2
  g c g4 d:7 g4 s8
}

MaggieInTheWoods = \relative{
  \key g \major
  \time 2/4
  \repeat volta 2 {
    \partial 8 d'8
    g d g a
    b e e g16 e
    d8 b a g16 a
    b8 a a d,16 d
    \break
    g8 d g a
    b e e g16 e
    d8 b a16 g a b
    g4~ g8
  }
  \break
  \repeat volta 2{
    \partial 8 d'8
    g8. fis16 e8 d
    e fis g8. e16
    d8 b a g16 a
    b8 a a d
    \break
    g8. fis16 e8 d
    e fis g8. e16
    d8 b a16 g a b
    g4~ g8
  }
}


\score {
  <<
    \new ChordNames \MaggieInTheWoodsChords 
    \new Staff { \clef treble \MaggieInTheWoods }
  >>
  \header { piece = \markup {\fontsize #4.0 "Maggie In The Woods" }}
  \layout {}
  \midi {}
}
