\version "2.18.0"

JohnsonsRoadChords = \chordmode{
  s8
  g4. c g2. a4.:m d g c
  g c g2. d:7 g
  c g d:7 g
  g4. c g2. d:7 g4. s2
}

JohnsonsRoad = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 d'8
    d4 g8 e e g
    d4 g8 b4.
    c8 b c a b c
    d4 b8 a g e
    d4 g8 e e g
    d4 g8 b4.
    c8 b c d, e fis
    g4. g4
  }
  \break
  \repeat volta 2 {
    \partial 8 d'8
    g4. \acciaccatura a16 g8 fis e
    d b e d4 b8
    \acciaccatura d16 c8 b c a b c
    e d4 \acciaccatura e16 d8 b d
    g4. \acciaccatura a16 g8 fis e
    d b e d b g
    c b c d, e fis
    g4. g4
  }
}


\score {
  <<
    \new ChordNames \JohnsonsRoadChords 
    \new Staff { \clef treble \JohnsonsRoad }
  >>
  \header { piece = \markup {\fontsize #4.0 "Johnson's Road" }}
  \layout {}
  \midi {}
}
