\version "2.18.0"

PinkEyeLamentChords = \chordmode{
  s4
  d2. e:m fis:m e:m d e:m fis:m e:m
  g s e:m s g s a s a d s
  d s g s e:m s a s
  d s g s e:m s g s e:m a d s
}

PinkEyeLament = \relative{
  \key d \major
  \time 3/4
  \partial 4 a'4
  \repeat volta 2{
    a'4. a,8 a' a,
    a'4. a,8 a' a,
    a'4 g fis
    \tuplet 3/2 {e8 fis e} d4 a
    a'4. a,8 a' a,
    a'4. a,8 a' a,
    a'4 g fis
    e2 e8 fis
    g4. fis8 g a
    g4 fis e
    b2.~
    b2 e8 fis
    g4. fis8 g a
  }
  \alternative{
    {g4 fis e
     e cis b
     a g e}
    {g'4 e cis
     d2.~
     d4 r4 d8 a}
  }\bar "||"
  fis d fis a d a
  fis d fis a d a
  g d fis b d b
  d4 e fis
  g4. fis8 g a
  g4 fis e
  e cis b
  a g e \bar "||"
  fis8 d fis a d a
  fis d fis a d a
  g d fis b d b
  d4 e fis
  g4. fis8 g a
  g4 fis e
  b2.~
  b2 e8 fis
  g4. fis8 g a
  g4 e cis
  d4. a8 fis a
  d,2.
}

\score {
  <<
    \new ChordNames \PinkEyeLamentChords 
    \new Staff { \clef treble \PinkEyeLament }
  >>
  \header { piece = \markup {\fontsize #4.0 "Pink Eye Lament"}}
  \layout {}
  \midi {}
}
