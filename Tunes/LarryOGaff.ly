\version "2.18.0"

LarryOGaffChords = \chordmode{
  s4.
  g2. s c4. g d2.
  g2. s c4. g d g d g
  g2. s d s4. g
  g2. s c4. g d g d g 
}

LarryOGaff = \relative{
  \key g \major
  \time 6/8
  \partial 4. r4 d''8
  \repeat volta 2 {
    g4 g,8 \acciaccatura {b16 c} b8 a g
    d' e d d (b g)
    c e c b d b
    a^\markup { \null { (A) }} b c d^\markup { \null { (D) }} e fis
    g4 g,8 \acciaccatura {b16 c} b8 a g
    d' e d d (b g)
    c e c b d b
  }
  \alternative {
    {a b a g4 d'8}
    {a g fis g4 d'8}
  }
  \break
  \repeat volta 2{
    g,4 g'8 \acciaccatura {g16 a} g8 fis g
    \acciaccatura {g16 a} g8 fis g \acciaccatura {g16 a} g8 fis g
    d4 a'8 \acciaccatura {a16 b} a8 g a
    \acciaccatura {a16 b} a8 g a b4 a8
    g b a g fis e
    d g e d b g
    c e c b d b 
  }
  \alternative{
    {a g fis g4 fis8}
    {a g fis g4 d'8}
  }
}


\score {
  <<
    \new ChordNames \LarryOGaffChords 
    \new Staff { \clef treble \LarryOGaff }
  >>
  \header { piece = \markup {\fontsize #4.0 "Larry O'Gaff" }}
  \layout {}
  \midi {}
}
