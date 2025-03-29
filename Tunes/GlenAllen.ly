\version "2.18.0"

GlenAllenChords = \chordmode{
  s4
  g1 s a:m d
  g s c d2 g
  g1 s a:m d
  e:m s c d2 g
}

GlenAllen = \relative{
  \key g \major
  \time 4/4
  \repeat volta 2 {
    \partial 4 d'8 e
    g4 d8 g e g d e
    g4 b8 g a g e g
    a4 e8 a fis a e a
    a b c d e d b a
    g4 d8 g e g d e
    g4 b8 g a g e g
    c b c d e fis g e
    d b a b g4
    
  }
  \repeat volta 4 {
    \partial 4 b8 d
    g4 d8 g e g d e
    g4 b8 g a g e g
    a4 e8 a fis a e a
    a4 b8 g a g fis e
    g4 d8 g e g d e
    g4 b8 g a g e d
    c b c d e fis g e
    d b a b g4
  }
}


\score {
  <<
    \new ChordNames \GlenAllenChords 
    \new Staff { \clef treble \GlenAllen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Glen Allen" }}
  \layout {}
  \midi {}
}
