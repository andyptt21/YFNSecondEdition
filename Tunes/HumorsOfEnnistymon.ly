\version "2.18.0"

HumorsOfEnnistymonChords = \chordmode{
  s8
  g2. c g c4. d
  g2. c g4. d s g
  d2. s g d4. g
  d2. s g d4. g
  g2. c g d
  g c g d
  g2. c g4. d s g
}

HumorsOfEnnistymon = \relative{
  \key g \major
  \time 6/8
  \partial 8 d'8
  \repeat volta 2 {
    b'4 b8 g b d
    c4 c8 a b c
    b4 b8 g b d
    c a g fis g a
    b4 b8 g b d
    c4 c8 a b c
    d e d c a fis
    a g fis g4.
  }
  \break
  \repeat volta 2 {
    fis'4 fis8 fis e d
    c a g fis a d
    g4 g8 g fis g
    a fis d d4 d8
    fis4 fis8 fis e d
    c a g fis g a
    b d b c a e
    a g fis g4.
  }
  \break
  \repeat volta 2 {
    g'8 d b g' d b
    e c a e' c a
    b4 b8 g a b
    c a g fis g a
  }
  \alternative{
    {g'8 d b g' d b
    e c a e' c a
    b4 b8 g a b
    c a g fis g a}
    {b4 b8 g b d
    c4 c8 a b c
    d e d c a fis
    a g fis g4.}
  }
}


\score {
  <<
    \new ChordNames \HumorsOfEnnistymonChords 
    \new Staff { \clef treble \HumorsOfEnnistymon }
  >>
  \header { piece = \markup {\fontsize #4.0 "Humors of Ennistymon" }}
  \layout {}
  \midi {}
}
