
\version "2.18.0"

% -------------------------------------------------------------------------

TenPennyBit = {
  \time 6/8
  \key c \major
  \repeat volta 2 {
    \partial 8 e''8
    e''8 a' a' e'' a' a' |
    b' a' b' g' b' d'' |
    e'' a' a' e'' a' a' |
    d'' e'' fis'' g'' fis'' g'' |
    e'' a' a' e'' a' a' |
    b' a' b' g' b' d'' |
    e'' d'' b' g'' [b' b'] |
    \partial 8*5 b' [a' a'] a'4
  }
  \repeat volta 2 {
    \partial 8 b'8
    a'4 a''8 a'' g'' a'' |
    b'' g'' e'' d'' b' a' |
    a'4 a''8 a'' g'' a'' |
    b'' g'' e'' g''4 d''8 |
    e''4 a''8 a'' g'' a'' |
    b'' g'' e'' d'' b' d'' |
    e'' d'' b' g'' [b' b'] |
    \partial 8*5 b' [a' a'] a'4
  }
}

TenPennyBitChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    a2.:min g2. a2.:min g2. a2.:min g2. s2.
    \partial 8*5 a4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    a2.:min e2.:min a2.:min e4.:min g4. a2.:min e4.:min g4. s2.
    \partial 8*5 a4.:min s4
  }
}

%{
  \score {
  <<
  \new ChordNames \TenPennyBitChords
  \new Staff { \clef treble \TenPennyBit }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ten Penny Bit"}}
  }
%}
