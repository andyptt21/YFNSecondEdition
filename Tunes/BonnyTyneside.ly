\version "2.18.0"

BonnyTynesideChords = \chordmode{
  s4
  d2. s s s
  s s e:m a:7
  d s s s
  s s a:7 d
  d s s s
  s s e:m a:7
  d s s s
  s s a:7 d2
}

BonnyTyneside = \relative{
  \key d \major
  \time 3/4
  \partial 4 fis''8. (e16)
  d4. e8 d4
  d fis, g
  a4. g8 a4
  a2 a8 (a)
  d4. cis8 d4
  d e fis
  e d b
  a2 fis'8. (e16)
  d4. e8 d4
  d fis, g
  a4. b8 a4
  a2 \tuplet 3/2 {a8 b cis}
  d4 d e
  fis8 a4. fis4
  e4. d8 e4
  \partial 2 d2 \bar "||"
  \break
  \partial 4 fis8 (g)
  a2 fis8 g
  a2 fis8 g
  a4 b fis
  a2 fis8 (e)
  d4. e8 d4
  d e fis
  e d b
  a2 fis'8. (e16)
  d4. e8 d4
  d fis, g
  a4. b8 a4
  a2 \tuplet 3/2 {a8 b cis}
  d4 d e
  fis8 a4. fis4
  e4. d8 e4
  \partial 2 d2 \bar "||"
}


\score {
  <<
    \new ChordNames \BonnyTynesideChords 
    \new Staff { \clef treble \BonnyTyneside }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bonny Tyneside" }}
  \layout {}
  \midi {}
}
