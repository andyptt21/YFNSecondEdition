\version "2.18.0"

IllBuyBootsForMaggieChords = \chordmode{
  a2:m s e:m s
  a:m s e:m a:m
  a:m s s s
  s s e:m a:m
}

IllBuyBootsForMaggie = \relative{
  \key c \major
  \time 2/4
  \repeat volta 2 {
    a'8. b16 c8 d
    e g g a
    e8. e16 d8 b
    a b g4
    a8. b16 c8 d
    e g g a
    e8. e16 d8 b
    b a a4
  }
  \break
  \repeat volta 2{
    e'8 a a b
    c b a e
    e a a b
    c b a4
    e8 a a b
    c b a e
    e8. e16 d8 b
    b a a4
  }
}


\score {
  <<
    \new ChordNames \IllBuyBootsForMaggieChords 
    \new Staff { \clef treble \IllBuyBootsForMaggie }
  >>
  \header { piece = \markup {\fontsize #4.0 "I'll Buy Boots for Maggie" }}
  \layout {}
  \midi {}
}
