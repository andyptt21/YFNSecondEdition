\version "2.18.0"

MorningDewChords = \chordmode{
  e2:m b:m e:m d e1:m b2:m d
  e2:m b:m e:m d e1:m b2:m d
  e1:m s2 d e1:m s2 d
  e1:m s2 d e:m d s1
  e1:m s2 d e1:m b2:m d
  e1:m s2 d e1:m b2:m d
}

MorningDew = \relative{
  \key d \major
  \time 2/2
  e'4.\turn b'8 \appoggiatura cis8 b a fis d
  e b' e, b' a g fis d
  e4.\turn b'8 \appoggiatura cis8 b a fis a
  b cis d b a d, fis d
  e4.\turn b'8 \appoggiatura cis8 b a fis d
  e b' e, b' a g fis d
  e4.\turn b'8 \appoggiatura cis8 b a fis a
  b cis d16 cis b8 a d, fis a
  b4 e8 b fis' b, e b
  b4 d8 b a d, fis a
  b4 e8 b fis' b, e b
  e fis g16 fis e8 d a fis a
  b4 e8 b fis' b, e b
  b4 d8 b a d, fis a
  b16 cis d8 e g fis4.\turn e8
  d cis d b a d, fis a
  b4 g8 b e, b' g b
  b4 g8 b a d, fis a
  b4 g8 b e, b' g b
  \appoggiatura cis b a b d a d, fis a
  b4 g8 b e, b' g b
  b4 g8 b a d, fis a
  b a g fis e fis g a
  b cis d b a d, fis d
}


\score {
  <<
    \new ChordNames \MorningDewChords 
    \new Staff { \clef treble \MorningDew }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Morning Dew" }}
  \layout {}
  \midi {}
}
