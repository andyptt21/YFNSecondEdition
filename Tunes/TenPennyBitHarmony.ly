\version "2.18.0"

TenPennyBitHarmonyChords = \chordmode{
  s8
  a2.:m g a:m g
  a:m g s a:m
  a:m e4.:m g a2.:m e4.:m g
  a2.:m e4.:m g s2. a4.:m s4

}

TenPennyBitHarmony = \relative{
  \key c \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 b'8
    c4 e,8 c'4 e,8
    g4 g8 g4 b8
    c4 e,8 c'4 e,8
    g4. b8 a b
    \break
    c4 e,8 c'4 e,8
    g4 g8 g4 b8
    c8 b g b4 g8
    g e d c e
  }
  \break
  \repeat volta 2{
    \partial 8 g
    a4 c8 c b c
    g4 g8 b g g
    a4 c8 c b c
    g4. b4 b8
    \break
    c4 c8 c b c
    g4 g8 b4 b8
    c b g b4 g8
    d c c c4
  }
}


\score {
  <<
    \new ChordNames \TenPennyBitHarmonyChords 
    \new Staff { \clef treble \TenPennyBitHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Ten Penny Bit (Harmony)" }}
  \layout {}
  \midi {}
}
