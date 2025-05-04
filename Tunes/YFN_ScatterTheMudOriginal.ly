
\version "2.18.0"

% -------------------------------------------------------------------------

ScatterTheMud = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8 d''8
    e''8 a' a' b' \acciaccatura d'' b' \acciaccatura a' b' |
    e'' a' a' a' b' d'' |
    e''8 a' a' b' \acciaccatura d'' b' \acciaccatura a' b' |
    d'' b' g' g' b' d'' |
    e''8 a' a' b' \acciaccatura d'' b' \acciaccatura a' b' |
    e'' a' a' a' g' e' |
    g' a' b' b' [g'' e''] |
    \partial 8*5 d'' [b' a'] a'4
  }
  \repeat volta 2 {
    \partial 8 d''8
    e'' a'' a'' e'' g'' g'' |
    d'' b' a' a' b' d'' |
    e'' a'' a'' e'' g'' g'' |
    d'' b' g' g' b' d'' |
    e'' a'' fis'' g''( \acciaccatura a'' g'' \acciaccatura fis'' g'') |
    d'' b' a' a' g' e' |
    g' a' b' b' [g'' e''] |
    \partial 8*5 \appoggiatura {d''16 [e'']} d''8 [b' a'] a'4
  }
}


ScatterTheMudChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    a4.:min g4. a2.:min s4. g4. s4. e4.:min
    a4.:min g4. a4.:min g4. b2.:min
    \partial 8*5 e4.:min a4:min
  }
  \repeat volta 2 {
    \partial 8 s8
    a4.:min e4.:min g2. a4.:min e4.:min g2. a4.:min
    e4.:min g4.:min e4.:min g2.
    \partial 8*5 e4.:min a4:min
  }
}

%{
  \score {
  <<
  \new ChordNames \ScatterTheMudChords
  \new Staff { \clef treble \ScatterTheMud }
  >>
  \header { piece = \markup {\fontsize #4.0 "Scatter the Mud"}}
  }
%}
