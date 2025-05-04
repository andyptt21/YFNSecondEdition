\version "2.18.0"

SwallowtailJigHarmonyChords = \chordmode{
  s8
  e2.:m s d s
  e:m s d e:m
  e:m s s s4. d
  e2.:m s d e4.:m s4
}

SwallowtailJigHarmony = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 e'8
    b4 e8 g4 e8
    b4 e8 g fis e
    a,4 d8 fis4 d8
    fis8 e fis fis e d
    \break
    b4 e8 g4 e8
    b4 e8 g4 g8
    fis e fis c4 c8
    b g g g4
  }
  \break
  \repeat volta 2{
    \partial 8 g'8
    g a a g4 r8
    g4 a8 g fis e
    g a a g4 a8
    g4 g8 fis4.
    \break
    g8 a a g4 r8
    g4 a8 g fis e
    fis4. c4 c8
    b g g g4
  }
}


\score {
  <<
    \new ChordNames \SwallowtailJigHarmonyChords 
    \new Staff { \clef treble \SwallowtailJigHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "Swallowtail Jig (Harmony)" }}
  \layout {}
  \midi {}
}
