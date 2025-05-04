
\version "2.18.0"

% -------------------------------------------------------------------------

ShenandoahFalls = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 2 r4 fis''8 g''
    a''4 a''8 b'' a'' g'' fis''4 |
    d''8 e'' fis''4 g''2 |
    fis''4 d''8 fis'' e'' d'' cis'' d'' |
    e'' d'' cis'' b' a'4 fis''8 g'' | \break
    a''4 a''8 b'' a'' g'' fis''4 |
    d''8 e'' fis''4 g''2 |
    fis''8 e'' d'' fis'' e'' d'' cis''4 |
    \partial 2 d''2
  } \break
  \repeat volta 2 {
    \partial 2 fis''8 e'' d''4 |
    b'2 e'' |
    b'4 d''8 e''~ e'' d'' b'4 |
    d''2 fis''4 d''8 e'' |
    fis'' d'' e'' fis''~ fis'' e'' d''4 | \break
    b'2 e'' |
    b'4 d''8 e''~ e''4 a''8 g'' |
    fis''4 fis''8 e''~ e'' d'' cis''4 |
    \partial 2 d''2
  }
}

ShenandoahFallsChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 2 s2
    d1 s2 g2 d1 s2 a2 d1 s2 g2 d2 a2
    \partial 2 d2
  }
  \repeat volta 2 {
    \partial 2 s2
    e1:min s1 d1 s1 e1:min s1 d2 a2
    \partial 2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \transpose d a, \ShenandoahFallsChords
  \new Staff { \clef treble \transpose d a, \ShenandoahFalls }
  >>
  \header { piece = \markup {\fontsize #4.0 "Shenandoah Falls (A major)"}}
  }
%}
