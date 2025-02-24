\version "2.18.0"

EdwardsJigChords = \chordmode{
  g2. d g a:m
  s a4.:m e a2.:m d4. g
  g2. d e:m b:m
  c g a:m d a:m d4. g
}

EdwardsJig = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    g''4. d
    b8 c d b4 a8
    g a b b c d
    a b c c d e
    a4. e
    c8 d e c4 b8
    a b c a b c
    d e fis g4.
  }
  \break
  \repeat volta 2 {
    b4. b
    a8 fis d d e fis
    g4 e8 e fis g
    fis d b b4.
    e e
    d8 b g g a b
  }
  \alternative{
    {
      c d c c d c
      a' b g fis e d
    }
    {a b c a b c
     d e fis g4.}
  }
}


\score {
  <<
    \new ChordNames \EdwardsJigChords 
    \new Staff { \clef treble \EdwardsJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Edward's Jig" }}
  \layout {}
  \midi {}
}
