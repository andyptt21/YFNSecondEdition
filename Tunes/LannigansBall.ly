\version "2.18.0"

LannigansBallChords = \chordmode{
  e2.:m s d s
  e:m s e4.:m a:m e2.:m
  e2.:m d e:m b:m
  e:m d e4.:m a:m e2.:m
}

LannigansBall = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    e'8 fis e g4 a8
    g4 a8 b cis d
    d, e d fis4 g8
    a b a a fis d
    e8 fis e g4 a8
    g4 a8 b cis d
    e4 b8 c4 a8
    b g e e4.
  }
  \break
  \repeat volta 2 {
    e'4 fis8 g4 e8
    fis a g fis e d
    e4 fis8 g4 e8
    fis d b b4.
    e4 fis8 g4 e8
    fis a g fis e dis
    e4 b8 c4 a8
    b g e e4.
  }
}


\score {
  <<
    \new ChordNames \LannigansBallChords 
    \new Staff { \clef treble \LannigansBall }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lannigan's Ball" }}
  \layout {}
  \midi {}
}
