\version "2.18.0"

TobinsJigChords = \chordmode{
  s8
  d2. a:7 d4. g a2.:7
  d a:7 d4. a:7 s4. d
  d2. a:7 d4. g a2.:7
  d a:7 d4. a:7 s4. d4
}

TobinsJig = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 a'16 fis
    d8 fis a d cis d
    e cis a cis d e
    fis d fis \grace {a16} g8 fis g
    e cis a g fis e
    d fis a d cis d
    e cis a e' fis g
    fis16 (g a8) fis g e cis
    e d cis d4
  }
  \break
  \repeat volta 2{
    \partial 8 d8
    d fis a a g fis
    e16 (fis g8) e e fis g
    fis d fis \grace {a16} g8 fis g
    e cis a g fis e
    \break
    d8 fis a d cis d
    e cis a e' fis g
    fis16 (g a8) fis g e cis
    e d cis d4
  }
}


\score {
  <<
    \new ChordNames \TobinsJigChords 
    \new Staff { \clef treble \TobinsJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Tobin's Jig" }}
  \layout {}
  \midi {}
}
