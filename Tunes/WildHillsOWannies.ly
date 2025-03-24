\version "2.18.0"

WildHillsOWanniesChords = \chordmode{
  s4
  a2.:m s s e:m
  g s s s
  a:m s s s
  g s a:m s
  a:m s s s
  g s s s
  a:m s s s
  g s a:m s2
}

WildHillsOWannies = \relative{
  \key g \major
  \time 3/4
  \repeat volta 2 {
    \partial 4 g''8 (fis)
    e4. a,8 a4
    a4. b8 a4
    \tuplet 3/2 {e'8 fis e} d4 e
    g2 fis8 (e)
    d4. b8 g4
    \tuplet 3/2 {g8 a g} d4 g
    \tuplet 3/2 {b8 c b} g4 b
    d2 g8 (fis)
    e4. a,8 a4
    a4. b8 a4
    \tuplet 3/2 {e'8 fis e} d4 e
    a2 g8 fis
    g4. fis8 e4
    \tuplet 3/2 {d8 e d} b4 d
    e a, a
    a2
  }
  \break
  \repeat volta 2 {
    \partial 4 fis'8 g
    a4. gis8 a4
    e4. fis8 g4
    \tuplet 3/2 {a8 b a} gis4 a
    e2 e8 (fis)
    g4. fis8 g4
    d4. e8 fis4
    \tuplet 3/2 {g8 a g} fis4 g
    d2 fis8 g
    a4. gis8 a4
    e4. fis8 g4
    \tuplet 3/2 {a8 b a} gis4 a
    e2 e8 (fis)
    g4. fis8 e4
    \tuplet 3/2 {d8 e d} b4 d
    e a, a
    a2
  }
}


\score {
  <<
    \new ChordNames \WildHillsOWanniesChords 
    \new Staff { \clef treble \WildHillsOWannies }
  >>
  \header { piece = \markup {\fontsize #4.0 "Wild Hills O'Wannie's" }}
  \layout {}
  \midi {}
}
