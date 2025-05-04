
\version "2.18.0"

% -------------------------------------------------------------------------

OverTheWaterfall = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 d''8 e''
    fis''4 a''8 (fis'') g'' fis'' e'' cis''( |
    d'' e'') d'' b' (a' b') d'' e'' |
    fis''4 a''8 (fis'') g'' fis'' e''4 |
    e''8 (fis''4) e''8 (fis'' e'') d'' e'' | \break
    fis''4 a''8 (fis'') g'' fis'' e'' cis''( |
    d'' e'') d'' b' (a'4) a'8 (b' |
    c''4) c'' b' a' |
    \partial 4*3 g'2.
  } \break
  \repeat volta 2 {
    \partial 4 fis'8 g' |
    a'4 a' b'8 (a') b' (d'') |
    a' b' a' g' (fis'4) fis'8 g' |
    a'4 d'' cis''8 d'' e''4 |
    e''8 (fis''4) e''8 (fis''4) fis'8 g' | \break
    a'4 a' b'8 (a') b' (d'') |
    a' b' a' g' (fis'4) fis'8 g' |
    a'4 a' g'8 fis' e'4 |
    \partial 4*3 d'2.
  }
}

OverTheWaterfallChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d2 a2 d1 s2 a2 d1 s2 a2 d1 c1
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d2 g2 d1 s2 a2 d1 s2 g2 d1 s2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \OverTheWaterfallChords
  \new Staff { \clef treble \OverTheWaterfall }
  >>
  \header { piece = \markup {\fontsize #4.0 "Over The Waterfall"}}
  }
%}
