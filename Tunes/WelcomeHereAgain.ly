\version "2.18.0"

WelcomeHereAgainChords = \chordmode{
  d1 s s s2 a
  d1 s s2 a d1
  d1 e2:m e a1 s
  d1 g2 e a1 d
}

WelcomeHereAgain = \relative{
  \key d \major
  \time 2/2
  \repeat volta 2 {
    d'4. e8 d4 d'
    a fis a d
    d,4. e8 d4 d'
    a  fis e8 g fis e
    d4. e8 d4 d'
    a fis a d
    fis d e fis
    d d8 cis d2
  }

  \break

  \repeat volta 2 {
    fis4 d d e8 fis
    g4 \tuplet 3/2 {fis8 g fis} e4 d
    cis a e' a,
    cis a e' a,
    fis' d d e8 fis
    g4 \tuplet 3/2 {fis8 g fis} e4 d
    cis d e fis
    d d8 cis d2
  }

}


\score {
  <<
    \new ChordNames \WelcomeHereAgainChords 
    \new Staff { \clef treble \WelcomeHereAgain }
  >>
  \header { piece = \markup {\fontsize #4.0 "Welcome Here Again"}}
  \layout {}
  \midi {}
}
