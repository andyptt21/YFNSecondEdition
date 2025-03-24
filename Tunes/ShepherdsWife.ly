\version "2.18.0"

ShepherdsWifeChords = \chordmode{
  s4
  g2. s s s
  c g a:7 d
  g s s s
  c d g s
  g b e:m b:m
  c g a:7 d
  g b e:m b:m
  c d g s2
}

ShepherdsWife = \relative{
  \key g \major
  \time 3/4
  \repeat volta 2 {
    \partial 4 d'4
    g2 a4
    b2 c4
    d2 g4
    g fis d
    e4. fis8 g4
    d c b
    a b g
    fis4. e8 d4
    g2 a4
    b2 c4
    d2 g4
    g fis d
    e4. fis8 g4
    a g fis
    g2.
    g,2
  }
  \break
  \repeat volta 2 {
    \partial 4 g'8 a
    b2 b4
    a4. g8 fis4
    g2 g4
    g fis d
    e4. fis8 g4
    d c b
    a b g
    fis4. e8 d4
    b''2 b4
    a4. g8 fis4
    g4. a8 g4
    g fis d
    e4. fis8 g4
    a g fis
    g2.
    g,2
  }
}


\score {
  <<
    \new ChordNames \ShepherdsWifeChords 
    \new Staff { \clef treble \ShepherdsWife }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Shepherd's Wife" }}
  \layout {}
  \midi {}
}
