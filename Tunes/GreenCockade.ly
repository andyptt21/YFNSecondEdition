\version "2.18.0"

GreenCockadeChords = \chordmode{
  d2. s g4. e a2.
  d2. s g4. e a4. d
  a2. d e4.:m e a2.
  d s g4. e a4. d
}

GreenCockade = \relative{
  \key d \major
  \time 6/8
  \repeat volta 2 {
    d'4 fis8 a4 d8
    fis fis d a4 fis8
    g fis g e'4 d8
    cis\prall b a g fis e
    d4 fis8 a4 d8
    \break
    fis fis d a4 fis8
    g fis g e'4 d8
    cis\prall b cis d4.
  }

  \repeat volta 2 {
    e4 cis8 a4 e'8
    fis fis d a4 fis'8
    \break
    g4 fis8 e4 d8
    cis\prall b a g fis e
    d4 fis8 a4 d8
    fis fis d a4 fis8
    g fis g e'4 d8
    cis\prall b cis d4.
  }
}


\score {
  <<
    \new ChordNames \GreenCockadeChords 
    \new Staff { \clef treble \GreenCockade }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Green Cockade" }}
  \layout {}
  \midi {}
}
