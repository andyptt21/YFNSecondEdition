\version "2.18.0"

KeshJigHarmonyChords = \chordmode{
  g2. d:7 g s4. d:7
  g2. d:7 g d4.:7 g
  g2. c4. g g2. d:7
  g2. c4. g s d:7 g2.
}

KeshJigHarmony = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    b8 d b b4 d8
    fis e fis fis4 d8
    g4 b8 b4 g8
    g4 g8 fis d c
    b d b b4 d8
    fis e fis fis4 d8
    g4 b8 b g d
    c4 c8 b4 d8
  }
  \break
  \repeat volta 2{
    g fis g b g b
    c e c b g fis
    g fis g b g e
    d4 fis8 fis e d
    g fis g b g b
    c e c b g a
    b a b c b c
    d b c d4.
  }
}


\score {
  <<
    \new ChordNames \KeshJigHarmonyChords 
    \new Staff { \clef treble \KeshJigHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "Kesh Jig (Harmony)" }}
  \layout {}
  \midi {}
}
