\version "2.18.0"

EbenezerChords = \chordmode{
  s4
  g1 s s d
  s s s g
  g s s s
  d s s g g2.
}

Ebenezer = \relative{
  \key g \major
  \time 4/4
  \partial 4 b'8 c
  \repeat volta 2 {
    d b d (b) g4 b8
    (c d) b d (b) g4 b8
    (c d4) g (fis) g
    a4. b8 (a4) a,8 b
    c (b a) g (fis g) a b
    c (b a) g (fis g) a a
    g' (fis e) d (b d) a
    fis (g4) g8 (fis g4) b8 c
  }
  \break
  \repeat volta 2{
    d4 g g8 fis (g4)
    b4. a8 b4 b,8 c
    d4 g g8 fis (g4)
    b4. a8 b4 fis8 g
    a g b g a g e
    (g a g) b g a g e fis
    g (fis e) d (b a) fis d
  }
  \alternative{
    {g4 g8 (fis g4) b8 c}
    {\partial 2. g2.}
  }
}


\score {
  <<
    \new ChordNames \EbenezerChords 
    \new Staff { \clef treble \Ebenezer }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ebenezer" }}
  \layout {}
  \midi {}
}
