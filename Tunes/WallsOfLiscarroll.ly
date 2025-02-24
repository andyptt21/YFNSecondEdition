\version "2.18.0"

WallsOfLiscarrollChords = \chordmode{
  s8
  e2.:m a d b:m
  e:m a d e:m
  e4.:m d e:m d d2. b:m
  e4.:m d e:m d d2. e4.:m s4
  e2.:m a d e4.:m s4
}

WallsOfLiscarroll = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 e''8
    e d b b a fis
    a fis e e4 fis8
    a fis fis d' fis, fis
    a b cis d e fis
    e d b b a fis
    a fis e e4 fis8
    a fis fis d' fis, fis
    fis e d e4
  }

  \break

  \repeat volta 2 {
    \partial 8 e'8
    e b e fis d b
    e b e fis d b
    a fis fis d' fis, fis
    a b cis d e fis
  }
  \alternative{
    {e b e fis d b
     e b e fis d b
     a fis fis d' fis, fis
     fis e d e4}
    {e'8 d b b a fis
     a fis e e4 fis8
     a fis fis d' fis, fis
     fis e d e4}
  }

}


\score {
  <<
    \new ChordNames \WallsOfLiscarrollChords 
    \new Staff { \clef treble \WallsOfLiscarroll }
  >>
  \header { piece = \markup {\fontsize #4.0 "Walls of Liscarroll"}}
  \layout {}
  \midi {}
}
