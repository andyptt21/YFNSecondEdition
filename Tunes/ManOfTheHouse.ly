\version "2.18.0"

ManOfTheHouseChords = \chordmode{
  s8
  e1:min s2 d e1:min d2 a:min
  e1:min s2 d e1:min d2 e:min
  e2:min d c1 c2. d4 e1:min
  e2:min d c1 a:min e:min
  
}

ManOfTheHouse = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    \partial 8 d'8
    e4 b'8 e, g a b g
    e4 b'8 e, fis d a' d,
    e4 b'8 e, g a b c
    b d c a b e, e d
    e4 b'8 e, g a b g
    e4 b'8 e, fis d a' d,
    e4 b'8 e, g a b c
    b d c a b e, e 
  }

  \break

  \repeat volta 2 {
    \partial 8 e'8
    e fis g e fis g a fis
    g fis e d e d b d
    e fis g e fis g a fis
    g fis e d b4 e8 d
    e fis g e fis g a fis
    g fis e d e fis g a
    b g a fis g fis e d
    e b b a g e e
  }

}


\score {
  <<
    \new ChordNames \ManOfTheHouseChords 
    \new Staff { \clef treble \ManOfTheHouse }
  >>
  \header { piece = \markup {\fontsize #4.0 "Man of the House"}}
  \layout {}
  \midi {}
}
