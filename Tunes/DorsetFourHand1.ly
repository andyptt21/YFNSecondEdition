\version "2.18.0"

DFHROneChords = \chordmode{
  a8
  g2 c g d
  g c g4 d:7 g2
  g s a:m d:7
  g s d:7 g
}

DFHROne = \relative{
  \key g \major
  \time 2/4
  \repeat volta 2 {
    \partial 8 b'16 a
    g8 b d c16 b
    c8 e c e
    g, b d8. c16
    b8 a a b16 a
    g8 b d c16 b
    c8 e c e
    g, b d8. c16
    b8 g g
 }
  \repeat volta 2 {
    \partial 8 d'8
    g g g16^\markup { \null { (C) }} fis e8
    d d d16 c b8
    a8 a16 b c8 d
    e d d e16 fis
    g8 g g16^\markup { \null { (C) }} fis e8
    d8 d d16 c b8
    a8 a16 b c8 a
    g4 g8
  }
}


\score {
  <<
    \new ChordNames \DFHROneChords 
    \new Staff { \clef treble \DFHROne }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dorset Four Hand Reel (First Tune)"}}
  \layout {}
  \midi {}
}
