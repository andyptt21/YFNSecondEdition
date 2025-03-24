\version "2.18.0"

OldHagChords = \chordmode{
  s4
  d2. s s s
  d s c s
  d s s s
  d s c s
  
}

OldHag = \relative{
  \key g \major
  \time 6/8
  \partial 4 a'8 g
  \repeat volta 2 {
    fis e d c'4 a8
    d e d c a g
    a4. a8 b g
    a4. a4 g8
    \break
    fis e d c'4 a8
    d e d c a g
    g4. g8 a fis
    g4. g4 g8
  }
  \break
  \repeat volta 2 {
    fis'4. g
    a8 fis d c a b
    a4. a8 b g
    a4. a4 a8
    \break
    fis'4. g
    a8 fis d c a b
    g4. g8 a fis
    g4. g4 g8
  }
}


\score {
  <<
    \new ChordNames \OldHagChords 
    \new Staff { \clef treble \OldHag }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Hag You Have Killed Me" }}
  \layout {}
  \midi {}
}
