\version "2.18.0"

OConnorsPolkaChords = \chordmode{
  g2 s c s
  g g c4 d g2 
  g2 s c s
  g s c4 d g2
}

OConnorsPolka = \relative{
  \key g \major
  \time 2/4
  \repeat volta 2 {
    d'8. e16 g8 b
    d,8. e16 g8 b
    a e e d16 e
    g8 e e4
    d8. e16 g8 b
    d,8. e16 g8 b
    a e fis g
    a g g4
  }
  \break
  \repeat volta 2{
    d'8 b b a16 b
    d8 b b8. a16
    g8 e e d16 e
    g8 e e4
    d'8 b b a16 b
    d8 b b8. a16
    g8 e fis g
    a g g4
  }
}


\score {
  <<
    \new ChordNames \OConnorsPolkaChords 
    \new Staff { \clef treble \OConnorsPolka }
  >>
  \header { piece = \markup {\fontsize #4.0 "O'Connor's Polka" }}
  \layout {}
  \midi {}
}
