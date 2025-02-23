\version "2.18.0"

ShellBeComingChords = \chordmode{
  s4
  d2 s s s
  d s a:7 s
  d d:7 g e:min
  a a:7 s d4
  
}

ShellBeComing = \relative{
  \key d \major
  \time 2/4
  \partial 4 a'8 b
  d d d d
  b a fis a
  d2~
  d4 d8 e
  fis fis fis fis
  a fis e d
  e2~
  e4 a8 g
  fis fis fis fis
  e d d d
  b b b b
  e d cis b
  a a cis e
  fis e d cis
  d2~
  \partial 4 d4
}


\score {
  <<
    \new ChordNames \ShellBeComingChords 
    \new Staff { \clef treble \ShellBeComing }
  >>
  \header { piece = \markup {\fontsize #4.0 "She'll Be Comin' Round the Mountain When She Comes "}}
  \layout {}
  \midi {}
}
