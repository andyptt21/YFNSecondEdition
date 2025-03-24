\version "2.18.0"

PeelerAndTheGoatChords = \chordmode{
  s8
  a4.:min g a2.:min a4.:min g e2.:min
  a4.:min g a2.:min a4.:min e:m a2.:min
  a:m s4. g a:m g e2.:m
  a4.:min g a2.:min a4.:min e:m a4.:min s4
}

PeelerAndTheGoat = \relative{
  \key g \major
  \time 6/8
  \partial 8 a'16 b
  \repeat volta 2 {
    c4 a8 b a g
    a4 b8 c4 d8
    e f e d4 c8
    b4 g8 g a b
    c4 a8 b a g
    a4 b8 c4 d8
    e fis g fis e d
    e4 a,8 a4
  }
  \break
  \repeat volta 2 {
    \partial 8 fis'8
    g fis e e4 d8
    e4 fis8 g4 a8
    g fis e d4 g8
    b,4 g8 g a b
    c b a b (a g)
    a4 b8 c4 d8
    e fis g fis e d
    e4 a,8 a4
  }
}


\score {
  <<
    \new ChordNames \PeelerAndTheGoatChords 
    \new Staff { \clef treble \PeelerAndTheGoat }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Peeler and the Goat" }}
  \layout {}
  \midi {}
}
