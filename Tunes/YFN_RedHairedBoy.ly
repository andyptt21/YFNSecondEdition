
\version "2.18.0"

% -------------------------------------------------------------------------

RedHairedBoy = {
  \time 4/4
  \key a \major
  \repeat volta 2 {
    \partial 4 a'8 fis'
    e'4 a' a'8 b' cis'' d'' |
    e'' fis'' e'' cis'' d''4 cis''8 (d'') |
    e'' d'' cis'' b' a' b' cis'' a' |
    b' a' e' fis' g'4. fis'8 | \break
    e'4 a' a'8 b' cis'' d'' |
    e'' fis'' e'' cis'' d''4 cis''8 (d'') |
    e''4 a''8 (gis'') a'' [fis'' e'' d''] |
    \partial 4*3 cis''4 a' a'
  } \break
  \repeat volta 2 {
    \partial 4 e''8 (fis'')
    g'' fis'' e'' fis'' g'' fis'' e'' fis'' |
    g'' fis'' e'' cis'' d''4 cis''8 (d'') |
    e'' d'' cis'' b' a' b' cis'' a' |
    b' a' e' fis' g'4. fis'8 | \break
    e'4 a' a'8 b' cis'' d'' |
    e'' fis'' e'' cis'' d''4 cis''8 (d'') |
    e''4 a''8 (gis'') a'' [fis'' e'' d''] |
    \partial 4*3 cis''4 a' a'
  }
}

RedHairedBoyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    a1 s2 d2 a1 g1 a1 s2 d2 a1
    \partial 4*3 e2 a4
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s2 d2 a1 g1 a1 s2 d2 a1
    \partial 4*3 e2 a4
  }
}

%{
  \score {
  <<
  \new ChordNames \RedHairedBoyChords
  \new Staff { \clef treble \RedHairedBoy }
  >>
  \header { piece = \markup {\fontsize #4.0 "Red-Haired Boy"}}
  }
%}
