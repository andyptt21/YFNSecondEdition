
\version "2.18.0"

% -------------------------------------------------------------------------

BlackNag = {
  \time 6/8
  \key c \major
  
  \repeat volta 2 {
    \partial 8 e'8
    a'8 e' a' b' a' b' |
    c'' b' c'' b' c'' d'' |
    e'' d'' c'' b' c'' b' |
    a'4 e'8 a'4 e'8 | 
    \break
    a' e' a' b' a' b' |
    c'' b' c'' b' c'' d'' |
    e'' d'' c'' b' [c'' b'] |
    \partial 8*5 a'4 e'8 a'4 
    \break
  }

  \repeat volta 2 {
    \partial 8 a'8 |
    b' g' e' b' g' e' |
    b' g' e' b' g' e' |
    e'' c'' a' e'' c'' a' |
    e'' c'' a' e'' c'' a' | 
    \break
    b' g' e' b' g' e' |
    b' g' e' b' c'' d'' |
    e'' d'' c'' b' [c'' b'] |
    \partial 8*5 a'4 e'8 a'4
  }
}

BlackNagChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    a4.:min e4.:min a4.:min e4.:min a4.:min e4.:min
    a2.:min s4. e4.:min a4.:min e4.:min a4.:min e4.:min
    \partial 8*5 a4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    e2.:min s2. a2.:min s2. e2.:min s2. a4.:min e4.:min
    \partial 8*5 a4.:min s4
  }
}

%{
\score {
  <<
    \new ChordNames \BlackNagChords
    \new Staff { \clef treble \BlackNag }
  >>
  \header { piece = \markup {\fontsize #4.0 "Black Nag"}}
}
%}
