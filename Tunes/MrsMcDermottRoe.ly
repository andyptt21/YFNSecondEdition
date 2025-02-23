\version "2.18.0"

MrsMcDermottRoeChords = \chordmode{
  a1:min s g s
  e:min b a:min s
  a:min e:min g e:min
  a:min e:min g a:min
  
}

MrsMcDermottRoe = \relative{
  \key e \minor
  \time 2/2
  \repeat volta 2 {
    a''4 e e fis8 (gis)
    a4 e e fis
    g d d e8 (fis)
    g2 d
    \acciaccatura d16 e4 fis g a
    b a a8 g fis g
    a4 e e d
    c8 (d c b a2)
  }
  \break

  \repeat volta 2 {
    a4 b8 d e2
    e4 d b (e)
    g,4 a8 b g'2
    g4 b, g (b)
    a b8 c a'2
    \appoggiatura { g16 a } b4 a g e
    e d g b,
    a8 b a g a2
  }
}


\score {
  <<
    \new ChordNames \MrsMcDermottRoeChords 
    \new Staff { \clef treble \MrsMcDermottRoe }
  >>
  \header { piece = \markup {\fontsize #4.0 "Mrs. McDermott Roe"}}
  \layout {}
  \midi {}
}
