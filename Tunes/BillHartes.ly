\version "2.18.0"

BillHartesChords = \chordmode{
  d2. s4. c d2. s4. c
  d2. s4. c d2. s4. c
  d2. s4. c d2. s4. c
  d2. s4. c d2. s4. c
}

BillHartes = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    d'4. a'
    b8 a g a b a
    d,4. a'
    b8 a g e d c
    \break
    d4. a'
    b8 a g a b c
    d4 a8 b4 g8
    b a g e d c
  }
  \break
  \repeat volta 2 {
    d'4 a8 b4 g8
    b a g a b c
    d4 a8 b4 g8
    b a g a b a
    \break
    d4 a8 b4 g8
    b a g a b c
    d4 a8 b4 g8
    b a g e d c
  }
}


\score {
  <<
    \new ChordNames \BillHartesChords 
    \new Staff { \clef treble \BillHartes }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bill Harte's" }}
  \layout {}
  \midi {}
}
