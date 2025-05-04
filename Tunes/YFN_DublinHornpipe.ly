
\version "2.18.0"

% -------------------------------------------------------------------------

DublinHornpipe = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 d'4
    g'8 d' b d' g' d' b d' |
    g' fis' g' b' d''4 b'8 d'' |
    c'' b' a' g' fis' g' a' fis' |
    g' a' b' g' d'4 d' |
    g'8 d' b d' g' d' b d' | 
    \break
    g' fis' g' b' d''4 b'8 d'' |
    c'' b' a' g' fis' [g' a' fis'] |
    \partial 4*3 g'4 g' g'
  }
  \repeat volta 2 {
    \partial 4 b'8 c'' |
    d''4 b'8 g' d''4 b'8 g' |
    c'' b' a' g' fis' g' a' b' |
    c''4 a'8 c'' b' a' g' fis' |
    g' a' b' c'' d''4 (d'') |
    d'' b'8 g' d''4 b'8 g' |
    c'' b' a' g' fis' g' a' b' |
    c''4 c''8 b' c'' [e'' d'' c''] |
    \partial 4*3 b' [a' g' fis'] g'4
  }
}

DublinHornpipeChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 d1 g2 d2:7 g1 s1 a2:min d2:7
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 c2 a2:min a2:min d2:7 g2 d2 g1 c1 s2 a2:min
    \partial 4*3 d2:7 g4
  }
}

%{
\score {
  <<
    \new ChordNames \DublinHornpipeChords
    \new Staff { \clef treble \DublinHornpipe }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dublin Hornpipe"}}
}
%}
