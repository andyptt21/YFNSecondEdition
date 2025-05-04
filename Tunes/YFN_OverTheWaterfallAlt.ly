
\version "2.18.0"

% -------------------------------------------------------------------------

OverTheWaterfallAlt = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 d''8 e''
    fis''4 a''4 g''8 fis'' e''4 |
    d''8 e'' d'' b' a'4 d''8 e'' |
    fis''4 a''4 g''8 fis'' e''4 |
    d''2. d''8 e'' | \break
    fis''4 a''4 g''8 fis'' e''4 |
    d''8 e'' d'' b' a'4 a'8 b' |
    c''4. d''8 b'4 a' |
    \partial 4*3 g'2.
  } \break
  \repeat volta 2 {
    \partial 4 fis'8 g' |
    a'4 a'8 a'8 b'4 b'4 |
    a'8 b' a' g' fis'4 fis'8 g' |
    a'4 d'' cis''8 d'' e''4 |
    d''2. fis'8 g' | \break
    a'4 a'8 a'8 b'4 b'4 |
    a'8 b' a' g' fis'4 fis'8 g' |
    a'4 a'8 a' g'8 fis' e'4 |
    \partial 4*3 d'2.
  }
}

OverTheWaterfallChordsAlt = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d2 a2:7 d1 s2 a2:7 d1 s2 a2:7 d1 c1
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d2 g2 d1 s2 a2:7 d1 s2 g2 d1 a1:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \OverTheWaterfallChordsAlt
  \new Staff { \clef treble \OverTheWaterfallAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Over The Waterfall (Alt)"}}
  }
%}
