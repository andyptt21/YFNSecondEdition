\version "2.18.0"

ScartaglenPolkaChords = \chordmode{
  g1 s s s2 d
  g1 s s2 d g1
  g c g d
  g c g2 d g1
  s2 d g1 s2 d g1
  c g s2 d g1 g
}


ScartaglenPolka = \relative{
  \key g \major
  \time 4/4
  \repeat volta 2 {
    g'2 g4. a8 b4 d d e8 fis
    g4 b, b8 a g a b4 a a b8 a
    g2 g4. a8 b4 d d e8 fis
    g4 b, a8 c b a g2. r4
  }
  \break
  \repeat volta 2{
    b4 d g4. a8 fis4 e e8 fis g4
    d b b8 a g a b4 a a2
    b4 d g4. a8 fis4 e e8 fis g4
    d b a8 c b a g2. r4
  }
  \break
  \repeat volta 2{
    g'4 fis8 g a4 g8 a b2 b8 c b a
    g4 fis8 g a4 g8 a b2 b8 c b a
    g4 e e8 fis g e d4 b g'4. e8
    d4 b a8 c b a
  }
  \alternative{
    {g2. d'4}
    {g,1}
  }
}


  \score {
  <<
  \new ChordNames \ScartaglenPolkaChords 
  \new Staff { \clef treble \ScartaglenPolka }
  >>
  \header { piece = \markup {\fontsize #4.0 "Scartaglen Polka"}}
  \layout {}
  \midi {}
  }
