
\version "2.18.0"

% -------------------------------------------------------------------------

SwallowtailReel = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 g''8 (fis'')
    e''8 a'( \tuplet 3/2 {c'' b' a')} e'' a'( \tuplet 3/2 {c'' b' a')} |
    c'' d'' e'' fis'' g'' e'' d'' b' |
    \tuplet 3/2 {g'8 g' g'} b' g' (d' g') b' g' |
    b' d'' e'' fis'' g''4 \turn (g''8) fis'' | \break
    e''8 a'( \tuplet 3/2 {c'' b' a')} e'' a'( \tuplet 3/2 {c'' b' a')} |
    c'' d'' e'' fis'' g''4 fis''8 (g'' |
    a'' fis'') g'' e'' d'' [b' g' b'] |
    \partial 4*3 a' [c'' b' g'] a'4
  } \break
  \repeat volta 2 {
    \partial 4 c''8 (d'') |
    e'' a''16 a'' a''8 (g'') a'' b'' a'' g'' |
    e'' d'' e'' fis'' (g'' e'') d'' b' |
    g'4 b'8 g' d' (g') b' g' |
    b' d'' e'' fis'' (g''4) fis''8 g'' | \break
    e'' a''16 a'' a''8 g'' (a'' b'') a'' g'' |
    e'' d'' e'' fis'' (g''4) fis''8 g'' ( |
    a'' fis'') g'' e'' d'' [b' g' b'] |
    \partial 4*3 a' [c'' b' g'] a'4
  }
}

SwallowtailReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 g1 s1 a1:min s1 g1
    \partial 4*3 a2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    a1:min s1 g1 s1 a1:min s1 g1
    \partial 4*3 a2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \SwallowtailReelChords
  \new Staff { \clef treble \SwallowtailReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Swallowtail Reel"}}
  }
%}
