
\version "2.18.0"

% -------------------------------------------------------------------------

FatherKellys = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 g'8 a'
    b'4 g'8 b' a' g' e' g' |
    d' g' g' fis' g'4 a'8 b' |
    c''4 a'8 b' c'' b' a' g' |
    e' g' a' g' fis' d' g' a' | \break
    b'4 g'8 b' a' g' e' g' |
    d' g' g' fis' g'4 b'8 c'' |
    d''4 b'8 d'' g'' [d'' b' d''] |
    \partial 4*3 c'' [a' fis' a'] g'4
  } \break
  \repeat volta 2 {
    \partial 4 b'8 c'' |
    d''4 b'8 d'' g'' d'' b' d'' |
    d''4 b'8 d'' g'' d'' b' d'' |
    e''4 c''8 e'' a'' g'' fis'' e'' |
    d'' e'' fis'' g'' a'' g'' fis'' e'' | \break
    d''4 b'8 d'' g'' d'' b' d'' |
    d''4 b'8 d'' g'' d'' b' d'' |
    c''4 [d''8 c''] b' [a' g' b'] |
    \partial 4*3 a' [g' e' fis'] g'4
  }
}

FatherKellysChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 a1:min c2 d2 g1 s1 c1
    \partial 4*3 d2 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 a1:min d1 g1 s1 c1
    \partial 4*3 d2 g4
  }
}


%{
  \score {
  <<
  \new ChordNames \FatherKellysChords
  \new Staff { \clef treble \FatherKellys }
  >>
  \header { piece = \markup {\fontsize #4.0 "Father Kelly's"}}
  }
%}
