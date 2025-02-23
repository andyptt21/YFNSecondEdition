\version "2.18.0"

NancyChords = \chordmode{
  s8
  d2 s s e4:7 a
  d2 s g4 a d2
  d a:7 d4 g e4:7 a
  d2 s g4 a:7 d2
  d s s e4:7 a
  d2 s g4 a:7 d2
  d2 a d4 g a2
  d s g4 a:7 d4.
}

Nancy = \relative{
  \key d \major
  \time 2/4
  \repeat volta 2 {
    \partial 8 a'8
    d d, fis a
    d fis16 e d8. a16
    d8 e g16 fis e d
    cis8 e a, b16 cis
    \break
    d8 d, fis a
    d fis16 e d8. a16
    b8 g' fis16 e d cis 
    \partial 4. d4.
  }
  \break
  \repeat volta 2{
    \partial 8 fis16 g
    a8. b16 a8 g16 fis
    g8. a16 g8 fis16 e
    fis8 d g16 fis e d
    cis8 e a, b16 cis
    \break
    d8 d, fis a
    d fis16 e d8 a
    b8 g' fis16 e d cis 
    \partial 4. d4.
  }
  \break
  \repeat volta 2{
    \partial 8 a16 cis
    d cis b a g fis e d
    fis8 a d8. a16
    d cis d e g fis e d
    cis d e cis a8 b16 cis
    d cis b a g fis e d
    fis8 a d8. a16
    b8 g' fis16 e d cis 
    \partial 4. d4.
  }
  \break
  \repeat volta 2{
    \partial 8 fis16 g
    a a, a' a, a'8 g16 fis
    g a, g' a, g'8 fis16 e
    fis e fis d g fis e d
    cis d e cis a8 b16 cis
    d16 cis b a g fis e d
    fis8 a d8. a16
    b8 g' fis16 e d cis 
    \partial 4. d4.
  }
}


  \score {
  <<
  \new ChordNames \NancyChords 
  \new Staff { \clef treble \Nancy }
  >>
  \header { piece = \markup {\fontsize #4.0 "Nancy"}}
  \layout {}
  \midi {}
  }
