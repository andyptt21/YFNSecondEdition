\version "2.18.0"

LadyMontgomeryChords = \chordmode{
  d1 s2 g d a:7 g d
  s1 s2 g d a:7 g d
  d1 s s s2 a:7
  d1 s s2 g a:7 d
}

LadyMontgomery = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    fis'8 a d, a' fis a d, a'
    fis a d a b a d a
    fis a a fis \tuplet 3/2 {e fis e} e fis
    d b a b d2
    fis8 a d, a' fis a d, a'
    fis a d a \tuplet 3/2 {b c b} b cis
    d b a fis \tuplet 3/2 {e fis e} e fis
    d b a b d2
  }
  \break
  \repeat volta 4 {
    \tuplet 3/2 {fis'8 a fis} fis a fis e d e
    fis e d b a b d e
    \tuplet 3/2 {fis8 a fis} fis a fis e d e
    a fis fis a e4 d8 e
    \tuplet 3/2 {fis8 a fis} fis a fis e d e
    fis e d b a b d e
    fis4 e8 d b d a d
    e g fis e d2
  }
}


\score {
  <<
    \new ChordNames \LadyMontgomeryChords 
    \new Staff { \clef treble \LadyMontgomery }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lady Montgomery" }}
  \layout {}
  \midi {}
}
