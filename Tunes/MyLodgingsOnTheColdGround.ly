\version "2.18.0"

MyLodgingsOnTheColdGroundChords = \chordmode{
  s4
  g2. s c s
  g d g d
  g s c s
  g d g s
  g s c s
  g d g d
  g s c s
  g d g s2
}

MyLodgingsOnTheColdGround = \relative{
  \key g \major
  \time 3/4
  \partial 4 b'8 (a)
  g4. a8 g4
  g b d
  c e g
  g2 fis8 (e)
  d4. c8 b4
  a g a
  b (d b a2)
  b8 (a)
  g4. a8 g4
  g b d
  c e g
  g2 fis8 (e)
  d4 g b,
  a4. g8 a4
  g2.~
  \partial 2 g2 \bar "||"
  \break
  \partial 4 d'8 (c)
  b4 d g
  g2 d4
  e c g'
  g2 fis8 (e)
  d4. c8 b4
  a g a
  b (d b a2)
  b8 (a)
  g4. a8 g4
  g b d
  c e g
  g2 fis8 (e)
  d4 g b,
  a4. g8 a4
  g2.~
  \partial 2 g2 \bar "||"    
}


\score {
  <<
    \new ChordNames \MyLodgingsOnTheColdGroundChords 
    \new Staff { \clef treble \MyLodgingsOnTheColdGround }
  >>
  \header { piece = \markup {\fontsize #4.0 "My Lodging's on the Cold Ground" }}
  \layout {}
  \midi {}
}
