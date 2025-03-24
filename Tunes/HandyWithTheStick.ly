\version "2.18.0"

HandyWithTheStickChords = \chordmode{
  s8
  e4.:m a:m e2.:m g e4.:m a:m
  e4.:m a:m e2.:m g e:m
  g s a:m d
  g4. d e2.:m g e4.:m s4
}

HandyWithTheStick = \relative{
  \key g \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 g'16 (a)
    b8 e d c b a
    g e g b g e
    d e g g a b
    e d b c b a
    b e d c b a
    g e g b g e
    d e g g a b
    b e dis e4
  }
  \break
  \repeat volta 2 {
    \partial 8 e16 (fis)
    g8 d b g b d
    g a fis g d b
    c a a e a a
    c e d c b a
    \break
    g b b a c c
    g b a b fis e
    d e g g a b
    b e dis e4
  }
}


\score {
  <<
    \new ChordNames \HandyWithTheStickChords 
    \new Staff { \clef treble \HandyWithTheStick }
  >>
  \header { piece = \markup {\fontsize #4.0 "Handy With The Stick" }}
  \layout {}
  \midi {}
}
