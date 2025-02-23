\version "2.18.0"

OldTempleHouseChords = \chordmode{
  e1:min d e:min b2:min e:min
  e1:min d c b2:min e:min
  g2 a d1 e2:min b:min a1:min
  e2:min a d b:min e:min a:min d e:min
}

OldTempleHouse = \relative{
  \key g \major
  \time 2/2
  \repeat volta 2 {
    e'4-> e-> b'8 e, g e
    d4-> d-> a'8 d, fis d
    e8 fis g a b4 b8 a
    b d b a b e, e4
    e4-> e-> b'8 e, g e
    d4-> d-> a'8 d, fis d
    e8 fis g a b4 b8 a
    b d b a b e, e4
  }

  \break

  \repeat volta 2 {
    g' d8 g g4 e8 g
    fis4 d8 fis fis d d fis
    g fis e g fis g a fis
    e4 \acciaccatura fis16 e8 d e2
    g8 fis e fis g fis e g
    fis4 d8 fis fis d d fis
    e fis g e a4 g8 e
    d4 b8 d e4 e
  }

}


\score {
  <<
    \new ChordNames \OldTempleHouseChords 
    \new Staff { \clef treble \OldTempleHouse }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Old Temple House"}}
  \layout {}
  \midi {}
}
