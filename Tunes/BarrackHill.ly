\version "2.18.0"

BarrackHillChords = \chordmode{
  a2.:m e:m a:m g
  a2.:m e:m g a:m
  a:m s g s
  a:m s g a:m
}

BarrackHill = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    e''4 a,8 a a a
    e'4 d8 b4.
    e4 a,8 a a a
    g4 a8 b4.
    \break
    e4 a,8 a a a
    e'4 d8 b4.
    d4 b8 g'4 b,8
    a4. a
  }
  \break
  \repeat volta 2 {
    e'4 d8 e fis g
    a4 fis8 g fis e
    d4 b8 g'4 b,8
    d4 b8 d4.
    \break
    e4 d8 e fis g
    a4 fis8 g fis e
    d4 b8 g'4 b,8
    a4. a
  }
}


\score {
  <<
    \new ChordNames \BarrackHillChords 
    \new Staff { \clef treble \BarrackHill }
  >>
  \header { piece = \markup {\fontsize #4.0 "Barrack Hill" }}
  \layout {}
  \midi {}
}
