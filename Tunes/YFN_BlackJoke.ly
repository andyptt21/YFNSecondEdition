
\version "2.18.0"

% -------------------------------------------------------------------------

BlackJoke = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8 e'8
    d'4 g'8 g' fis' g' |
    a' c'' b' a' g' a' |
    b' c'' d'' d'' c'' b' |
    a' c'' b' a' g' fis' |
    g'4. e' |
    \partial 8*5 d'8 [e' fis'] g'4
  } 
  \break

  \partial 8 a'8
  b'4 d''8 d'' b' d'' |
  e''4 e''8 d''4 c''8 |
  b'4 d''8 d'' b' d'' |
  e''4 e''8 d''4 c''8 |
  b'4 b'8 b' a' g' | 
  \break
  a' c'' b' a' g' a' |
  b' c'' d'' d'' c'' b' |
  a' c'' b' a' g' fis' |
  g'4. e' |
  \partial 8*5 d'8 [e' fis'] g'4
}

BlackJokeChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    g2. c4. d4. g4. e4.:min a4.:min d4. g4. c4.
    \partial 8*5 d4. g4
  }

  \partial 8 s8
  g2. c4. d4. g2. c4. d4. g2. c4. d4. g2. c4. d4. g4. c4.
  \partial 8*5 d4. g4
}

%{
\score {
  <<
    \new ChordNames \BlackJokeChords
    \new Staff { \clef treble \BlackJoke }
  >>
  \header { piece = \markup {\fontsize #4.0 "Black Joke"}}
}
%}
