\version "2.18.0"

DoubleLeadThroughChords = \chordmode{
  g2 d g1 c2 d:7 g1
  d s s2 a d1 a:7 d:7
  g d g2 c d1
  e2:min c g1 c2 g c2 d:7 d:7 g
  
}

DoubleLeadThrough = \relative{
  \key g \major
  \time 4/4
  \repeat volta 2 {
    g''4 d c a
    g g g8^\markup { \null { (Em) }} a b g
    e4 e fis d
    g1
  }
  \break
  \repeat volta 2 {
    a4. d8 cis4 d
    a4. d8 cis4 d
  }
  \alternative{
    {a4. d8 e4 a,
     fis'1}
    {a,4 g' fis e
     d c b a}
  }
  \break
  \repeat volta 2{
    g4 g g8 a b g
    a4 a a8 b c a
    b c d4 c8 d e4
    e d d e8 fis
    g4 g g8 fis e4
    d d d8 c b4
    a8 b c4 b8 c d4
  }
  \alternative{
    {e8 g fis e d c b a}
    {e'4 fis g2}
  }
}


\score {
  <<
    \new ChordNames \DoubleLeadThroughChords 
    \new Staff { \clef treble \DoubleLeadThrough }
  >>
  \header { piece = \markup {\fontsize #4.0 "Double Lead Through"}}
  \layout {}
  \midi {}
}
