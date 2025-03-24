\version "2.18.0"

BonnieDundeeChords = \chordmode{
  s8
  g2. c4. g4 d8:7 g2. d:7
  g2. c4. g4 d8:7 g4. d:7 g2.
  g4. e:m d2. d:7 g
  s4. c g:7 c g d:7 g4. s4
}

BonnieDundee = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 b'16 c
    d8 e d d e d
    g fis e d4 c8
    b16 d8. d,8 b'16 d8. d,8
    a' b a a4 b16 c
    d8 e d d e d
    g fis e d4 c8
    b16 d8. d,8 b'16 d8. d,8
    g16 a8. g8 g4
  }
  \break
  \repeat volta 2 {
    \partial 8 d8
    g g g g c b
    a d, d d4.
    a'8 a a a b c
    c b b b4 g16 a
    b8 a b c b c
    d c d e4 d16 c
    b16 d8. d,8 b'16 d8. d,8
    g16 a8. g8 g4
  }
}


\score {
  <<
    \new ChordNames \BonnieDundeeChords 
    \new Staff { \clef treble \BonnieDundee }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bonnie Dundee" }}
  \layout {}
  \midi {}
}
