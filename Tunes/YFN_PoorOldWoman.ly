
\version "2.18.0"

% -------------------------------------------------------------------------

PoorOldWoman = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    \partial 4 e''8 d'' |
    c''4 b'8 c'' a' b' b' a' |
    g' e' g' a' g' b' c'' d'' |
    e'' d'' c'' b' a' b' c'' d'' |
    e''4 a' a'8 f'' e'' d'' | \break
    c''4 b'8 c'' a' c'' b' a' |
    g' e' g' a' g' b' c'' d'' |
    e'' g'' fis'' a'' g'' [e'' d'' b'] |
    \partial 4*3
    a'4 a' a'
  } \break
  \repeat volta 2 {
    \partial 4  e''8 fis'' |
    g''4 g''8 a'' g'' e'' d'' b' |
    a'4 a' a' c''8 d'' |
    g''4 g''8 a'' g'' e'' d'' c'' |
    b' c'' a' b' g'4 b'8 g' | \break
    a' e' a' c'' a' c'' b' a' |
    g' e' g' a' g' b' c'' d'' |
    e'' g'' fis'' a'' g'' [e'' d'' b'] |
    \partial 4*3
    a'4 a' a'
  }
}

PoorOldChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1:min g1 a1:min s1
    s1 g1 a2:min e2
    \partial 4*3 a2.:min
  } \break
  \repeat volta 2 {
    \partial 4 s4
    c1 a1:min c1 g1
    a1:min g1 a2:min e2
    \partial 4*3 a2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \PoorOldChords
  \new Staff { \clef treble \PoorOldWoman }
  >>
  \header { piece = \markup {\fontsize #4.0 "Poor Old Woman"}}
  }
%}
