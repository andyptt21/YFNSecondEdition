
\version "2.18.0"

% -------------------------------------------------------------------------

LittleBurnt = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    a''8 gis'' a'' b'' a'' g'' |
    a'' fis'' d'' a'4 d''8 |
    fis''4 a''8 g''4 fis''8 |
    e''4. b'8 cis'' d'' |
    e''4 fis''8 e''4 d''8 | \break
    cis'' a' cis'' a''4 a''8 |
  }
  \alternative {
    {
      a''8 gis'' a'' b'' a'' g'' |
      fis''4. fis''8 g'' gis''
    }
    {
      a''8 gis'' a'' b''4 cis''8 |
      d''4. a''4 g''8
    }
  } \break
  \repeat volta 2 {
    fis''4 a'8 fis''4 a'8 |
    fis''4. fis''4 e''8 |
    d'' cis'' d'' a'' g'' fis'' |
    g''4. g''8 e'' fis'' |
    g'' b'' a'' g'' fis'' e'' | \break
    d'' cis'' b' a'4. |
  }
  \alternative {
    {
      a''8 gis'' a'' b'' a'' g'' |
      fis''4. a''4 g''8
    }
    {
      a''8 gis'' a'' b''4 cis''8 |
      d''4. d''
    }
  }
}

LittleBurntChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2. s2. s2. e2.:min a2. s2.
  }
  \alternative {
    { s2. d2. } { s2. d2. }
  }
  \repeat volta 2 {
    d2. s2. s2. g2. s2. d4. a4.
  }
  \alternative {
    { s2. d2. } { s2. d2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \LittleBurntChords
  \new Staff { \clef treble \LittleBurnt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Little Burnt Potato"}}
  }
%}
