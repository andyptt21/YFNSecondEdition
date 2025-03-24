\version "2.18.0"

ComeOerTheStreamCharlieChords = \chordmode{
  s4
  g2. s s s
  s s d g
  g c a:7 d
  g c g d
  c g s d
  c g d g2
}

ComeOerTheStreamCharlie = \relative{
  \key g \major
  \time 3/4
  \repeat volta 2 {
    \partial 4 d'4
    g4. b8 d4
    d b e
    d b g'
    d b a
    g4. b8 d4
    d b g
    d b' a
    g2
    
  }
  \break
  \partial 4 d'4
  g4. fis8 g4
  e fis g
  e a g
  fis e d
  g4. fis8 g4
  e d c
  b a g
  d'2 b4
  c e c
  b d g
  d4. b8 a g
  b4 a fis'
  g4. fis8 e4
  d g b,
  d c a
  g2_\markup { \italic "D.C." } \bar "||"
    
}


\score {
  <<
    \new ChordNames \ComeOerTheStreamCharlieChords 
    \new Staff { \clef treble \ComeOerTheStreamCharlie }
  >>
  \header { piece = \markup {\fontsize #4.0 "Come O'er the Stream, Charlie" }}
  \layout {}
  \midi {}
}
