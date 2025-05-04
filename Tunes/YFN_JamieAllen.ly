
\version "2.18.0"

% -------------------------------------------------------------------------

JamieAllen = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 g'8 a'
    b'4 g' g' a' |
    b'2 g'4 a'8 b' |
    c''4 a' a' b' |
    c'' d''8 c'' b'4 a' | 
    \break
    g' g'' g'' e'' |
    d''2 b'4. c''8 |
    d''4 d'' c''8 b' a'4 |
    \partial 4*3 g'2.
  } 
  \break
  \repeat volta 2 {
    \partial 4 b'8 a' |
    g'4 g'' g''4. fis''8 |
    e''4 d'' c'' b' |
    a' a'' a''4. g''8 |
    fis''4 d'' e'' fis'' | 
    \break
    g''4. a''8 g''4 e'' |
    d''2 b'4. c''8 |
    d''4 d'' c''8 b' a'4 |
    \partial 4*3 g'2.
  }
}

JamieAllenChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 d1:7 s1 g1 s1 d1:7
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 d1:7 s1 g1 s1 d1:7
    \partial 4*3 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \JamieAllenChords
  \new Staff { \clef treble \JamieAllen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jamie Allen"}}
  }
%}