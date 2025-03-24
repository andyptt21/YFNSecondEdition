\version "2.18.0"

LarkInTheMorningChords = \chordmode{
  s8
  e2.:m s d d:7
  e2.:m s b:m e:m
  e:m d s g
  e:m a4.:m e:m b2.:m e4.:m s4
}

LarkInTheMorning = \relative{
  \key g \major
  \time 6/8
  \partial 8 b'16 a 
  \repeat volta 2 {
    g8 e e e g a
    b a b b16 d8. b8
    a fis d d4 d8
    a' fis a a b c
    b e, e e g a
    b a b e4 e8
    d b b b a b
    g e e e4
  }
  \break
  \repeat volta 2 {
    \partial 8 e'8
    e b e e fis g
    fis d d d4 d8
    d a d d e d
    b g g g4 d'8
    e b e e fis g
    a4 a8 g fis e
    d b b b a b
    g e e e4
  }
}


\score {
  <<
    \new ChordNames \LarkInTheMorningChords 
    \new Staff { \clef treble \LarkInTheMorning }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lark in the Morning" }}
  \layout {}
  \midi {}
}
