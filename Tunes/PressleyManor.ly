\version "2.18.0"

PressleyManorChords = \chordmode{
  a4
  d2 a d1 g e2:m a
  d a d g d g4 a d2.
  a4 d2 a d1 g a2:sus4 a
  d a d g a g4 a d2.

}

PressleyManor = \relative{
  \key d \major
  \time 4/4
  \partial 4 a4
  \repeat volta 2{
    d a'8 d, g fis e d
    d4 a a d8 a'
    a4 d b a8 g
    a2~ a4 a,
    d a'8 d, g fis e d
    a'4. a8 b4 a8 g
    a4 a8 d d4 cis
    d2 d4
  }
  \repeat volta 2 {
    \partial 4 fis8 g
    a4. fis8 g fis e cis
    d4 d, d a'
    b4. a8 a4 d8 e
    e2~ e4 fis8 g
    a4. fis8 g fis e cis
    d4 a8 fis g4 fis8 g
    a4 a8 d d4 cis
    d2 d4
  }

}

\score {
  <<
    \new ChordNames \PressleyManorChords 
    \new Staff { \clef treble \PressleyManor }
  >>
  \header { piece = \markup {\fontsize #4.0 "Pressley Manor"}}
  \layout {}
  \midi {}
}
