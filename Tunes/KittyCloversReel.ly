\version "2.18.0"

KittyCloversReelChords = \chordmode{
  s8
  d2 e s2 d s e d4 a d2
  s e s d s e d4 a d2 d4 a d2
  b1:min s2 d b1:min a2 d
  b1:min s2 d b1:min a2 d
}

KittyCloversReel = \relative{
  \key d \major
  \time 2/2
  \partial 8 a'8
  \repeat volta 2 {
    d cis d a b e, e4
    b'8 e, e4 a8 d, fis a
    d cis d a b e, e4
    fis8 a4 g8 fis d fis a
    d cis d a b e, e4
    b'8 e, e4 a8 d, fis a
    d cis d a b e, e4
 }
  \alternative{
    {fis8 a e g fis d d a'}
    {fis8 a e g fis d d4}
  }
  \repeat volta 2 {
    b'8 a b cis d4 fis8 d
    b a b cis d a fis a
    b a b cis d4 e8 g
    fis d e cis d a fis a
    b8 a b cis d4 fis8 d
    b a b cis d a fis a
    b a b cis d4 e8 g
    fis a e cis d4 d
  }
}


\score {
  <<
    \new ChordNames \KittyCloversReelChords 
    \new Staff { \clef treble \KittyCloversReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Kitty Clover's Reel"}}
  \layout {}
  \midi {}
}
