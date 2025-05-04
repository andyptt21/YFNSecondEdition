
\version "2.18.0"

% -------------------------------------------------------------------------

DancingBear = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    e'8 fis' g' fis' e' fis' g' fis' |
    e' fis' g' a' g'4 e' |
    e'8 fis' g' fis' e' fis' g' fis' |
    e' fis' g' a' g'4 e' | 
    \break
    e'8 fis' g' fis' e' fis' g' fis' |
    e' fis' g' a' b'4 e'' |
    b' b'8 (c'') b' a' g' fis' |
    g'4 (e') e'2
  } 
  \break
  \repeat volta 2 {
    e''4 e''8 (fis'') g'' fis'' e'' fis'' |
    g''4 (e'') e'' (b') |
    e'' e''8 (fis'') g'' fis'' e'' fis'' |
    g''4 (e'') e''2 | 
    \break
    e''4 e''8 (fis'') g'' fis'' e'' fis'' |
    g''4 e'' e''4. d''8 |
    b' a' b' c'' b' a' g' fis' |
    g'4 (e') e'2
  }
}

DancingBearChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    e1:min s1 a1 s1 e1:min s1 b1:7 e1:min
  }
  \repeat volta 2 {
    e1:min s1 a1 s1 c1 s1 b1:7 e1:min
  }
}

%{
\score {
  <<
    \new ChordNames \DancingBearChords
    \new Staff { \clef treble \DancingBear }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Dancing Bear"}
    opus = \markup {\fontsize #3.0 "Bob McQuillen"}
  }
}
%}
