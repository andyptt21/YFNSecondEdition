\version "2.18.0"

KatyHillChords = \chordmode{
  s4
  g1 c2 d g1 f2 d
  g1 c g2 d g1
  g1 s s a2 d
  g1 c g2 d g2.
}

KatyHill = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 d'4
    g a b d
    g \tuplet 3/2 {fis8 g fis} e4 d
    b g d'8 b g4
    a8 b a g fis4 d
    g a b d
    g \tuplet 3/2 {fis8 g fis} e4 d8 c
    b4 g a8 b a fis
    g2 g4
  }

  \break

  \repeat volta 2 {
    \partial 4 d'4
    \acciaccatura {e16 fis} g4 fis e d
    \acciaccatura {e16 fis} g4 fis e d
    b g d' g,
    a8 b a g fis4 d
    g a b d
    g \tuplet 3/2 {fis8 g fis} e4 d8 c
    b4 g a8 b a fis
    g2 g4
  }

}


\score {
  <<
    \new ChordNames \KatyHillChords 
    \new Staff { \clef treble \KatyHill }
  >>
  \header { piece = \markup {\fontsize #4.0 "Katy Hill "}}
  \layout {}
  \midi {}
}
