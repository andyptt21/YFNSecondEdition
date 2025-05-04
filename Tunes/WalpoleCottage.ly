\version "2.18.0"

WalpoleCottageChords = \chordmode{
  e1:min s a2 e:m a2 a:7
  d1 s g d
  g d e:min a:7
  d s g d
  g d e2:min a:7 d1
  b:min fis b2:min fis b:min e:7
  a e:7 a d a e:7 a1
  g d g fis
  b:min a2 d a e:7 a a:7
  d1 a:7 b:min d
  g d e:min a:7
  d a:7 b:min fis:min
  g d e2:m a:7 d1
}

WalpoleCottage = \relative{
  \key d \major
  \time 4/4
  e''4. fis8 g4^\markup { \null { Intro }} fis
  e  d cis b
  a r e' r
  \partial 2 a r \bar "||"

  \partial 2 a,4.^\markup { \null { Repeat starts here }} g8
  fis4 a fis a
  fis a d4. cis8
  b4. d8 cis4 b
  a2. a4
  b4. d8 cis4 b
  a d fis a
  a g2 fis4
  e2. a,8 g
  fis4 a fis a
  fis a d4. cis8
  b4. d8 cis4 b
  a2. a4
  b4. d8 cis4 b
  a d fis a
  fis d e cis
  \partial 2. d2. \bar "||"

  \partial 4 fis,4
  b4. cis8 d4 cis8 b
  cis4 fis2 e4
  d b cis ais
  b2. b4
  cis4. d8 e4 d
  cis4 a b d
  cis a b gis
  a2. a4
  b4. cis8 d4 cis8 b
  a4 fis2 a4
  b4. cis8 d4 e
  fis2. e4
  d4. e8 fis4 e8 d
  e4 a fis d
  cis a b gis
  \partial 2 a2 \bar "||"

  \partial 2 a'4. g8
  fis4. e8 fis4 d
  e cis a b8 cis
  d4. cis8 d4 b
  a2. a4
  b4. a8 b4 g
  fis a d e
  fis a g fis
  e2. a,4
  fis'4. e8 fis4 d
  e cis a b8 cis
  d4. cis8 d4 b
  a2. a4
  b4. cis8 d4 b
  a d fis a
  fis d e cis
  d1-"D.C." \bar "||"
  
}


\score {
  <<
    \new ChordNames \WalpoleCottageChords 
    \new Staff { \clef treble \WalpoleCottage }
  >>
  \header { piece = \markup {\fontsize #4.0 "Walpole Cottage"}}
  \layout {}
  \midi {}
}
