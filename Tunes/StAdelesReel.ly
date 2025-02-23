\version "2.18.0"

StAdelesReelChords = \chordmode{
  s4
  g1 s d g
  s s d g4 d g2 g4 d g2
  d1 s a d
  s s a d d
  
}

StAdelesReel = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    \partial 4 d''4
    g g8 fis g d c a
    b g a fis g a b c
    d b c a b g a fis
    g a b c d4 \tuplet 3/2 { d8 e fis }
    g4 g8 fis g d c a
    b g a fis g a b c
    d b c a b g a fis    
  }
  \alternative{
    {g b a fis g4 d'}
    {g,8 b a fis g4 fis8 g}
  }
  \break
  \key d \major
  \repeat volta 2 {
    a b a fis a4 d8 e
    fis e fis g fis4 fis8 g
    a fis g e fis d e cis
    d e fis d a4 fis8 g
    a b a fis a4 d8 e
    fis e fis g fis4 fis8 g
    a fis g e fis d e cis
  }
  \alternative{
    { d2 d4 fis,8 g }
    {d'4 a d, \tuplet 3/2 {d'8 e fis}}
  }
}


\score {
  <<
    \new ChordNames \StAdelesReelChords 
    \new Staff { \clef treble \StAdelesReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "St Adele's Reel"}}
  \layout {}
  \midi {}
}
