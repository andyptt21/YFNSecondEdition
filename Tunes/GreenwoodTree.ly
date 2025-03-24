\version "2.18.0"

GreenwoodTreeChords = \chordmode{
  s4
  d2. s g d
  s s s a
  d s g d
  s s d2 a4:7 d2.
  g s s d
  s s s a:7
  d s g d
  s s d2 a4:7 d2
}

GreenwoodTree = \relative{
  \key d \major
  \time 3/4
  \partial 4 a'4
  fis' fis e
  d2 cis8 d
  b2 cis8 b
  a4 fis fis8 (g)
  a4 a8 b a fis
  a4 d e
  fis4. e8 d4
  e2 a,4
  fis' fis e
  d2 cis8 d
  b2 cis8 b
  a4 fis fis8 (g)
  a4 a8 b a fis
  a4 d e
  fis4. g8 e cis
  \partial 2 d2 \bar "||"
  \break
  \partial 4 fis,4
  b2 b8 cis
  d4 d fis,
  d'2 cis8 b
  a4 fis fis8 (g)
  a4 a8 b a fis
  a4 d e
  fis4. e8 d4
  e2 a,4
  fis' fis e
  d2 cis8 d
  b2 cis8 b
  a4 fis fis8 (g)
  a4 a8 b a fis
  a4 d e
  fis4. g8 e cis
  \partial 2 d2 \bar "||"
}


\score {
  <<
    \new ChordNames \GreenwoodTreeChords 
    \new Staff { \clef treble \GreenwoodTree }
  >>
  \header { piece = \markup {\fontsize #4.0 "Greenwood Tree" }}
  \layout {}
  \midi {}
}
