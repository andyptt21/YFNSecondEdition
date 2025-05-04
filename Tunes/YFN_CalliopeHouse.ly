
\version "2.18.0"

% -------------------------------------------------------------------------

CalliopeHouse = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    d''8 a' a' fis'' a' a' |
    e'' a' a' fis'' a' a' |
    b' e'' e'' e''4 d''8 |
    e'' fis'' d'' b' d'' b' |
    a' b' a' a'4 fis'8 |
    a'4 b'8 d''4 e''8
  }
  \alternative {
    {
      fis''4 a''8 fis'' e'' d'' |
      e''4.~ e''4 a'8
    }
    {
      fis'' a'' fis'' e'' d'' b' |
      d''4. d''4 fis''8
    }
  }
  \repeat volta 2 {
    a''4. fis''8 a'' a'' |
    e'' a'' a'' fis'' a'' a'' |
    g''4. fis''8 g'' fis'' |
    e'' fis'' e'' e'' d'' b' |
    a' b' a' a'4 fis'8 |
    a'4 b'8 d''4 e''8
  }
  \alternative {
    {
      fis''4 a''8 fis'' e'' d'' |
      e''4. e''8 fis'' g''
    }
    {
      fis'' a'' fis'' e'' d'' b' |
      d''4.~ d''
    }
  }
}

CalliopeHouseChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2. s2. e2.:min s4. g4. d2. s2.
  }
  \alternative {
    { d2. a2. }
    { d4. g4. d2. }
  }
  \repeat volta 2 {
    d2. s2. g2. s2. d2. s2.
  }
  \alternative {
    { d2. a2. }
    { d4. g4. d2. }
  }
}

%{
\score {
  <<
    \new ChordNames \CalliopeHouseChords
    \new Staff { \clef treble \CalliopeHouse }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Calliope House"}
    opus = \markup {\fontsize #3.0 "David Richardson"}
  }
}
%}
