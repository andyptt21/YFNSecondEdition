
\version "2.18.0"

% -------------------------------------------------------------------------

KeshJig = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    g'8 fis' g' g' a' b' |
    a' g' a' a' b' d'' |
    e'' d'' d'' g'' d'' d'' |
    e'' d'' b' d'' b' a' |
    g' fis' g' g' a' b' |
    a' g' a' a' b' d'' |
    e'' d'' e'' g'' d'' b' |
    a' g' fis' g'4 a'8 |
  }
  \repeat volta 2 {
    b'8 a' b' d'' b' d'' |
    e'' d'' e'' d'' b' g' |
    b' a' b' d'' b' g' |
    a' g' a' a' g' a' |
    b' a' b' d'' b' d'' |
    e'' g'' e'' d'' b' d'' |
    g'' fis'' g'' a'' g'' a'' |
    b'' g'' fis'' g''4.
  }
}

KeshJigChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    g2. d2.:7 g2. d2.:7 g2. d2.:7 g2. c4 d8 g4.
  }
  \repeat volta 2 {
    g2. c2. g2. d2.:7 g2. c4. g4. s4. d4. c4 d8 g4.
  }
}

%{
  \score {
  <<
  \new ChordNames \KeshJigChords
  \new Staff { \clef treble \KeshJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Kesh Jig"}}
  }
%}