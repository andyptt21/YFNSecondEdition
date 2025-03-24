\version "2.18.0"

YoungJaneChords = \chordmode{
  s4
  g2. b:m c d:7
  g b:m c d:7
  g b:m c d:7
  g d:7 g s
  g s c a:m
  d:7 g a:7 d
  g b:m c g
  s d:7 g s
}

YoungJane = \relative{
  \key g \major
  \time 3/4
  \partial 4 \tuplet 3/2 {d'8 (e fis)}
  g4. a8 b4
  a b d
  e2 e4
  d4. b8 a4
  g4. a8 b4
  a2 g4
  e2.
  (d2) e8 (fis)
  g4. a8 b4
  a b d
  e2 e4
  d4. b8 a4
  g4. a8 b4
  a2 g4
  g2.~
  \partial 2 g2 \bar "||"
  \break
  \partial 4 b8 (c)
  d4 b d
  g4. fis8 g4
  e2 e4
  a,2 b4
  c4. d8 e4
  d4 b a
  g2.
  (fis2) \tuplet 3/2 {d8 (e fis)}
  
  g4. a8 b4
  a b d
  e2 e4
  d2 e4
  g,4. a8 b4
  a2 g4
  g2.~
  \partial 2 g2 \bar "||"
}


\score {
  <<
    \new ChordNames \YoungJaneChords 
    \new Staff { \clef treble \YoungJane }
  >>
  \header { piece = \markup {\fontsize #4.0 "Young Jane" }}
  \layout {}
  \midi {}
}
