\version "2.18.0"

OnTheCarpentersPorchChords = \chordmode{
  s4
  d1 s s s2 a:7
  d1 s s s4 a:7 d2 s4 a:7 d2
  d2. g4 s1 s2. a4:7
  s1 d4. a:7 d4 s1 g4. d a4:7 s2 d a2:7 d
}

OnTheCarpentersPorch = \relative{
  \key d \major
  \time 2/2
  \partial 4 d'8 e8
  \repeat volta 2{
    fis4 d a' d,8 fis~
    fis e (d4) b a
    fis'4 d a' d,8 fis~
    fis e (d4) e2
    fis4 d a' d,8 fis~
    fis e (d4) b a
    a b d fis
  }
  \alternative{
    {fis e d d8 (e)}
    {fis4 e d e}
  }
  \break
  \repeat volta 2{
    fis4. a4. b4~
    b8 a g a b4 b
    b4. d4. e4~
    e8 d cis d e4 e
    \break
    fis4. e4. d4~
    d8 cis b4 a fis
    g4. fis e4~
  }
  \alternative{
    {e8 d cis4 d e}
    {e8 d cis4 d2}
  }
}

\score {
  <<
    \new ChordNames \OnTheCarpentersPorchChords 
    \new Staff { \clef treble \OnTheCarpentersPorch }
  >>
  \header { piece = \markup {\fontsize #4.0 "On the Carpenter's Porch"}}
  \layout {}
  \midi {}
}
