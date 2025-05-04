
\version "2.18.0"

% -------------------------------------------------------------------------

BlackthornStick = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    g''8 fis'' g'' a'' g'' e'' |
    d'' b' g' a' g' e' |
    d' g' g' fis' g' a' |
    b' g' b' a'4 fis''8 | 
    \break
    g'' fis'' g'' a'' g'' e'' |
    d'' b' g' a' g' e' |
    d' g' g' fis' g' a' |
    b' g' fis' g'4 d''8 |
  } 
  \break
  \repeat volta 2 {
    e'' d'' d'' g'' d'' d'' |
    e'' d'' e'' g'' d'' b' |
    d'' e'' fis'' g'' fis'' g'' |
    e'' d'' b' a'4 fis''8 | 
    \break
    g'' fis'' g'' a'' g'' e'' |
    d'' b' g' a' g' e' |
    d' g' g' fis' g' a' |
    b' g' fis' g'4 d''8
  }
}

BlackthornStickChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    g4. g4.:sus4 g4. g4.:sus4 g4. g4.:sus4 g4. d4.
    g4. g4.:sus4 g4. g4.:sus4 g4. g4.:sus4 d4. g4.
  }
  \repeat volta 2 {
    g2. s2. s2. c4. d4. g2. s4. g4.:sus4 g4. c4. d4. g4.
  }
}

%{
\score {
  <<
    \new ChordNames \BlackthornStickChords
    \new Staff { \clef treble \BlackthornStick }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Blackthorn Stick"}}
}
%}
