\version "2.18.0"

WhelansChords = \chordmode{
  e2.:m s4. d e2.:m d
  e2.:m s4. d e2.:m d
  e2.:m d4. e:m s c d2.
  e2.:m d4. e:m g4. d e:m d
}

Whelans = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    e'4. b'8 a fis
    fis e b' a fis d
    e4. b'8 a fis
    d' a fis fis e d
    \break
    e4. b'8 a fis
    fis e b' a fis a
    \tuplet 3/2 {b cis d} b b a fis
    d' a fis fis e d 
  }

  \break

  \repeat volta 2 {
    b'4. e
    fis8 e d e4.
    b8 a b g'4 e8
    fis d b a fis a
    \break
    b4. e
    fis8 e d e4 fis8
    g8 b g fis a fis
    e d b a fis a
  }
}


\score {
  <<
    \new ChordNames \WhelansChords 
    \new Staff { \clef treble \Whelans }
  >>
  \header { piece = \markup {\fontsize #4.0 "Whelan's"}}
  \layout {}
  \midi {}
}
