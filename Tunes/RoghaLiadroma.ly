\version "2.18.0"

RoghaLiadromaChords = \chordmode{
  g4. d e2.:m g4. d s2.
  g4. d e2.:m g2. d
  g2. e4.:m b:m g2. a:m
  g e4.:m d g2. s4. d
}

RoghaLiadroma = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    g'8 a g fis a fis
    e4 b'8 b a b
    g8 a g fis a fis
    d4 a'8 a8 fis d
    \break
    g8 a g fis a fis
    e4 b'8 b a b
    g a b d b g
    fis a g fis e d
  }
  \break
  \repeat volta 2 {
    g4 b8 d b d
    e d b d b a
    g4 b8 d b g
    a b g fis e d
    \break
    g4 b8 d b d
    e d b d e fis
    g fis e d c b
    a b g fis e d
  }
}


\score {
  <<
    \new ChordNames \RoghaLiadromaChords 
    \new Staff { \clef treble \RoghaLiadroma }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rogha Liadroma" }}
  \layout {}
  \midi {}
}
