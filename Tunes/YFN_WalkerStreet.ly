
\version "2.18.0"

% -------------------------------------------------------------------------

WalkerStreet = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 d'4
    g'4 b'8 g' d'' g' b' g' |
    a' b' c'' d'' c'' b' a' g' |
    b' d'' g'' d'' e'' g'' d'' b' |
    c'' b' a' g' fis' a' d' fis' | \break
    g'4 b'8 g' d'' g' b' g' |
    a' b' c'' d'' c'' b' a' g' |
    b' d'' g'' d'' e'' [g'' d'' b'] |
    \partial 4*3 c'' [a' fis' d'] g'4
  } \break
  \repeat volta 2 {
    \partial 4 e''8 fis''
    g''4 d''8 g'' b' g'' d'' g'' |
    g'' a'' b'' g'' a'' g'' e'' fis'' |
    g''4 d''8 g'' b' g'' d'' b' |
    c'' b' a' g' fis' a' a' fis'' | \break
    g''4 d''8 g'' b' g'' d'' g'' |
    g'' a'' b'' g'' a'' g'' e'' fis'' |
    g'' fis'' g'' a'' g'' [fis'' e'' d''] |
    \partial 4*3 e'' [g'' fis'' a''] g''4
  }
}

WalkerStreetChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 c1 g1 d1 g1 c1 g1
    \partial 4*3 d2 g4
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 s1 d1 g1 s1 c1
    \partial 4*3 d2 g4
  }
}

%{
  \score {
  <<
  \new ChordNames \WalkerStreetChords
  \new Staff { \clef treble \WalkerStreet }
  >>
  \header { piece = \markup {\fontsize #4.0 "Walker Street / Madame Bolduc"}}
  }
%}