
\version "2.18.0"

% -------------------------------------------------------------------------

LaBastrangeAlt = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''4 fis''8 fis'' fis''4 g''8 fis'' |
    e''4 cis'' d''4. d''8 |
    cis''4 d'' e''4. e''8 |
    d''4 e'' fis'' d'' | \break
    fis'' fis''8 fis'' fis''4 g''8 fis'' |
    e''4 cis'' d''2 |
    g''4. fis''8 e''4 d'' |
    b'4 cis'' d''2
  } \break
  \repeat volta 2 {
    d''4 fis'' a'' fis'' |
    c''4 e'' g'' e'' |
    d''4 fis'' a'' fis'' |
    b''8 g'' e''4 d'' a' | \break
    d''4 fis'' a'' fis'' |
    c''4 e'' g'' e'' |
    d''4 fis'' a'' fis'' |
    b''8 g'' e''4 d''2 | \break
  }
}

LaBastrangeChordsAlt = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 a2 d2 a1 d1
    d1 a2 d2 g1 a2 d2
  }
  \repeat volta 2 {
    d1 c1 d1 a2 d2
    d1 c1 d1 a2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \LaBastrangeChordsAlt
  \new Staff { \clef treble \LaBastrangeAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "La Bastrange (Alt)"}}
  }
%}