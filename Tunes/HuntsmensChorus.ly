\version "2.18.0"

HuntsmensChorusChords = \chordmode{
  s4
  g1 s d:7 g
  s s2 c g d:7 g1
  g e:m a:m d:7
  g s2 c g d:7 g1
  
}

HuntsmensChorus = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 d'4
    g d g8 a b c
    d2 b
    a4 d a d
    b8 c b a g4 d
    g d g8 a b c
    d2 b
    b8 a g a b4 a
    g2.
  }
  \break
  \repeat volta 2 {
    \partial 4 d4
    b'4 b8 b b4 a
    g2 g
    c4 c8 c c4 b
    a fis e d
    b' b8 a g a b c
    d2 c
    b8 a g a b4 a
    g2.
  }
}


\score {
  <<
    \new ChordNames \HuntsmensChorusChords 
    \new Staff { \clef treble \HuntsmensChorus }
  >>
  \header { piece = \markup {\fontsize #4.0 "Huntsmen's Chorus"}}
  \layout {}
  \midi {}
}
