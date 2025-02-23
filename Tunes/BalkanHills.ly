\version "2.18.0"

BalkanHillsChords = \chordmode{
  d4
  s2 g4 d d2 a
  d g4 d s a d2
  d2 g4 d s2 a
  d g4 d d4 a d4 d4 a d4
  d4 s2 g4 d s2 a
  d g4 d s a d4

}

BalkanHills = \relative{
  \key d \major
  \time 2/4
  \repeat volta 2 {
    \partial 4 a''8. g16
    fis a, fis' e d8 a
    b16 g d' b a8 d16 e
    fis a, a a' g fis e d
    fis8 e e a16 g
    fis a, fis' e d8 a
    b16 g d' b a8 d16 e
    fis a g a g e cis a
    \partial 4 d8 d
  }

  \break
  \repeat volta 2{
    \partial 4 fis8. g16
    a d, fis a fis8 e16 d
    b g d' b a8 fis'16 g
    a d, fis a g fis e d
    fis8 e e fis16 g
    a d, fis a fis8 e16 d
    b g d' b a8 d16 e
  }
  \alternative{
    {fis a g a g e cis a
     \partial 4 d8 d}
    {fis16 a, a a' g e cis a
     \partial 4 d8 d}
  }
  \break
  \repeat volta 2{
    \partial 4 d8 a16 b
    d8 e fis e16 d
    b g d' b a8 d16 e
    fis a, a a' g fis e d
    fis8 e e a,16 b
    d8 e fis e16 d
    b g d' b a8 d16 e
    fis a g a g e cis a
    \partial 4 d8 d
  }
}


  \score {
  <<
  \new ChordNames \BalkanHillsChords 
  \new Staff { \clef treble \BalkanHills }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Balkan Hills Schottische"}}
  \layout {}
  \midi {}
  }
