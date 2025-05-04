
\version "2.18.0"

% -------------------------------------------------------------------------

TemperanceReel = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {d'8 (e' fis')}
    g'4 g'8 fis' g' a' b' c'' |
    d'' b' g'' e'' d'' b' a' c'' |
    b' e' e' d' e' fis' g' a' |
    b' g' a' fis' g' fis' e' fis' | \break
    g'4 g'8 (fis') g' a' b' c'' |
    d'' b' g'' e'' d'' b' a' c'' |
    b' e' e' d' e' [fis' g' a'] |
    \partial 4*3 b' [g' a' fis'] g'4
  } \break
  \repeat volta 2 {
    \partial 4 a'4
    b'8 e'' e'' d'' e''4 e''8 (fis'') |
    g'' e'' a'' fis'' g'' fis'' e'' d'' |
    b' cis'' d'' e'' d''4 e''8 (fis'') |
    g'' e'' a'' fis'' g'' fis'' e'' d'' | \break
    b'4 e''8 d'' e''4 e''8 fis'' |
    g'' e'' a'' fis'' g'' fis'' e'' d'' |
    b' e' e' d' e' [fis' g' a'] |
    \partial 4*3 b' [g' a' fis'] g'4
  }
}

TemperanceReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 e1:min d1 g1 s1 e1:min
    \partial 4*3 d2 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    e1:min s1 d1 s1 e1:min s1 s1
    \partial 4*3 d2 g4
  }
}

%{
  \score {
  <<
  \new ChordNames \TemperanceReelChords
  \new Staff { \clef treble \TemperanceReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Temperance Reel"}}
  }
%}
