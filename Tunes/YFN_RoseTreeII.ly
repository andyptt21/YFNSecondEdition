
\version "2.18.0"

% -------------------------------------------------------------------------

RoseTreeII = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 fis''8 (e'')
    d''4. a'8 fis'4 a' |
    d'' d''8 (cis'') d'' e'' fis'' d'' |
    e''4 d'' cis'' d'' |
    e'' (fis'') g'' \tuplet 3/2 { e''8 (fis'' g'' } | \break
    a''4) g''8 (fis'') e''4 cis'' |
    d''8 e'' d'' cis'' a'4 fis' |
    g' b' a'8 [b' a' g'] |
    \partial 4*3 fis'4 d' d'
  } \break
  \repeat volta 2 {
    \partial 4 d''8 (e'') |
    fis''4 fis''8 fis'' fis''4 fis'' |
    g'' g''8 g'' g''4 d''8 (e'') |
    fis''4 fis'' fis''8 g'' a'' fis'' |
    g'' a'' g'' fis'' (e''4) \tuplet 3/2 { e''8 (fis'' g'' } | \break
    a''4) g''8 (fis'') e''4 cis'' |
    d''8 e'' d'' cis'' a'4 fis' |
    g' b' a'8 [b' a' g'] |
    \partial 4*3 fis'4 d' d'
  }
}

RoseTreeIIChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1 s1 d2 a2 d1 g1
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 d1 a1 d2 a2 d1 g2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \RoseTreeIIChords
  \new Staff { \clef treble \RoseTreeII }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rose Tree II"}}
  }
%}
