\version "2.18.0"

WesternCountryChords = \chordmode{
  d1 s s s
  s s a d
  d g d a
  d g a d d
}

WesternCountry = \relative{
  \key d \major
  \time 4/4
  \repeat volta 2 {
    fis''4 d e8 d (b4)
    d8 (b a4) fis g
    (a) a b8 d4.
    e8 (fis4) g8 (fis4) e
    \break
    fis8 e d fis (e) d (b4)
    d8 (b a4) fis fis8
    (g a4) a b8 cis4.
    d e8 (d2)
  }
  \break
  \repeat volta 2{
    a8 b (a) g fis g a4
    b4. cis8 (b4) cis8
    (b a) b (a) g fis d fis d
    e4. fis8 (e4) fis8
    (g a) b (a) g fis g a4
    b4. cis8 (b4) cis8
    (b a b) cis d e g (fis e)
  }
  \alternative{
    {d (b a) fis (d4) fis8 g}
    {d' (b a) fis (d4) r4}
  }

}


\score {
  <<
    \new ChordNames \WesternCountryChords 
    \new Staff { \clef treble \WesternCountry }
  >>
  \header { piece = \markup {\fontsize #4.0 "Western Country" }}
  \layout {}
  \midi {}
}
