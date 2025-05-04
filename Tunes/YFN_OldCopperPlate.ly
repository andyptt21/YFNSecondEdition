
\version "2.18.0"

% -------------------------------------------------------------------------

OldCopperPlate = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    a'4 e'8 (a') c'' (a') a'4 |
    a''8 g'' e'' d'' c'' a' fis' a' |
    g'4_\prall d'8 (g') b' (g') g'4 |
    g''8 e'' d'' c'' b' a' g' b' | \break
    a'4_\prall e'8 (a') c'' (a') a'4 |
    a''8 g'' e'' d'' c''4 b'_\prall |
    a'8 b' c'' d'' e'' fis'' g'' e'' |
    a'' g'' e'' d'' c'' (a') a'4_\prall
  } \break
  \repeat volta 2 {
    a''8 g'' e'' g'' a''4 a''8 (b'') |
    a'' g'' e'' d'' c'' (a') a'4_\prall |
    g''8 fis'' e'' fis'' g''4 g''8 (a'') |
    g'' e'' d'' c'' b' (g') g'4_\prall |
    a''8 g'' e'' g'' a''4 a''8 (b'') |
    a'' g'' e'' d'' c''4 b'\prall |
    a'8 b' c'' d'' e'' fis'' g'' e'' |
    a'' g'' e'' d'' c'' (a') a'4_\prall
  }
}

OldCopperChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1:min s1 g1 s1 a1:min s1 s1 g2 a2:min
  } \break
  \repeat volta 2 {
    a1:min s1 g1 s1 a1:min s1 s1 g2 a2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \OldCopperChords
  \new Staff { \clef treble \OldCopperPlate }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Copper Plate"}}
  }
%}
