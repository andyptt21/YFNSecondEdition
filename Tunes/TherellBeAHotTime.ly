\version "2.18.0"

TherellBeAHotTimeChords = \chordmode{
  a1 s s s
  a s e a
}

TherellBeAHotTime = \relative{
  \key a \major
  \time 4/4
  cis''4 cis cis4. c16 cis
  d8 cis c cis a e a cis
  e4 e e4. dis16 e
  fis8 e dis e cis e, fis a
  cis4 cis cis4. cis8
  d cis c cis a a gis a
  cis b4 e,16 e cis'8 b4 e,8
  \partial 4 a4-"fine"
  \partial 2. e fis a
}


\score {
  <<
    \new ChordNames \TherellBeAHotTimeChords 
    \new Staff { \clef treble \TherellBeAHotTime }
  >>
  \header { piece = \markup {\fontsize #4.0 "There'll Be a Hot Time in the Old Town Tonight"}}
  \layout {}
  \midi {}
}
