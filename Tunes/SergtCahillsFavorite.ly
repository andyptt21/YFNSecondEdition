\version "2.18.0"

SergtCahillsFavoriteChords = \chordmode{
  g2. s a:m g4. c
  g2. s e4.:m d g2.
  g s g4. d g e:m
  g2. s e4.:m d g2.
}

SergtCahillsFavorite = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    d'4 e8 g4 a8
    b4 d8 d b g
    b4 c8 a4 b8
    g4 a8 b g e
    d4 e8 g4 a8
    b4 d8 d b g
    b4. a4 b8
    g4.~ g4 r8
  }
  \break
  \repeat volta 2 {
    g'4 d8 e4 d8
    g4 d8 e4 d8
    b4. a4 b8
    g4 a8 b g e
    d4 e8 g4 a8
    b4 d8 d b g
    b4. a4 b8
    g4.~ g4 r8
  }
}


\score {
  <<
    \new ChordNames \SergtCahillsFavoriteChords 
    \new Staff { \clef treble \SergtCahillsFavorite }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sergt. Cahill's Favorite" }}
  \layout {}
  \midi {}
}
