\version "2.18.0"

ShandonBellsChords = \chordmode{
  s8
  d2. s g s
  d s g4. a:7 d2. d2.
  d2. s a s
  d s g4. a:7 d4. s4
}

ShandonBells = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 b'8
    a fis d d fis a
    d e d cis b a
    b g e e fis a
    b (\acciaccatura d16 b8 \acciaccatura a16 b8 ) b cis d
    a fis d d fis a
    d (\acciaccatura e16 d8 \acciaccatura cis16 d8 ) cis b a
    b cis d e cis a
    
  }
  \alternative{
    {
      d (\acciaccatura e16 d8 \acciaccatura cis16 d8 ) cis b a
    }
    {d (\acciaccatura e16 d8 \acciaccatura cis16 d8 ) d4}
  }

  \break

  \repeat volta 2 {
    \partial 8 g8
    fis (\acciaccatura a16 fis8 \acciaccatura e16 fis8 ) d e d
    fis a a \acciaccatura {a16 b} a8 fis d
    cis a a e' a, a
    cis (\acciaccatura d16 cis8 \acciaccatura b16 cis8 ) e fis g
    fis (\acciaccatura a16 fis8 \acciaccatura e16 fis8 ) d e d
    fis a a \acciaccatura {a16 b} a8 fis d
    b cis d e cis a
    d (\acciaccatura e16 d8 \acciaccatura cis16 d8 ) d4
  }


}


\score {
  <<
    \new ChordNames \ShandonBellsChords 
    \new Staff { \clef treble \ShandonBells }
  >>
  \header { piece = \markup {\fontsize #4.0 "Shandon Bells"}}
  \layout {}
  \midi {}
}
