
\version "2.18.0"

% -------------------------------------------------------------------------

MarchingThroughGeorgia = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''8. e''16 d''8 e'' fis'' a' a' a' |
    b'8. cis''16 d''8 e'' d''2 |
    fis'8. g'16 a'8 a' b' a' b' d'' |
    e''8. d''16 e''8 fis'' e''2 | \break
    d''8 d'' e'' fis'' g'' b' b' b' |
    a' d'' d''8. e''16 fis''2 |
    e''4 e''8 e'' e''4 fis''8 [e''] |
    \partial 8*7 d''2 d''4.
  } \break
  \repeat volta 2 {
    \partial 8 fis''8 |
    a''4. fis''8 a''4. fis''8 |
    d''8. e''16 d''8 b' d''4. fis''8 |
    a''4. fis''8 a''4. fis''8 |
    e''8. e''16 e''8 fis'' e''2 | \break
    d''8 d'' e'' fis'' g'' b' b' b' |
    a' d'' d''8. e''16 fis''2 |
    e''4 e''8 e'' e''4 fis''8 [e''] |
    \partial 8*7 d''2 d''4.
  }
}

MarchingThroughGeorgiaChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 g2 d2 s1 e2:7 a2:7 d2:7 g2 d1 a1:7
    \partial 8*7 d2 d4.
  }
  \repeat volta 2 {
    \partial 8 s8
    d1 g2 d2 s1 e2:7 a2:7 d2:7 g2 d1 a1:7
    \partial 8*7 d2 d4.
  }
}

%{
  \score {
  <<
  \new ChordNames \MarchingThroughGeorgiaChords
  \new Staff { \clef treble \MarchingThroughGeorgia }
  >>
  \header { piece = \markup {\fontsize #4.0 "Marching Through Georgia"}}
  }
%}