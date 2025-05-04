
\version "2.18.0"

% -------------------------------------------------------------------------

BlairAtholl = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 e'4
    a'4 a'8 b' a' g' e' g' |
    a' b' c'' d'' e'' d'' c'' b' |
    a'4 a'8 b' a' g' e' fis' |
    g'4 b'8 g' d'' g' b' g' |
    a'4 a'8 b' a' g' e' g' |
    a' b' c'' d'' e'' c'' a'' e'' |
    g'' e'' d'' b' g' [a' b' d''] |
    \partial 4*3 c''4 a' a'
  }
  \repeat volta 2 {
    \partial 4 e''8 g'' |
    a''4 a''8 b'' a'' g'' e'' c'' |
    a' b' c'' d'' e'' c'' b' a' |
    g''4 g''8 a'' g'' e'' d'' b' |
    g' a' b' c'' d'' b' g'4 |
    a'' a''8 b'' a'' g'' e'' c'' |
    a' b' c'' d'' e'' c'' a'' e'' |
    g'' e'' d'' b' g' [a' b' d''] |
    \partial 4*3 c''4 a' a'
  }
}

BlairAthollChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 s1 g1 a1:min s1 g1
    \partial 4*3 a2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 g1 s1 a1:min s1 g1
    \partial 4*3 a2.:min
  }
}


%{
  \score {
  <<
  \new ChordNames \BlairAthollChords
  \new Staff { \clef treble \BlairAtholl }
  >>
  \header { piece = \markup {\fontsize #4.0 "Blair Atholl"}}
  }
%}