
\version "2.18.0"

% -------------------------------------------------------------------------

AmyInTheBog = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''4 fis'' fis'' fis''8 fis'' |
    eis''4 fis'' d''8 c'' a'4 |
    d''8 c'' a'4 c'' d'' |
    eis'' fis'' fis'' fis'' | 
    \break
    d'' fis'' fis'' fis''8 fis'' |
    eis''4 fis'' d''8 c'' a'4 |
    d''8 c'' a'4 g' f' |
    d'1
  } 
  \break
  \repeat volta 2 {
    a'8 g' a'4 g'8 fis' g' a' |
    c'' d'' d'' d'' d'' c'' a' g' |
    a' g' a'4 g'8 fis' d' g' |
    a' g' a' c'' d''2 | 
    \break
    a'8 g' a'4 g' a' |
    c''8 d'' d''4 d''8 c'' eis''4 |
    fis''8 d'' d'' d'' d'' c'' c'' d'' |
    a' g' fis' g' d'2
  }
}

AmyInTheBogChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1:7 s1 s2 c2 d1:7 s1 s1 s2 c2 d1
  }
  \repeat volta 2 {
    d1:7 s1 s1 c2 d2 d1:7 s1 s1 c2 d2
  }
}

%{
\score {
  <<
    \new ChordNames \AmyInTheBogChords
    \new Staff { \clef treble \AmyInTheBog }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Amy in the Bog"}
    opus  = \markup {\fontsize #3.0 "Larry Unger" }
  }
}
%}