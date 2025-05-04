
\version "2.18.0"

% -------------------------------------------------------------------------

RightsOfMan = {
  \time 4/4
  \key g \major
  \partial 4 g'8 a'
  \repeat volta 2 {
    b'8 c'' a' b' g' a' fis' g' |
    e' fis' g' a' b'4 e''8 fis'' |
    g'' fis'' e'' d'' e'' d'' b' d'' |
    c'' b' a' g' a'4 g'8 a' |
    b' c'' a' b' g' a' fis' g' |
    e' fis' g' a' b'4 e''8 fis'' |
    g'' fis'' e'' d'' b' g'' fis'' g'' |
  }
  \alternative {
    { e''4 e' e'2 }
    { e''4 e''8 d'' e''4 g''8 a'' }
  }
  \repeat volta 2 {
    b'' g'' b'' g'' e'' fis'' g'' a'' |
    b'' g'' b'' g'' e'' g'' fis'' e'' |
    d''4 d''8 c'' d'' e'' fis'' g'' |
    a'' fis'' d'' fis'' a''4 g''8 fis'' |
    e'' d'' e'' fis'' g''4 g''8 a'' |
    b'' g'' a'' fis'' g'' fis'' e'' fis'' |
    g'' fis'' e'' d'' b' g'' fis'' g'' |
  }
  \alternative {
    { e''4 e' e' g''8 a'' }
    { e''4 e' e' g'8 a' }
  }
}

RightsOfManChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    e4:min d4 g4 d4 e1:min g2 e2:min d1
    e4:min d4 e2:min s1 g2 c4 d4
  }
  \alternative {
    { e1:min } { e1:min }
  }
  \repeat volta 2 {
    g1 e1:min d1 s1
    e1:min g4 d4 e2:min c2 d2
  }
  \alternative {
    { e1:min } { e1:min }
  }
}

%{
  \score {
  <<
  \new ChordNames \RightsOfManChords
  \new Staff { \clef treble \RightsOfMan }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rights of Man"}}
  }
%}
