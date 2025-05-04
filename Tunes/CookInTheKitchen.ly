\version "2.18.0"

CookInTheKitchenChords = \chordmode{
  g2. f g d
  g f s4. d g2.
  g d c d
  g d f4. d g2.
  d s f4. d g f
  d2. s f4. d g2.
}

CookInTheKitchen = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    d'8 g g g a g
    f d e f4 f8
    d8 g g g a g
    a4 d8 c a g
    \break
    d8 g g g a g
    f d e f4 d'8
    c a g fis g a
    b g g g4.
  }
  \break
  \repeat volta 2 {
    b4 b8 b a g
    g a g a g fis
    g4 g8 g fis g
    a4 c8 c a g
    \break
    b4 b8 b a g
    g a g a4 d8
    c a g fis g a
    b g g g4.
  }
  \break
  \repeat volta 2 {
    d'4 e8 fis4 g8
    a4 g8 fis e d
    c a g fis g a
    b d b c a g
    \break
    d'4 e8 fis4 g8
    a4 g8 fis e d
    c a g fis g a
    b g g g4.
  }
}


\score {
  <<
    \new ChordNames \CookInTheKitchenChords 
    \new Staff { \clef treble \CookInTheKitchen }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Cook In The Kitchen" }}
  \layout {}
  \midi {}
}
