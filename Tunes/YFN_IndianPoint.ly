
\version "2.18.0"

% -------------------------------------------------------------------------

IndianPoint = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    b8 e' fis' g'4 a'8 |
    b' a' g' fis' e' d' |
    c' e' fis' g'4 a'8 |
    b' a' g' b' a' g' |
    fis' e' d' a4 fis'8 |
    fis' e' fis' a' g' fis'
  }
  \alternative {
    {
      g' fis' g' b' a' g' |
      fis'4. fis'
    }
    {
      g'8 fis' e' fis' e' d' |
      e'4.~ e'
    }
  }
  \repeat volta 2 {
    b'8 e'' fis'' g'' fis'' e'' |
    c'' e'' fis'' g'' fis'' e'' |
    d'' fis'' g'' a'' g'' fis'' |
    g'' fis'' e'' fis'' e'' d'' |
    b' e'' fis'' g'' fis'' e'' |
    c'' fis'' g'' a''4 a''8 |
    b'' a'' g'' fis'' g'' fis'' |
    e''4. e''
  }
}

IndianPointChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    e2.:min s2. c2. s2. d2. s2.
  }
  \alternative {
    { e2.:min b2. }
    { e4.:min d4. e2.:min }
  }
  \repeat volta 2 {
    e2.:min c2. d2. e4.:min d4.
    e2.:min c2. b2. e2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \IndianPointChords
  \new Staff { \clef treble \IndianPoint }
  >>
  \header { piece = \markup {\fontsize #4.0 "Indian Point"}
  opus = \markup {\fontsize #3.0 "Rick Mohr"}}
  }
%}
