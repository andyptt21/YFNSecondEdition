
\version "2.18.0"

% -------------------------------------------------------------------------

BonaparteCrossingRockies = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    a'4 a'8 b' a' g' e' g' |
    c'' d'' e'' c'' d''4 e''8 g'' |
    a'' g'' e'' d'' c'' a' g' e' |
    g'4 g'8 a' g'4 c''8 b' | \break
    a'4 a'8 b' a' g' e' g' |
    c'' d'' e'' c'' d''4 e''8 g'' |
    a'' g'' e'' d'' c'' a' b' g' |
  }
  \alternative {
    { a'4 a'8 b' a'4 c''8 b' }
    { a'4 a'8 b' a'4 e''8 g'' }
  } \break
  \repeat volta 2 {
    a'' g'' e'' d'' cis'' d'' e'' g'' |
    a'' g'' e'' cis'' d''4 e''8 g'' |
    a'' g'' e'' d'' c'' a' g' e' |
    g'4 g'8 a' g'4 c''8 b' | \break
    a'4 a'8 b' a' g' e' g' |
    c'' d'' e'' c'' d''4 e''8 g'' |
    a'' g'' e'' d'' c'' a' b' g' |
  }
  \alternative {
    { a'4 a'8 b' a'4 e''8 g'' }
    { a'4 a'8 b' a'2 }
  }
}

BonaparteCrossingRockiesChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1:min c2 g2 a1:min g1 a1:min c2 g2 a2:min g2
  }
  \alternative {
    { a1:min } { a1:min }
  }
  \repeat volta 2 {
    a1 s2 g2 a1:min g1 a1:min c2 g2 a2:min g2
  }
  \alternative {
    { a1:min } { a1:min }
  }
}

%{
\score {
  <<
    \new ChordNames \BonaparteCrossingRockiesChords
    \new Staff { \clef treble \BonaparteCrossingRockies }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bonaparte Crossing the Rocky Mountains"}}
}
%}