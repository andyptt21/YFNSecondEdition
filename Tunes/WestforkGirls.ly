\version "2.18.0"

WestforkGirlsChords = \chordmode{
  d1 g a s2 d
  d1 g a s2 d
  d1 s a s
  s d s2 a d1
}


WestforkGirls = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    fis''8 g fis e d4 e8 fis
    g4 g b,2
    e8 fis e d cis4 a
    a8 b a g fis4 d
    fis'8 g fis e d4 e8 fis
    g4 g b,2
    e8 fis e d cis4 a
    a8 b cis4 d2
  }
  \break
  \repeat volta 2{
    a8 b a g fis4 a
    d d fis,4. a8
    g4 fis e4. fis8
    g4 fis e2
    \break
    e'8 fis e d cis a b cis
    d4 a fis a
    d d e8 fis g4
    fis d d2
  }
}


  \score {
  <<
  \new ChordNames \WestforkGirlsChords 
  \new Staff { \clef treble \WestforkGirls }
  >>
  \header { piece = \markup {\fontsize #4.0 "Westfork Girls"}}
  \layout {}
  \midi {}
  }
