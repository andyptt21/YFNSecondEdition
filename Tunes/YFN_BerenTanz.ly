
\version "2.18.0"

% -------------------------------------------------------------------------

BerenTanz = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    e''4 a' a' a' |
    e'' a' a' a'8 b' |
    c''4 c'' b' b' |
    d'' d'' c'' d'' |
    e'' a' a' a' |
    e'' a' a' a'8 b' | 
    \break
    c''4 c'' b'8 a' g'4 |
    a'1
  }
  \repeat volta 2 {
    a'8 b' c''4 a'8 b' c''4 |
    d'' g' g' g' |
    a'8 b' c''4 a'8 b' c''4 | 
    \break
    d''2. c''8 d'' |
    e''4 e'' d'' d'' |
    c'' c'' b' b' |
    a' a' b'8 a' g'4 |
    a'1
  }
}

BerenTanzChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1:min s1 s1 g1 a1:min s1 s2 e2:min a1:min
  }
  \repeat volta 2 {
    a1:min g1 a1:min g1 a2:min g2 a2:min e2:min a2:min e2:min a1:min
  }
}

%{
\score {
  <<
    \new ChordNames \BerenTanzChords
    \new Staff { \clef treble \BerenTanz }
  >>
  \header { piece = \markup {\fontsize #4.0 "Beren Tanz"}}
}
%}