\version "2.18.0"

YankeeDoodleChords = \chordmode{
  d1 s2 a d1 s2 a
  d d:7 e:m e a1 d
  d2 g s f d1 s1
  d2 g s f a1 d
}

YankeeDoodle = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    d''4 d8 d e4 fis
    d fis e8 cis a4
    d4 d e fis
    d e8 d cis4 a
    d d e fis
    \acciaccatura a16 g4 fis e d
    cis a a8 b cis4
    d2 d
  }

  \break

  \repeat volta 2 {
    d4 d8 d b4 g
    b4 d c2
    a4. b8 a4 g
    fis8 e fis g a2
    d4 d8 d b4 g
    b d c2
    a4. b8 cis4 a8 (d)
    d2 d
  }

}


\score {
  <<
    \new ChordNames \YankeeDoodleChords 
    \new Staff { \clef treble \YankeeDoodle }
  >>
  \header { piece = \markup {\fontsize #4.0 "Yankee Doodle"}}
  \layout {}
  \midi {}
}
