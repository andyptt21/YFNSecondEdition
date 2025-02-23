\version "2.18.0"

FairyDanceChords = \chordmode{
  s4
  d1 g2 a:7 d4 d:7 g2 a:7 d
  s1 g2 a:7 d4 d:7 g2 a:7 d
  d2 b e:min a:7 d g a:7 d
  d2 b e:min a:7 d g a2:7 d4
}


FairyDance = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 d''8 e
    fis4 fis8 d fis4 fis8 d
    g fis e d cis d e g
    fis4 fis8 a g fis e d
    cis a b cis d4 d8 e
    fis4 fis8 d fis4 fis8 d
    g fis e d cis d e g
    fis4 fis8 a g fis e d
    \partial 2. cis a b cis d4
  }
  \break
  \repeat volta 2{
    \partial 4 fis8 g
    a4 a b4. fis8
    g4 g a4. g8
    fis4 fis8 a g fis e d
    cis a b cis d e fis g
    \break
    a4 a b4. fis8
    g4 g a4. g8
    fis4 fis8 a g fis e d
    \partial 2. cis a b cis d4
  }
}


  \score {
  <<
  \new ChordNames \FairyDanceChords 
  \new Staff { \clef treble \FairyDance }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Fairy Dance"}}
  \layout {}
  \midi {}
  }
