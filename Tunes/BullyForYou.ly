\version "2.18.0"

BullyForYouChords = \chordmode{
  \partial 8 s8
  d2. s e:m s
  d s s a4. d
  d a4. d2. e:m a
  d4. a d2. s a4. d4
  
}

BullyForYou = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 a''16 g
    fis8 fis d e4 d8
    fis fis d e4 d8
    b e e e4 d8
    b e e e a g
    fis fis d e4 d8
    fis fis d e4 d8
    a d d d (e fis)
    a, d d d4
  }

  \break

  \repeat volta 2 {
    \partial 8 a'16 g
    fis8 g a e fis g
    fis g a e4 d8
    b8 e e e4 d8
    cis8 a a a a' g
    fis g a e fis g
    fis g a e4 d8
    a d d d e fis
    a, d d d4 
  }

}


\score {
  <<
    \new ChordNames \BullyForYouChords 
    \new Staff { \clef treble \BullyForYou }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bully For You"}}
  \layout {}
  \midi {}
}
