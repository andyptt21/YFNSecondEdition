\version "2.18.0"

DurhamRangersChords = \chordmode{
  s4
  d1 a2 d g d
  a1 d a2 d g a d1
  d a2 d g d
  a1 d a2 d g a d2.
}

DurhamRangers = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    \partial 4
    fis'8 g
    a g a fis a4 d8 e
    fis g e fis d4 d8 a
    b cis d b a b a fis
    g4 e e fis8 g
    a b a fis a4 d8 e
    fis g e fis d4 d8 a
    b cis d b a b a g
    \partial 2. fis4 d d
  }
  \break
  \repeat volta 2{
    \partial 4 a''8 g
    fis e fis g a fis d fis
    e d cis b a d fis a
    g4 b8 g fis4 a8 fis
    g4 e e fis,8 g
    a b a fis a4 d8 e
    fis g e fis d4 d8 a
    b cis d b a b a g
    \partial 2. fis4 d d
  }
}


  \score {
  <<
  \new ChordNames \DurhamRangersChords 
  \new Staff { \clef treble \DurhamRangers }
  >>
  \header { piece = \markup {\fontsize #4.0 "Durham Rangers"}}
  \layout {}
  \midi {}
  }
