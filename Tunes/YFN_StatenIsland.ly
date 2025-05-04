
\version "2.18.0"

% -------------------------------------------------------------------------

StatenIsland = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a'8 (g')
    fis'8 d' fis' a' d''4 b'8 (cis'') |
    d'' e'' fis'' e'' d'' cis'' b' a' |
    b'4 g'8 b' a'4 fis'8 a' |
    g'4 e' e' a'8 (g') |
    fis' d' fis' a' d''4 b'8 (cis'') |
    d'' e'' fis'' e'' d'' cis'' b' a' |
    d'' cis'' d'' fis'' e'' [fis'' g'' e''] |
    \partial 4*3 fis''4 d'' d''
  }
  \repeat volta 2 {
    \partial 4 fis''8 (g'') |
    a''4 fis''8 a'' g''4 e''8 g'' |
    fis'' e'' d'' fis'' e'' cis'' b' a' |
    c''4 c'' e''8 fis'' g'' e'' |
    c''4 c'' e''8 fis'' g'' e'' |
    a'' g'' fis'' a'' g'' fis'' e'' g'' |
    fis'' e'' d'' fis'' e'' cis'' b' a' |
    d'' cis'' d'' fis'' e'' [fis'' g'' e''] |
    \partial 4*3 fis''4 d'' d''
  }
}

StatenIslandChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g2 d2 a1 d1 s1 d2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d2 a2 d2 a2 c1 s1 d2 a2 d2 a2 d2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \StatenIslandChords
  \new Staff { \clef treble \StatenIsland }
  >>
  \header { piece = \markup {\fontsize #4.0 "Staten Island"}}
  }
%}
