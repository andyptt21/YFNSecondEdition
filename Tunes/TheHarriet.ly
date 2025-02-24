\version "2.18.0"

TheHarrietChords = \chordmode{
  d2 d:7 e:m e a1 d
  d2 d:7 e:m e a1 d
  d2 d:7 g1 d e2 a
  d2 d:7 g1 d a2 d
}

TheHarriet = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    fis''4 fis d e8 fis
    g4 g g8 fis e d
    cis4 cis a b8 cis
    d8 cis d e fis g a g
    fis4 fis d e8 fis
    g4 g g8 fis e d
    cis4 cis a b8 cis
    d4 a d,2
  }

  \break

  \repeat volta 2 {
    a''4 a fis8 e d4
    b4. cis8 d cis d b
    a4 a' fis d
    e8 d e fis e cis a4
    \break
    a' a fis8 e d4
    b4. cis8 d cis d b
    a4 a' fis d
    cis8 d e fis d2
  }

}


\score {
  <<
    \new ChordNames \TheHarrietChords 
    \new Staff { \clef treble \TheHarriet }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Harriet"}}
  \layout {}
  \midi {}
}
