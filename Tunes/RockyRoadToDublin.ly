\version "2.18.0"

RockyRoadToDublinChords = \chordmode{
  a1 s c s
  a s a2 e a1
  a s c s
  a s c a
}

RockyRoadToDublin = \relative{
  \key d \major
  \repeat volta 2{
    %% A section
    e''4 e8 d cis4 cis8 b
    a8 b a g e c d b
    c8 d e f g e g e
    c d e f g4 e'4
    e4 e8 d cis4 cis8 b
    a8 b a g e d e g
    a4 a b8 a b d
    cis8 a a g a2
  }
  \break
  \repeat volta 2{
    %% B section
    e8 d e g a b a g
    e d e g a4 e
    e8 d e fis g a g fis
    e d e fis g4 e
    e8 d e g a b a g
    e d e g a4 e
    e8 d e fis g fis e d
    cis4 a a2
  }
}

\score {
  <<
    \new ChordNames \RockyRoadToDublinChords 
    \new Staff { \clef treble \RockyRoadToDublin }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Rocky Road to Dublin"}}
  \layout {}
  \midi {}
}
