\version "2.18.0"

CornRigsChords = \chordmode{
  s4
  d1 a d s
  s a g2 a d1
  d a d s
  d2 g e:min a g a d1
}


CornRigs = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {a'8 b cis}
    d cis d e fis4 e8 d
    cis b cis d e cis a4
    d8 cis d e fis g e fis
    d4 a'8 b a4 \tuplet 3/2 {a,8 b cis}
    d cis d e fis4 e8 d
    cis b cis d e cis a4
    b8 cis d b e d cis b
    \partial 2. a4 d8 e d4
  }
  \break
  \repeat volta 2{
    \partial 4 \tuplet 3/2 {a8 b cis}
    d4 a' fis8 g a4
    cis,8 b cis d e cis a4
    d4 a' fis8 g e fis
    d4 a'8 b a4 \tuplet 3/2 {a,8 b cis}
    d4 a' b8 a g fis
    g fis e d cis d e a,
    b cis d b e d cis b
    \partial 2. a4 d8 e d4
  }
}


  \score {
  <<
  \new ChordNames \CornRigsChords 
  \new Staff { \clef treble \CornRigs }
  >>
  \header { piece = \markup {\fontsize #4.0 "Corn Rigs"}}
  \layout {}
  \midi {}
  }
