
\version "2.18.0"

% -------------------------------------------------------------------------

StAnnesAlt = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a'4
    fis''4 fis''8 g'' fis'' e'' d'' b' |
    a'4 fis' fis' a' |
    b'4 g' g' b'  |
    a'4 fis' fis' a' | \break
    fis''4 fis''8 g'' fis'' e'' d'' b' |
    a'4 fis' fis' a' |
    b' b' cis''8 a' cis''4 |
    \partial 4*3 d''4 d''8 cis'' d''4
  } \break
  \repeat volta 2 {
    \partial 4 a''8 g''
    fis''4 d'' fis'' a'' |
    a''4 g''8 fis'' g''2 |
    e''4 cis'' a' a'' |
    b''4 a''8 gis'' a''2 | \break
    fis''4 d'' fis'' a'' |
    a''4 g''8 fis'' g''2 |
    e''4 cis''8 b' a'4 cis'' |
    \partial 4*3 d''4 d''8 cis'' d''4
  }
}

StAnnesChordsAlt = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g1 d1 s1 s1 g2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 e1:min a1 d1 d1 g1 a1
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \StAnnesChordsAlt
  \new Staff { \clef treble \StAnnesAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "St. Anne's Reel (Alt)"}}
  }
%}
