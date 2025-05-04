
\version "2.18.0"

% -------------------------------------------------------------------------

StarOfMunster = {
  \time 4/4
  \key g \major
  \partial 4 e''8 d''
  \repeat volta 2 {
    c''4 a'8 c'' b'4 b'8 g' |
    a' g' e' fis' g' e' d'4 |
    e'8 a' a' b' c'' b' c'' d'' |
    e'' a'' a'' fis'' g'' fis'' e'' d'' |
    c'' a' \tuplet 3/2 {a' a' a'} b' a' g' b' |
    a' g' e' fis' g' e' d' b |
    e' a' a' b' c'' d'' e'' d''
  }
  \alternative {
    { c''8 a' b' g' a'4 e''8 d'' }
    { c''8 a' b' g' a'2 }
  }
  \repeat volta 2 {
    e''8 a'' a'' b'' a'' g'' e'' g'' |
    a'' g'' b'' g'' a'' g'' e'' fis'' |
    g'' fis'' g'' a'' g'' e'' d'' fis'' |
    g'' e'' a'' fis'' g'' fis'' e'' d'' |
    e'' a'' a'' b'' a'' g'' e'' g'' |
    a'' g'' b'' g'' a'' g'' e'' fis'' |
    g''4 g''8 e'' a''4 g''8 a'' |
  }
  \alternative {
    { b''4 b''8 a'' g'' fis'' e'' d'' }
    {
      b''4 b''8 a'' g'' [a'' b'' g''] |
      \partial 4*3 a''2.
    }
  }
}

StarOfMunsterChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    a2:min g2 a2:min g2 a1:min g1 a2:min g2 a2:min g2 a1:min
  }
  \alternative {
    { g2 a2:min } { g2 a2:min }
  }
  \repeat volta 2 {
    a1:min s1 g1 s1 a1:min s1 g1
  }
  \alternative {
    { g1 }
    {
      g1 |
      \partial 4*3 a2.:min
    }
  }
}

%{
  \score {
  <<
  \new ChordNames \StarOfMunsterChords
  \new Staff { \clef treble \StarOfMunster }
  >>
  \header { piece = \markup {\fontsize #4.0 "Star Of Munster"}}
  }
%}
