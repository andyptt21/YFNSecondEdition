
\version "2.18.0"

% -------------------------------------------------------------------------

ReelSaintAntoine = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    \partial 4 e''4
    a''4 a''8 a''~ a'' e'' cis'' e'' |
    a''4 a''8 a''~ a'' e'' cis'' e'' |
    a'' gis'' fis'' e'' d'' cis'' b' a' |
    gis' a' b' cis'' d'' e'' fis'' gis'' | \break
    a''4 a''8 a''~ a'' e'' cis'' e'' |
    a''4 a''8 a''~ a'' e'' cis'' e'' |
    a'' gis'' fis'' e'' d'' [cis'' b' a'] |
    \partial 4*3 gis' [a' b' gis'] a'4
  } \break
  \repeat volta 2 {
    \partial 4 a'8 b' |
    cis''4 cis''8 cis''~ cis'' b' cis'' e'' |
    d'' cis'' b' a' gis' a' b' cis'' |
    d''4 d''8 d''~ d'' cis'' d'' fis'' |
    e'' d'' cis'' b' a' a' e' a' | \break
    cis''4 cis''8 cis''~ cis'' b' cis'' e'' |
    d'' cis'' b' a' gis' a' b' cis'' |
    d'' e'' fis'' gis'' a'' [fis'' e'' d''] |
    \partial 4*3 cis'' [a' b' gis'] a'4
  }
}

ReelSaintAntoineChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 s1 e1 a1 s1 s1
    \partial 4*3 e2 a4
  }
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 d1 e1 a1 s1 d1
    \partial 4*3 e2 a4
  }
}

%{
  \score {
  <<
  \new ChordNames \ReelSaintAntoineChords
  \new Staff { \clef treble \ReelSaintAntoine }
  >>
  \header { piece = \markup {\fontsize #4.0 "Reel Saint-Antoine"}}
  }
%}
