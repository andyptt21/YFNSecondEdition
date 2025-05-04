
\version "2.18.0"

% -------------------------------------------------------------------------

SwinginOnAGate = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 e''8 fis'' (
    g''8 e'') d'' b' g'4 a'8 b' |
    c'' (a') b' g' a' g' (e' g') |
    d' g' b' d'' g''4 g'' |
    fis''8 g'' a'' g'' fis'' d'' e'' fis'' ( | \break
    g'' e'') d'' b' g'4 a'8 b' |
    c'' (a') b' g' a' g' (e' g') |
    c'' a' b' g' a' [g' (e' g')] |
    \partial 4*3 d' [g' g' fis'] (g'4)
  } \break
  \repeat volta 2 {
    \partial 4 e''8 fis'' (
    g'' fis'') g'' a'' (b'' a'') g'' fis'' ( |
    g'' fis'') e'' d'' e'' d'' (c'' b') |
    e'4 a'8 (b' c'' b') a' g' |
    e' g' a' b' c'' d'' e'' fis'' ( | \break
    g'' fis'') g'' a'' (b'' a'') g'' fis'' ( |
    g'' fis'') e'' d'' e'' d'' (c'' b') |
    c'' a' b' g' a' [g' (e' g')] |
    \partial 4*3 d' [g' g' fis'] (g'4)
  }
}

SwinginOnAGateChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 a1:min g1 d1 g1 a1:min s1
    \partial 4*3 d2 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 e1:min a1:min s2 d2 g1 e1:min c2 a2:min
    \partial 4*3 d2 g4
  }
}

%{
  \score {
  <<
  \new ChordNames \SwinginOnAGateChords
  \new Staff { \clef treble \SwinginOnAGate }
  >>
  \header { piece = \markup {\fontsize #4.0 "Swingin On A Gate"}}
  }
%}
