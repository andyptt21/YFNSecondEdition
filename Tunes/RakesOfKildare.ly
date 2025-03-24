\version "2.18.0"

RakesOfKildareChords = \chordmode{
  s8
  a2.:m s4. c g2. s
  a2.:m s4. c g2. a:m
  a2.:m s g s
  a2.:m s g a4.:m s4
}

RakesOfKildare = \relative{
  \key g \major
  \time 6/8
  \partial 8 e'8
  \repeat volta 2 {
    e a a a g a
    b c d e4 fis8
    g (\acciaccatura a16 g8 \acciaccatura fis16 g8) e fis g
    d b g \acciaccatura {b16 d} b8 a g
    e a a a g a
    b c d e4 fis8
    \acciaccatura {g16 a} g8 fis e d b g
    a4. a4
  }
  \break
  \repeat volta 2 {
    \partial 8 d8
    a' (\acciaccatura b16 a8 \acciaccatura g16 a8) e fis g
    a (\acciaccatura b16 a8 \acciaccatura g16 a8) b4 a8
    g (\acciaccatura a16 g8 \acciaccatura fis16 g8) d16 fis g8 e
    d b g \acciaccatura {b16 d} b8 a g
    a' (\acciaccatura b16 a8 \acciaccatura g16 a8) e fis g
    a (\acciaccatura b16 a8 \acciaccatura g16 a8) b4 a8
    g8 fis e d b g
    a b a a4
  }
}


\score {
  <<
    \new ChordNames \RakesOfKildareChords 
    \new Staff { \clef treble \RakesOfKildare }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Rakes of Kildare" }}
  \layout {}
  \midi {}
}
