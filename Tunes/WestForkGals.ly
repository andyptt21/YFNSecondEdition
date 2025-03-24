\version "2.18.0"

WestForkGalsChords = \chordmode{
  d1 g a s
  d g a s2 d
  d1 s a s
  s d s2 a d1 d1
}

WestForkGals = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    fis''4. (e8) d4 e8
    (fis g fis) g4 b,^\markup { \null { (Em) }} fis'
    (e4.) d8 (cis4) a
    d8^\markup { \null { (D) }} b (a) g fis e (d4)
    \break
    fis'4. (e8) d4 e8
    (fis g4) g b,2^\markup { \null { (Em) }}
    e4. d8 (cis4) a
    a8 b (cis a) d2
  }
  \break
  \repeat volta 2{
    a4. g8 (fis4.) a8
    a4 (d) fis,4. fis8
    (g d) fis4 e < e a >
    g8 (d) fis4 e < e a >
    e'8 fis (e) d (cis a) b
    (cis d4) a fis a
    d fis e8 (fis) g e
    
  }
  \alternative{
    {fis4 a,8 cis d4. b8}
    {fis'4 a,8 cis d4 r}
  }

}


\score {
  <<
    \new ChordNames \WestForkGalsChords 
    \new Staff { \clef treble \WestForkGals }
  >>
  \header { piece = \markup {\fontsize #4.0 "West Fork Gals" }}
  \layout {}
  \midi {}
}
