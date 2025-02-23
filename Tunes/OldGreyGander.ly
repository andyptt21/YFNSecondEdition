\version "2.18.0"

OldGreyGanderChords = \chordmode{
  a1:min g a:min e2:min f
  a1:min g a:min g2 a:min
  a1:min g a:min g2 a:min
  a:min f g1 a:min g2 a:min
}

OldGreyGander = \relative{
  \key e \minor
  \time 2/2
  \repeat volta 2 {
    e'8 a a b c4 b8 (a)
    b g g a b c d b
    a e a b c d e fis
    g e d b c4 b8 (a)
    e a a b c4 b8 a
    b g g a b c d b
    a e a b c d e fis
    g e d b \tuplet 3/2 {\acciaccatura {b16 c b}} a4 a 
  }
  \break

  \repeat volta 2 {
    a' e8 a a4 g8 e
    d4 b8 g b (d) d4
    a' e8 a a4 b8 a
    g e d b \tuplet 3/2 {\acciaccatura {b16 c b}} a4 a
    a' e8 a a4 g8 e
    d4 b8 g b (d) d4
    e,8 a a b c d e fis
    g e d b \tuplet 3/2 {\acciaccatura {b16 c b}} a4 a
  }
}


\score {
  <<
    \new ChordNames \OldGreyGanderChords 
    \new Staff { \clef treble \OldGreyGander }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Grey Gander"}}
  \layout {}
  \midi {}
}
