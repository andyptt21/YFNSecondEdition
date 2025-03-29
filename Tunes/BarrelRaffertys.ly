\version "2.18.0"

BarrelRaffertysChords = \chordmode{
  a2.:m s g s
  a:m s s4. g a2.:m
  a2.:m s g s
  a:m s s4. g a2.:m
}

BarrelRaffertys = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    e'4 a8 a g e
    a4 b8 c4.
    e,8 d e g4.
    a8 b a g e d
    e4 a8 a g e
    a4 b8 c4.
    e8 g e d b g
    a4. a
  }
  \break
  \repeat volta 2 {
    e'4 a8 a g a
    b4 a8 g4.
    e8 d e g4.
    a8 b a g e d
    e4 a8 a g a
    b4 a8 g4.
    a8 g e d b g
    a4. a
  }
}


\score {
  <<
    \new ChordNames \BarrelRaffertysChords 
    \new Staff { \clef treble \BarrelRaffertys }
  >>
  \header { piece = \markup {\fontsize #4.0 "Barrel Rafferty's" }}
  \layout {}
  \midi {}
}
