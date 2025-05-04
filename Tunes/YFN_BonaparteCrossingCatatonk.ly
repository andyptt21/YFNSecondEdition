
\version "2.18.0"

% -------------------------------------------------------------------------

BonaparteCrossingCatatonk = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    g'4 g'8 fis' g' a' b' (c'') |
    d''4 d''8 (e'') d'' c'' b'4 |
    c'' c''8 (d'') c'' b' a'4 |
    b' e' d'2 |
    g'4 g'8 fis' g' a' b' (c'') |
    d''4 d''8 (e'') d'' c'' b'4 |
    c'' e''8 c'' b'4 d''8 b' |
    c'' b' a'4 g'2
  }
  \repeat volta 2 {
    e'4. d'8 (e') fis' g' a' |
    b'4 b'8 (c'') b' a' g'4 |
    b' b'8 (c'') d'' b' d'' (e'') |
    g''4 g''8 (e'') d'' b' g' fis' |
    e'4 e'8 (fis') g' fis' (g') a' |
    b'4 b'8 (c'') b' a' g' (fis') |
    g'4 g''8 (e'') g'' d'' b' (a') |
    b' d'' b'4 g'2
  }
}

BonaparteCrossingCatatonkChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g1 s1 c1 d1 g1 s1 c2 g2 d2 g2
  }
  \repeat volta 2 {
    e1:min s1 g1 s1 e1:min s1 g1 d2 g2
  }
}

%{
  \score {
  <<
  \new ChordNames \BonaparteCrossingCatatonkChords
  \new Staff { \clef treble \BonaparteCrossingCatatonk }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bonaparte Crossing the Catatonk"}
  opus = \markup {\fontsize #3.0 "Bill Garrison"}}
  }
%}
