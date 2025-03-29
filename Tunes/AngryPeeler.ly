\version "2.18.0"

AngryPeelerChords = \chordmode{
  g2. s4. c g2. d
  g2. s4. c g2. d4. g
  g2. c g d
  g c g d4. g 
}

AngryPeeler = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    b'4 b8 g e d
    d e d g e d
    b'4 b8 d b g
    a b a a4 c8
    b4 b8 g e d
    d e d g e d
    b'4 b8 d b g
    d e g g4.
  }
  \break
  \repeat volta 2 {
    b4 b8 b c d
    e g e d b g
    b4 b8 d b g
    fis a a a4 c8
    b4 b8 b c d
    e g e d b g
    b4 b8 d b g
    d e g g4.
  }
}


\score {
  <<
    \new ChordNames \AngryPeelerChords 
    \new Staff { \clef treble \AngryPeeler }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Angry Peeler" }}
  \layout {}
  \midi {}
}
