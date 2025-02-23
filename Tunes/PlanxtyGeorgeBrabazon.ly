\version "2.18.0"

PlanxtyGeorgeBrabazonChords = \chordmode{
  s4
  g1 s a:m s2 d2
  g c g c g d g1
  g2 d e1:m a:m d
  g2 d e1:m a2:m d g2.
}

PlanxtyGeorgeBrabazon = \relative{
  \key g \major
  \time 4/4
  \repeat volta 2 {
    \partial 4 g''8 e
    d4 g, c8 b a g
    d'4 g, c8 b a g
    e'4 a, a8 b c d
    e4 a, a8 b c d
    e8 d c b g'4 fis8 e
    e d c b c b a g
    b a g e d e g a
    b4 g g
  }

  \break

  \repeat volta 2 {
    \partial 4 g'8 a
    b4 g8 b a4 fis8 a
    g4 e8 g e d c b
    e4 a, a8 b c d
    e4 a, a g'8 a
    b4 g8 b a4 fis8 a
    g4 e8 g e d c b
    c b a g d e g a
    b4 g g
  }

}


\score {
  <<
    \new ChordNames \PlanxtyGeorgeBrabazonChords 
    \new Staff { \clef treble \PlanxtyGeorgeBrabazon }
  >>
  \header { piece = \markup {\fontsize #4.0 "Planxty George Brabazon "}}
  \layout {}
  \midi {}
}
