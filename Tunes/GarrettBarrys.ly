\version "2.18.0"

GarrettBarrysChords = \chordmode{
  d4. d:sus4 d c d2. c
  d4. d:sus4 d c d c d2.
  d s c s
  d s c d
}

GarrettBarrys = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    d'8 e fis g fis g
    a g a c4 e8
    d c a d4 e8
    fis e d c a g
    \break
    fis e fis g fis g
    a g a c d e
    d c a g e a
    d, e d d4.
  }
  \break
  \repeat volta 2 {
    d'8 c a d4 e8
    fis e fis d e d
    c a b c4 d8
    e d e e d c
    \break
    d c a d4 e8
    fis e d e g e
    d c a g e g
    d e d d4.^\markup { \null { (G) }}
  }
}


\score {
  <<
    \new ChordNames \GarrettBarrysChords 
    \new Staff { \clef treble \GarrettBarrys }
  >>
  \header { piece = \markup {\fontsize #4.0 "Garrett Barry's" }}
  \layout {}
  \midi {}
}
