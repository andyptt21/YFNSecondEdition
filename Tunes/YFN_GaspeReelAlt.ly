
\version "2.18.0"

% -------------------------------------------------------------------------

GaspeReelAlt = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''4 e''8 fis'' e''4 d''4 |
    fis' fis'8 a' b'4 a' |
    g'' fis''8 g'' fis''4 e''4 |
    b'8 a' b' cis'' b'4 a'4 | \break
    fis'' e''8 fis'' e''4 d''4 |
    fis' fis'8 a' b'4 a' |
    g'' fis''8 g'' fis''4 e''4 |
    b'4 cis'' d''2
  } \break
  \repeat volta 2 {
    e''4 fis'' g''4. e''8 |
    fis''4 g'' a''2 |
    e''4 fis'' g'' e'' |
    b'8 a' b' cis'' b'4 a'4 | \break
    e'' fis'' g''4. e''8 |
    fis''4 g'' a''2 |
    e''4 fis'' g''8 fis'' e''4 |
    b'4 cis'' d''2
  }
}

GaspeReelChordsAlt = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 g1 a1 d1 s1 g1 a2 d2
  }
  \repeat volta 2 {
    a1 d1 a1 d2 a2 a1 d1 a1 s2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \GaspeReelChordsAlt
  \new Staff { \clef treble \GaspeReelAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Gaspe Reel (Alt)"}}
  }
%}
