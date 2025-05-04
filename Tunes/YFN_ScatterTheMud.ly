
\version "2.18.0"

% -------------------------------------------------------------------------

ScatterTheMud = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    e''8 a' a' \acciaccatura d''8 b'4 a'8 |
    e'' a' a' a' b' d'' |
    e''8 a' a' \acciaccatura d''8 b'4 a'8 |
    d'' b' g' g' b' d'' |
    e''8 a' a' \acciaccatura d''8 b'4 a'8 | \break
    e'' a' a' a' g' e' |
    g' a' b' d'' g'' e'' |
    d'' b' a' a'4.
  }
  \repeat volta 2 {
    e''8 a'' a'' e'' g'' g'' |
    d'' b' a' a' b' d'' |
    e'' a'' a'' e'' g'' g'' | \break
    d'' b' a' g'4. |
    e''8 a'' fis'' g'' fis'' g'' |
    d'' b' a' a' g' e' |
    g' a' b' d'' g'' e'' |
    d''8 b' a' a'4.
  }
}


ScatterTheMudChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    a2.:min s2. s2. g2. a2.:min a2.:min g2. s4. a4.:min
  }
  \repeat volta 2 {
    a2.:min g2. a2.:min g2. a2.:min g2. s2. s4. a4.:min
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
