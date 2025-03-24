\version "2.18.0"

BanishMisfortuneChords = \chordmode{
  s4
  d4. c d c d2. s
  d4. c d c d4. c d2.
  d s c s
  d c d4. c d2.
  d s4. c d c d2.
  c s d4. c d2. d2
}

BanishMisfortune = \relative{
  \key d \major
  \time 6/8
  \partial 4 d''8 e
  \repeat volta 2 {
    fis e d \appoggiatura {c16 d} c8 a g
    a d d c a g
    fis d d d e d
    fis e fis \appoggiatura {g16 a} g8 fis g
    fis4. \appoggiatura {c'16 d} c8 a g
    a g a c d e
    \appoggiatura {fis16 g} fis8 e d \appoggiatura {c16 d} c8 a g
    a d cis d d e
  }
  \break
  \repeat volta 2 {
    fis d d d cis d
    fis d fis a g fis
    e c\turn c c b c
    e c e g fis e
    \break
    fis d d a' g fis
    e c\turn c g' fis e
    fis e d \appoggiatura {c16 d} c8 a g
    a d cis d d e
  }
    \break
  \repeat volta 2 {
    fis4 g8 e4^\markup { \null { (C) }} fis8
    d4^\markup { \null { (D) }} e8 c4 d8
    a g a g a g
    fis g e fis e d
    \break
    c'4. \appoggiatura {c16 d} c8 a g
    a g a c d e
    fis e d c a g
  }
  \alternative{
    {a d cis d d e}
    {a, d cis d}
  }

}


\score {
  <<
    \new ChordNames \BanishMisfortuneChords 
    \new Staff { \clef treble \BanishMisfortune }
  >>
  \header { piece = \markup {\fontsize #4.0 "Banish Misfortune" }}
  \layout {}
  \midi {}
}
