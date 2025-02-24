\version "2.18.0"

MerrilyKissTheQuakersWifeChords = \chordmode{
  g2. c4. g s s d s g s c g s d g s
  g s c s g s d s g s c s g d g s
  g d g s c s d s g d c g c d g s
}

MerrilyKissTheQuakersWife = \relative{
  \key g \major
  \time 12/8
  \repeat volta 2 {
    g'8 a b d, e g c b a b a g
    g a b d, e g a4 a8 a g a
    g a b d, e g c b a b a g
    g a b d,4 d8 g4. g4
  }
  \break
  \repeat volta 2 {
    \partial 8 a8
    b g g a g g b g g a g e
    g a b d, e g a4 a8 a g a
    b g g a g g b g g a g e
    g a b d,4 e8 g4. g4
  }
  \break
  \repeat volta 2 {
    \partial 8 d'8
    g4 g8 a g a b g e d b d
    g4 g8 g a b a4. a8 g a
    g b g fis a fis e g e d b a
    g a b d,4 e8 g4. g
  }
}


\score {
  <<
    \new ChordNames \MerrilyKissTheQuakersWifeChords 
    \new Staff { \clef treble \MerrilyKissTheQuakersWife }
  >>
  \header { piece = \markup {\fontsize #4.0 "Merrily Kiss The Quakers Wife"}}
  \layout {}
  \midi {}
}
