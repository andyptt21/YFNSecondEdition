\version "2.18.0"

PriestsLeapChords = \chordmode{
  s8
  g2. d4. g s2. d
  g d4. g a:m g d g d g
  g2. d4. g s2. d
  g d4. g c g d g4
}

PriestsLeap = \relative{
  \key g \major
  \time 6/8
  \partial 8 d'8
  \repeat volta 2 {
    g b a g4 b8
    d e fis g d b
    g b a g4 b8
    a fis d a' fis d
    g b a g4 b8
    d e fis g (\acciaccatura a16 g8 \acciaccatura fis16 g8)
    e c a d b g
  }
  \alternative{
    {fis e fis g (\acciaccatura a16 g8 \acciaccatura fis16 g8)}
    {fis d fis g4 b8}
  }

  \break

  \repeat volta 2 {
    d e d d c b
    d e fis g d b
    d e d d c b
    a fis d a' fis d
    \break
    d' e d d c b
    d e fis g (\acciaccatura a16 g8 \acciaccatura fis16 g8)
    e c a d b g
    fis e fis g4
  }
}


\score {
  <<
    \new ChordNames \PriestsLeapChords 
    \new Staff { \clef treble \PriestsLeap }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Priest's Leap"}}
  \layout {}
  \midi {}
}
