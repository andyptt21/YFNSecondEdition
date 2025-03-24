\version "2.18.0"

HobartsTransformationChords = \chordmode{
  a1:m s g s
  a:m s g s2 a:m
  a:m g a1:m s e:7
  a2:m g a1:m s2 g a1:m
}

HobartsTransformation = \relative{
  \key g \major
  \time 4/4
  \repeat volta 2 {
    e''4 a a8 b a g
    e4 a a8 b a g
    e d e fis (g fis) g fis
    e d e fis (g fis) g fis
    e4 a a8 b a g
    e4 a a8 (b) a g
    e d e fis (g fis) g fis
    e d c b (a2)
  }
  \break
  \repeat volta 2{
    a4 a8 c b (a) g b
    a b a g (e4) e8 g
    a g a b (c4) d
    e4. f8 (e2)
    \break
    a,4 a8 c b (a) g b
    a b a g (e4) a8 b
    (c b) a c b a g4
    a4. b8 a2
  }
}


\score {
  <<
    \new ChordNames \HobartsTransformationChords 
    \new Staff { \clef treble \HobartsTransformation }
  >>
  \header { piece = \markup {\fontsize #4.0 "Hobart's Transformation" }}
  \layout {}
  \midi {}
}
