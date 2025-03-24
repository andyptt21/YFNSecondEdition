\version "2.18.0"

UnfortunateRakeChords = \chordmode{
  s8
  e2.:m b:m g d4. c
  e2.:m d g b4.:m e:m
  e:m c d2. e:m d
  e4.:m c d2. e4.:m d s e4:m
}

UnfortunateRake = \relative{
  \key g \major
  \time 6/8
  \partial 8 g'16 fis 
  \repeat volta 2 {
    e8 b' b b4 g8
    fis d fis a b a
    g b d d c b
    a g fis e4 d8
    e8 b' b b a g
    fis d fis a g fis
    g a b a d b
    a g fis e4
  }
  \break
  \repeat volta 2 {
    \partial 8 b'8
    b e e e fis g
    fis4 d8 a4 d8
    b4 g8 e fis g
    a fis d d4 b'8
    b e e e fis g
    fis d b a g fis
    g e g fis e d
    e fis d e4
  }
}


\score {
  <<
    \new ChordNames \UnfortunateRakeChords 
    \new Staff { \clef treble \UnfortunateRake }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Unfortunate Rake" }}
  \layout {}
  \midi {}
}
