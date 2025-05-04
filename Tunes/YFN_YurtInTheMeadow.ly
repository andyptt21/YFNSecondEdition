
\version "2.18.0"

% -------------------------------------------------------------------------

YurtInTheMeadow = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    d'8 fis' a' d''4 d''8~ |
    d'' cis'' d'' e''4. |
    fis''8 g'' fis'' e'' d'' e'' |
    fis'' g'' fis'' e''4. | \break
    d'8 fis' a' d''4 d''8~ |
    d'' cis'' d'' e''4. |
    fis''8 g'' fis'' e'' d'' e'' |
    e'' cis'' a' d''4. |
  } \break
  \repeat volta 2 {
    a''4 a''8 fis'' e'' d'' |
    e'' fis'' g'' fis'' e'' d'' |
    a''4 a''8 fis'' e'' d'' |
    c''4. b' | \break
    a''4 a''8 fis'' e'' d'' |
    e'' fis'' g'' fis''4. |
    b''4 a''8 fis''4 a''8 |
    cis''4. d''
  }
}

YurtInTheMeadowChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2. s4. a4. d4. a4. g4. a4.
    d2. s4. a4. d4. a4. s4. d4.
  }
  \repeat volta 2 {
    d2. a2. d2. c4. g4.
    d2. a4. d4. g4. b4.:min a4. d4.
  }
}

%{
  \score {
  <<
  \new ChordNames \YurtInTheMeadowChords
  \new Staff { \clef treble \YurtInTheMeadow }
  >>
  \header { piece = \markup {\fontsize #4.0 "Yurt in the Meadow"}
  opus = \markup {\fontsize #3.0 "Gail Blake"}}
  }
%}
