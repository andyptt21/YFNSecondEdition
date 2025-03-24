\version "2.18.0"

GentleMaidenChords = \chordmode{
  s4
  g2. d:7 g c
  g g:7 c s2 d4:7
  g2. d:7 g c
  g d:7 g s
  g c s s
  g g:7 c s2 d4:7
  g2. d:7 g c
  g d:7 g s2
}

GentleMaiden = \relative{
  \key g \major
  \time 3/4
  \repeat volta 2 {
    \partial 4 d'4
    g4. a8 g4
    fis e d
    d'2 d4
    e fis g
    d4. c8 b4
    a2 g4
    e2.~
    e2 fis4
    g4. a8 g4
    fis e d
    d'2 d4
    e fis g
    d4. c8 b4
    a2 g4
    g2.~
    g2
  }
  \break
  \repeat volta 2 {
    \partial 4 d'4
    d4. e8 fis4
    g2 g4
    g2 g4
    g fis e
    d4. c8 b4
    a2 g4
    e2.~
    e2 fis4
    \break
    g4. a8 g4
    fis e d
    d'2 d4
    e fis g
    d4. c8 b4
    a2 g4
    g2.~
    g2
  }
}


\score {
  <<
    \new ChordNames \GentleMaidenChords 
    \new Staff { \clef treble \GentleMaiden }
  >>
  \header { piece = \markup {\fontsize #4.0 "Gentle Maiden" }}
  \layout {}
  \midi {}
}
