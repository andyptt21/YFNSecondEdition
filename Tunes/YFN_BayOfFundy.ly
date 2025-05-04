
\version "2.18.0"

% -------------------------------------------------------------------------


BayOfFundy = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''8 a'' a'' b'' a'' fis'' d'' fis'' |
    a'' fis'' b'' fis'' a'' fis'' d'' fis'' |
    fis'' g'' g'' a'' g'' e'' c'' e'' |
    g'' e'' a'' e'' g'' e'' c'' e'' | 
    \break
    fis'' a'' a'' b'' a'' fis'' d'' fis'' |
    a'' fis'' b'' fis'' a'' fis'' d'' fis'' |
    g'' fis'' e'' g'' fis'' [e'' d'' b'] |
    \partial 4*3 a' [cis'' e'' cis''] d''4
  } \break
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {a'8 (b' cis''} |
    d'') d'' fis'' d'' e'' d'' fis'' d'' |
    b' b' g'' b' fis'' b' e'' b' |
    cis'' d'' e'' fis'' g'' fis'' e'' d'' | 
    \break
    cis'' a' e'' a' fis'' a' e'' a' |
    d'' d'' fis'' d'' e'' d'' fis'' d'' |
    b' b' g'' b' fis'' b' e'' b' |
    cis'' d'' e'' fis'' g'' [fis'' e'' d''] |
    \partial 4*3 cis'' [a' b' cis''] d''4
  }
}

BayOfFundyChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 c1 s1 d1 s1 g2 d2
    \partial 4*3 a2 d4
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 a1 s1 d1 g1 a1
    \partial 4*3 s2 d4
  }
}

%{
\score {
  <<
    \new ChordNames \BayOfFundyChords
    \new Staff { \clef treble \BayOfFundy }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Bay of Fundy"}
    opus = \markup {\fontsize #3.0 "Bill Guest" }
  }
}
%}
