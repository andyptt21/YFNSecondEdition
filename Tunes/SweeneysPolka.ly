\version "2.18.0"

SweenysPolkaChords = \chordmode{
  a1 s s e
  a s s e2 a 
  a1 s s s2 e2 
  a1 s s e2 a2
}


SweenysPolka = \relative{
  \key a \major
  \time 4/4
  \repeat volta 2 {
    e''4 fis8 e cis4 e
    a, \tuplet 3/2 {e'8 fis e} cis4 e
    fis8 gis a fis e4 cis4
    b a fis2
    e'4 fis8 e cis4 e
    a, \tuplet 3/2 {e'8 fis e} cis4 e
    fis8 gis a fis e4 cis4
    b a a2
  }
  \break
  \repeat volta 2{
    cis4 e a8 b a fis
    e4 cis b a8 b
    cis4 e a8 b a fis
    e4 cis b2
    cis4 e fis a8 fis
    e4 cis b a8 b
    e4 \tuplet 3/2 {e8 fis e} cis4 b
    b a a2
  }
}


  \score {
  <<
  \new ChordNames \SweenysPolkaChords 
  \new Staff { \clef treble \SweenysPolka }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sweeny's Polka"}}
  \layout {}
  \midi {}
  }
