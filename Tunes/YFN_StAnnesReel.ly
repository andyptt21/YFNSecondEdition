
\version "2.18.0"

% -------------------------------------------------------------------------

StAnnesReel = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''4 fis''8 (g'') fis'' e'' d'' b' |
    a' b' a' g' fis' g' a' d'' |
    b'4 g' g' fis'8 (g') |
    a' b' a' g' fis' g' a' d'' |
    fis''4 fis''8 (g'') fis'' e'' d'' b' |
    a' b' a' g' fis' g' a' d'' |
    b' g' b' d'' cis'' d'' e'' cis'' |
  }
  \alternative {
    { d'' b' a' fis' d'4 d''8 (e'') }
    { d'' b' a' fis' d'4 a''8 (g'') }
  }
  \repeat volta 2 {
    fis'' a'' fis'' d'' a' d'' fis'' g'' |
    a''4 g'' g'' g''8 (fis'') |
    e'' d'' cis'' b' a' cis'' e'' g'' |
    b''4 a'' a'' a''8 (g'') |
    fis'' a'' fis'' d'' a' d'' fis'' g'' |
    a''4 g'' g'' g''8 (fis'') |
    e'' d'' cis'' b' a' cis'' e'' g'' |
  }
  \alternative {
    { fis''4 d'' d'' a''8 (g'') }
    { fis''4 d'' d''2 }
  }
}

StAnnesReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 g1 d1 s1 s1 g2 a2
  }
  \alternative {
    { d1 } { d1 }
  }
  \repeat volta 2 {
    d1 g1 a1 d1 d1 g1 a1
  }
  \alternative {
    { d1 } { d1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \StAnnesReelChords
  \new Staff { \clef treble \StAnnesReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "St. Anne's Reel"}}
  }
%}