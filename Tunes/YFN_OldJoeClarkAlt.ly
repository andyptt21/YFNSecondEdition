
\version "2.18.0"

% -------------------------------------------------------------------------

OldJoeClarkAlt = {
  \time 4/4
  \key a \major
  \repeat volta 2 {
    e''4 fis'' g'' fis'' |
    e''4 cis''8 b' a'2 |
    e''4 e''8 fis'' g''4 fis'' |
    e''2 e''2 | \break
    e''4 fis'' g'' fis'' |
    e''4 cis''8 b' a'2 |
    a'4 cis'' b'8 a' g'4
    a'2 a'2
  } \break
  \repeat volta 2 {
    a'4 a'4 a'8 b' cis'' d'' |
    e'' fis'' e'' d'' cis'' b' a'4 |
    a'4 a'8 b' cis'' b' a'4 |
    <g' b'>2 <g' b'>2 | \break
    a'4 a'4 a'8 b' cis'' d'' |
    e'' fis'' e'' d'' cis'' b' a'4 |
    cis''8 b' a' cis'' b' a' g'4 |
    a'2 a'2
  }
}

OldJoeClarkChordsAlt = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1 s1 s1 e1 a1 s1 s2 g2 a1
  }
  \repeat volta 2 {
    a1 s1 s1 g1 a1 s1 s2 g2 a1
  }
}

%{
  \score {
  <<
  \new ChordNames \OldJoeClarkChordsAlt
  \new Staff { \clef treble \OldJoeClarkAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Joe Clark (Alt)"}}
  }
%}