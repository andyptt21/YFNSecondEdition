\version "2.18.0"

LovelyMollyChords = \chordmode{
  d1 s2 a d1 s2 c
  d1 s2 a d1 s2 e:min d2 a:min
  e2.:min s8 d8 e2.:min s8 d8 e2.:min s8 d8 b2:min a2
  e2.:min s8 d8 e2.:min s8 d8 e2.:min s8 d8 d2 a:min d2 e:min
}

LovelyMolly = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    b'4 a8 fis d e fis a
    b (d) a d b d e fis
    d b a fis d e fis a
    b (d) a b fis4 e8 a
    b4 a8 fis d e fis a
    b (d) a d b d e fis
    d b a fis d e fis a
    
  }
  \alternative{
    {b (d) a b fis e e4}
    {b'8 (d) a b fis e e4}
  }
  \break

  \repeat volta 2 {
    b'-"<D-chord strongly on the last half-beat>" e8 d b d d b
    b4 e8 fis g fis e d
    b4 e8 d b d e fis
    d b a fis fis4 e8 a
    b4 e8 d b d d a
    b4 e8 fis g fis g a
    b4 a g fis8 e
  }
    \alternative{
    {b8 d a fis fis e e4}
    {b'8 d a fis fis e e4}
  }
}


\score {
  <<
    \new ChordNames \LovelyMollyChords 
    \new Staff { \clef treble \LovelyMolly }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lovely Molly"}}
  \layout {}
  \midi {}
}
