\version "2.18.0"

SelingersRoundChords = \chordmode{
  d2.:7 e:m a4.:m d:7 g2.
  d2.:7 e:m a4.:m d:7 g2.
  g d s a4.:m d g d c d e:m a:7 d2. d
}

SelingersRound = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    d''4. d8 e fis
    g4. g8 a b
    a4 g8 fis e fis
    g4. g8 fis e
    d4. d8 e fis
    g4. g8 a b
    a4 g8 fis e fis
    g4.~ g4 a8
  }
  \break
  \repeat volta 2 {
    b4 b8 b a g
    a4.~ a4 g8
    fis g a a g fis
    e4. a4 fis8
    g a g fis4 d8
    e fis g fis4 d8
    e4 d8 cis b cis
  }
  \alternative{
    {d4. fis8 g a}
    {d,4. g8 fis e}
  }
}


\score {
  <<
    \new ChordNames \SelingersRoundChords 
    \new Staff { \clef treble \SelingersRound }
  >>
  \header { piece = \markup {\fontsize #4.0 "Selinger's Round" }}
  \layout {}
  \midi {}
}
