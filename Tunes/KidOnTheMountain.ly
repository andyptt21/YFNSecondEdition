\version "2.18.0"

KidOnTheMountainChords = \chordmode{
  e4.:m d e:m s s s s s d e:m d s
  g d g s s s s d g s d s
  e:m s s s s d e:m s s g d s g d g g d s
  e:m s s s s d e:m s s
  g d s g d g s s s
  s d g s d s e4:m
}

KidOnTheMountain = \relative{
  \key g \major
  \time 9/8
  \repeat volta 2 {
    e'8 e e fis fis fis g4 fis8
    e4. \acciaccatura c'16 b8 c a b g d
    e8 e e fis fis fis g4 a8
    \acciaccatura c16 b8 a g fis a g fis e d
  }
  \repeat volta 2 {
    \acciaccatura c'16 b8 g b a g fis g4 d8
    g8 a b d g e d b g
    b b b a g fis g4 a8
    b a g fis a g fis e d
  }
  \repeat volta 2 {
    \acciaccatura a''16 g8 fis g \acciaccatura fis16 e8 d e e4 fis8
    \acciaccatura fis16 g8 g g e fis g a fis e
  }
  \alternative{
    {\acciaccatura a16 g8 fis g \acciaccatura fis16 e8 fis e e4 g16 a
     b8 a g fis a g fis e d}
    {g g g a g fis g4 g16 a
     b8 a g fis a g fis e d}
  }
  \repeat volta 2 {
    \acciaccatura fis16 e8 b e e4 fis8 g4.
    e8 b e e fis g a fis d
    \acciaccatura fis16 e8 b e e4 fis8 g4 a8
    b8 a g fis a g fis e d
  }
  \repeat volta 2 {
    e d b d b a g4 d8
    g8 a b d g e d b a
    e' d b d b a g4 a8
    \acciaccatura c16 b8 a g fis a g fis e d
  }
  \partial 4 e4
}


\score {
  <<
    \new ChordNames \KidOnTheMountainChords 
    \new Staff { \clef treble \KidOnTheMountain }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Kid On The Mountain" }}
  \layout {}
  \midi {}
}
