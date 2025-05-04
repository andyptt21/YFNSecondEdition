
\version "2.18.0"

% -------------------------------------------------------------------------

Liberty = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4
    d''8 e''8
    fis''4 a' fis'' a' |
    fis''8 g'' fis'' e'' d''4 e''8 (fis'') |
    g''4 b' g'' b' |
    g''8 a'' g'' fis'' e''4 fis''8 (g'') |
    fis''4 a' fis'' a' | \break
    fis''8 g'' fis'' e'' d''4 fis'' |
    e''8 fis'' e'' d'' cis'' [a' b' cis''] |
    \partial 4*3
    d''4 fis'' d''
  }
  \repeat volta 2 {
    \partial 4
    s4 |
    a'4. b'8 a' g' fis' e' |
    d' fis' a' (d'') fis''4 d'' |
    a'4. (b'8 a') g' fis'4 |
    e'4. (fis'8 e'2) |
    a'4. b'8 a' g' fis' e' |
    d' fis' a' (d'') fis''2 |
    e''8 fis'' e'' d'' cis'' [a' b' cis''] |
    \partial 4*3
    d''4 fis'' d''
  }
}

LibertyChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4
    s4
    d1 s1 g1 a1:7 d1 s1 a1:7
    \partial 4*3
    d2.
  }
  \repeat volta 2 {
    \partial 4
    s4
    d1 s1 s1 a1:7 d1 s1 a1:7
    \partial 4*3
    d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \LibertyChords
  \new Staff { \clef treble \Liberty }
  >>
  \header { piece = \markup {\fontsize #4.0 "Liberty"}}
  }
%}
