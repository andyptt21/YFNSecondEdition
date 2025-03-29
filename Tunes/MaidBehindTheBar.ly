\version "2.18.0"

MaidBehindTheBarChords = \chordmode{
  d1 s b:m d2 g
  d d:sus4 d1 b2:m g a d
  d1 s e:m s
  d s2 d:sus4 b:m g a d
}

MaidBehindTheBar = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    fis'8 a a g a fis e d
    fis a a g a4 d8 e
    fis b, b a b cis d e
    fis a a fis e fis d b
    a fis a b a fis e d
    fis a a fis a4 d8 e
    fis b, b a b cis d b
    a fis e fis d2
  }
  \break
  \repeat volta 4 {
    fis'8 g a g fis d d e
    fis d a' d, fis d d fis
    e fis g a b e, e fis
    \tuplet 3/2 {g fis e} b' e, g fis e g
    fis a a fis b4 a8 fis
    d e fis d e fis d e
    fis b, b a b cis d b
    a fis e fis d2
  }
}


\score {
  <<
    \new ChordNames \MaidBehindTheBarChords 
    \new Staff { \clef treble \MaidBehindTheBar }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Maid Behind The Bar" }}
  \layout {}
  \midi {}
}
