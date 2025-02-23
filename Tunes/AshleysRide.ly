\version "2.18.0"

AshleysRideChords = \chordmode{
  s8
  d2 a s4 a:7 d2
  s a s4 a:7 d2
  s g a d
  b:min e:min a4 a:7 d4.
}


AshleysRide = \relative{
  \key d \major
  \time 2/4
  \repeat volta 2 {
    \partial 8 a''16 fis
    d8 d d cis16 d
    e8 e e fis16 e
    d16 cis b a b8 cis
    d16 cis d e d8 a'16 fis
    d8 d d cis16 d
    e8 e e fis16 e
    d16 cis b a b8 cis
    \partial 4. d4 d8
  }
  \break
  \repeat volta 2{
    \partial 8 d8
    fis fis fis e16 fis
    g8 g g a16 fis
    e8 e e d16 e
    \break
    fis8 fis fis a16 fis
    d8 d d cis16 d e8 e e fis16 e
    d cis b a b8 cis
    \partial 4. d4 d,8
  }
}


  \score {
  <<
  \new ChordNames \AshleysRideChords 
  \new Staff { \clef treble \AshleysRide }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ashley's Ride"}}
  \layout {}
  \midi {}
  }
