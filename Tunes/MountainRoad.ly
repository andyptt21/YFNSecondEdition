\version "2.18.0"

MountainRoadChords = \chordmode{
  d1 s2 a:7 d1 g2 a:7
  d1 s2 a:7 d1 a2:7 d
  d1 s2 g d1 g2 a:7 d1
  
}

MountainRoad = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    fis'4\turn a8 fis b fis a fis
    \tuplet 3/2 {e eis fis} a fis e fis d e
    \tuplet 3/2 {e eis fis} a fis b fis a fis
    g4 fis8 g e d b d
    \tuplet 3/2 {e eis fis} a fis b fis a fis
    \tuplet 3/2 {e eis fis} a fis e fis d e
    fis a a a b a fis a
    a b d e fis d d a
  }
  \repeat volta 4 {
    d cis d^\markup { \null { Repeat 4 times }} b a d, fis a
    d cis d e fis g fis e
    d cis d b a d, fis a
    g4 fis8 g e d b d
  }
  fis1
}


\score {
  <<
    \new ChordNames \MountainRoadChords 
    \new Staff { \clef treble \MountainRoad }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Mountain Road" }}
  \layout {}
  \midi {}
}
