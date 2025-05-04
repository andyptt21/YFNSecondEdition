
\version "2.18.0"

% -------------------------------------------------------------------------

FlowersOfEdinburgh = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 g'8 e'
    d'4 \tuplet 3/2 {d'8 (e' fis')} g'4 g'8 a' |
    b' g' b' d'' c'' b' a' g' |
    fis' g' e' fis' d' e' fis' g' |
    a' fis' d'' fis' e'4 \tuplet 3/2 {g'8 (fis' e')} |
    d'4 d'8 e' g'4 g'8 a' |
    b' g' b' d'' e'' fis'' g'' e'' |
    d'' c'' b' a' g' [fis' g' a'] |
    \partial 4*3 b'4 g' g'
  }
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {d''8 (e'' fis'')} |
    g''4 a''8 g'' g'' b'' a'' g'' |
    fis''4 fis''8 e'' fis'' a'' g'' fis'' |
    e'' d'' e'' fis'' g'' fis'' e'' d'' |
    b'4 e''8 d'' e'' g'' fis'' d'' |
    d'' b' g' b' d''4 \tuplet 3/2 {b'8 (c'' d'')} |
    e'' d'' e'' fis'' g''4 fis''8 e'' |
  }
  \alternative {
    {
      d'' c'' b' a' g' [fis' g' a'] |
      \partial 4*3 b'4 g' g'
    }
    {
      d''8 b' d'' e'' fis'' [d'' fis'' a''] |
      \partial 4*3 b''4 g'' g''
    }
  }
}

FlowersOfEdinburghChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 d1 s1 g1 s2 c2 g2 d2:7
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 d1 c1 e1:min g1 c1
  }
  \alternative {
    { d1 \partial 4*3 g2. }
    { g2 d2 \partial 4*3 g2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \FlowersOfEdinburghChords
  \new Staff { \clef treble \FlowersOfEdinburgh }
  >>
  \header { piece = \markup {\fontsize #4.0 "Flowers Of Edinburgh"}}
  }
%}
