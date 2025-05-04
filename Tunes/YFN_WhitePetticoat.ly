
\version "2.18.0"

% -------------------------------------------------------------------------

WhitePetticoat = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8 a'8
    b'8 e'' d'' |
    c'' b' a' |
    g' fis' e' |
    b e' g' |
    fis' b' b' |
    c'' b' b' |
    e'' b' b' |
    c'' b' a' | \break
    b' e'' d'' |
    c'' b' a' |
    g' fis' e' |
    b e' g' |
    fis' b' b' |
    c'' [b' a'] |
    \partial 8*5 g' [e' e'] e'4
  } \break
  \repeat volta 2 {
    \partial 8 g''8 |
    g'' e'' c'' |
    g' c'' e'' |
    g'' a'' fis'' |
    g'' e'' c'' |
    c'' b' a' |
    e' a' c'' |
    b' e'' dis'' |
    e'' b' g' | \break
    fis' b' b' |
    g' b' b' |
    fis' b' a' |
    g' fis' e' |
    b e' g' |
    c'' [b' a'] |
    \partial 8*5 g' [e' e'] e'4
  }
}

WhitePetticoatChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    e2.:min s2. b2. s2.
    e2.:min s2. b2.
    \partial 8*5 e4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    c2. s2. a2.:min e2.:min
    b2. s2. s2.
    \partial 8*5 e4.:min s4
  }
}

%{
  \score {
  <<
  \new ChordNames \WhitePetticoatChords
  \new Staff { \clef treble \WhitePetticoat }
  >>
  \header { piece = \markup {\fontsize #4.0 "The White Petticoat"}}
  }
%}
