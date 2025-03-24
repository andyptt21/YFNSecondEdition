\version "2.18.0"

OldGreyCatHarmonyChords = \chordmode{
  e1:m s d s
  e:m s b:m e:m
  e:m s d s
  e:m s2 b:7 e:m b:7 e1:m
}

OldGreyCatHarmony = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    g'4 g e4. dis8
    e dis e fis g fis g a
    fis4 fis d4. cis8
    d fis b g fis d cis b
    g'4 g e4. dis8
    e dis e fis g fis g a
    b a g fis fis4 dis
    e8 dis e fis g2
  }
  \break
  \repeat volta 2{
    g4 g g4. a8
    g4 b b g
    fis fis fis4. g8
    fis4 a a fis
    g e b' e,
    c' e, dis4. c'8
    b4 c8 b g fis g a
    g2 g
  }

}


\score {
  <<
    \new ChordNames \OldGreyCatHarmonyChords 
    \new Staff { \clef treble \OldGreyCatHarmony }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Grey Cat (Harmony)" }}
  \layout {}
  \midi {}
}
