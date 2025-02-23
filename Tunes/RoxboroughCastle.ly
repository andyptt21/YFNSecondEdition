\version "2.18.0"

RoxboroughCastleChords = \chordmode{
  s4
  a1 d2 a d a e1
  a d2 a a e a1
  a s d2 a e1
  a d2 a a e a2.
}

RoxboroughCastle = \relative{
  \key a \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 cis''8 b
    a4 a8 cis e cis a cis
    d4 d8 fis e cis a cis
    d4 fis8 d cis4 e8 cis
    b a b cis b d cis b
    a gis a cis e cis a cis
    d cis d fis e cis a cis
    a' gis a fis e d cis b
    \partial 2. cis4 a a
  }
  \break
  \repeat volta 2{
    \partial 4 \tuplet 3/2 {e'8 fis gis}
    a e cis e fis e cis e
    a e cis e fis e cis e
    d4 b'8 d, cis4 a'8 cis,
    b a b cis b d cis b
    a gis a cis e cis a cis
    d cis d fis e cis a cis
    a' gis a fis e d cis b
    \partial 2. cis4 a a
  }
}


  \score {
  <<
  \new ChordNames \RoxboroughCastleChords 
  \new Staff { \clef treble \RoxboroughCastle }
  >>
  \header { piece = \markup {\fontsize #4.0 "Roxborough Castle"}}
  \layout {}
  \midi {}
  }
