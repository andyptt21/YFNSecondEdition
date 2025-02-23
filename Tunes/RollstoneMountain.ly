\version "2.18.0"

RollstoneMountainChords = \chordmode{
  d2.
  s1 s e:min s
  a s d s
  s s g e:min
  a s d2 g d1
  d1 s e:min s
  a s d d4 a1 d2 g d4

}

RollstoneMountain = \relative{
  \key d \major
  \time 2/2
  \partial 2. d'4 fis g
  a4. b8 a4 g
  fis d' fis d
  b4. a8 g4 fis
  e2. fis4
  g2 cis4. b8
  a4 g e f
  fis2 fis
  fis4 d fis g
  a4. b8 a4 g
  fis d' fis d
  b4. a8 b4 d
  g2. d4
  cis4. d8 e4 cis
  a a fis'4. e8
  d2 d8 cis d e
  \partial 4 d4
  \repeat volta 2 {
    \partial 2. d fis g
    a2 a4 gis8 a
    b4 a g fis
    g2 b,2
    e4. fis8 e4 d
    cis4. d8 e4 cis
  }
  \alternative{
    {a4 a d4. e8
     fis1~
     \partial 4 fis4}
    {a,4 a fis'4. e8
     d2 d8 cis d e
   \partial 4 d4}
  }
}


  \score {
  <<
  \new ChordNames \RollstoneMountainChords 
  \new Staff { \clef treble \RollstoneMountain }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rollstone Mountain"}}
  \layout {}
  \midi {}
  }
