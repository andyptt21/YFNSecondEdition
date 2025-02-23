\version "2.18.0"

WestwindChords = \chordmode{
  s8
  d2 s s a:7
  d s d4 a:7 d2
  d2 s d4 a:7 a2:7
  d s d4 a:7 d2 
}

Westwind = \relative{
  \key d \major
  \time 2/4
  \partial 8 a'8
  \repeat volta 2 {
    fis a fis a
    fis a d16 cis b a
    fis8 a fis a
    e a a4
    fis8 a fis a
    fis a d16 cis b a
    d8 d e16 fis g e
    fis8 d d4
  }
  \break
  \repeat volta 2{
    fis8 a a a
    fis a a a16 fis
    g8. e16 fis8. d16
    e8 cis b a
    d a b16 cis b a
    d8 a b16 cis b a
    d8 d e16 fis g e
    fis8 d d4
  }
}


  \score {
  <<
  \new ChordNames \WestwindChords 
  \new Staff { \clef treble \Westwind }
  >>
  \header { piece = \markup {\fontsize #4.0 "Westwind"}}
  \layout {}
  \midi {}
  }
