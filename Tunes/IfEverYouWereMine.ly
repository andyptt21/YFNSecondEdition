\version "2.18.0"

IfEverYouWereMineChords = \chordmode{
  s4
  g2. e:m c g
  s e:m d s
  s g c4 g2 c2.
  g e:m c g
  g b:m c d
  g b:m c d
  s c g a4:m c2
  g2. e:m d4 c2 g2
}

IfEverYouWereMine = \relative{
  \key g \major
  \time 3/4
  \partial 4 d'8 e
  g2 e'4
  d2 b8 g
  a b g4. e8
  g2 d8 e
  g2 e'4
  d2 b8 d
  d2.~
  d2 e8 fis
  g2^\markup { \null { C (Em) }} e8 d
  g2 e8 d
  e4 d4. b8
  a b g4. e8
  d2 e'4
  d2 b8 g
  a b g4. e8
  \partial 2 g2 \bar "||" 
  \partial 4 a4
  b2 a8 g
  d'2 d4
  c d e
  d2 c4
  b2 a8 g
  d'2 d4
  c d e
  d e fis
  g2^\markup { \null { G (Em) }} e8 d
  g2 e8 d
  e4 d4. b8
  a b g4. e8
  d2 e'4
  d2 b8 g
  a b g4. e8
  \partial 2 g2 \bar "||" 
}


\score {
  <<
    \new ChordNames \IfEverYouWereMineChords 
    \new Staff { \clef treble \IfEverYouWereMine }
  >>
  \header { piece = \markup {\fontsize #4.0 "If Ever You Were Mine" }}
  \layout {}
  \midi {}
}
