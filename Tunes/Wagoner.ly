\version "2.18.0"

WagonerChords = \chordmode{
  s8
  c2 s g g:7
  c s f g4:7 c g4:7 c
  c2 s g s
  c s f g4:7 c g4:7 c
}


Wagoner = \relative{
  \key c \major
  \time 2/4
  \partial 8
      g''16 f
  \repeat volta 2 {
    e8 c c8. c16
    c d e f g8 d16 c
    d8 g, g8. g16
    g a b c d8 g16 f
    e8 c c8. c16
    c d e f g8. g16
    a g a b a g e d
  }
  \alternative{
    {c8. d16 c8 g'16 f}
    {c8. d16 c8 r8}
  }
  \break
  \repeat volta 2{
    e8 e16 d e8 e16 d
    e8 e c16 d e8
    g,16 b d b g b d b
    d8 g d16 e f8
    e8 e16 d e8 e16 d
    e8 e c16 d e8
    a16 g a b a g e d
  }
  \alternative{
    {c8. d16 c8 c16 d}
    {c8. d16 c8 g'16 f}
  }
}


  \score {
  <<
  \new ChordNames \WagonerChords 
  \new Staff { \clef treble \Wagoner }
  >>
  \header { piece = \markup {\fontsize #4.0 "Wagoner"}}
  \layout {}
  \midi {}
  }
