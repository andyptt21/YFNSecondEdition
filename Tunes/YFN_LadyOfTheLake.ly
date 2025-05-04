
\version "2.18.0"

% -------------------------------------------------------------------------

LadyOfTheLake = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    % \partial 4 s4
    g8 b d' g' b' a' g' b' |
    d'' b' g' a' b' a' g' b' |
    c''4 c''8 b' a' g' fis' g' |
    a' g' fis' e' d' c' b a | \break
    g b d' g' b' a' g' b' |
    d'' b' g' a' b' a' g' b' |
    c''4 c''8 b' a' [g' fis' e'] |
    \partial 4*3 d' [g' fis' a'] g'4 |
  } \break
  \repeat volta 2 {
    \partial 4 b'8 c''
    d'' c'' b' d'' g''4 g''8 b' |
    c'' b' a'4 a''2 |
    fis''4. g''8 fis''4 fis''8 d'' |
    e'' d'' cis''4 d'' b'8 c'' | \break
    d'' c'' b' d'' g''4 g''8 b' |
    c'' b' a'4 a''2 |
    fis''8 e'' d'' b' c'' [a' fis' d'] |
    \partial 4*3 g'4 b' g'
  }
}

LadyOfTheLakeChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    % \partial 4 s4
    g1 s1 c1 d1:7
    g1 s1 c1
    \partial 4*3 d2:7 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 d1:7 s1 a2:7 d2:7
    g1 d1:7 s1 \partial 4*3 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \LadyOfTheLakeChords
  \new Staff { \clef treble \LadyOfTheLake }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lady of the Lake"}}
  }
%}
