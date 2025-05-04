
\version "2.18.0"

% -------------------------------------------------------------------------

HasteToTheWedding = {
  \time 6/8
  \key d \major
  \partial 8*3 d''4 b'8
  \repeat volta 2 {
    a'8 fis' a' a' a'' fis'' |
    e'' d'' e'' fis'' d'' b' |
    a' fis' a' a' g' fis' |
    e' fis' e' e' fis' g' |
    a' fis' b' a' a'' fis'' |
    e'' d'' e'' fis'' d'' b' |
    a' fis' a' fis'' a'' fis'' |
  }
  \alternative {
    { d''4 d''8 d'' cis'' b' }
    { d''4 d''8 d'' fis'' g'' }
  }
  \repeat volta 2 {
    a'' fis'' a'' a'' fis'' a'' |
    b'' g'' b'' b'' a'' g'' |
    fis'' g'' a'' a'' g'' fis'' |
    g'' fis'' g'' e'' fis'' g'' |
    a''4. fis'' |
    e''8 d'' e'' fis'' d'' b' |
    a' fis' a' fis'' a'' fis'' |
  }
  \alternative {
    { d''4 d''8 d'' fis'' g'' }
    { d''4. d''4 r8 }
  }
}

HasteToTheWeddingChords = \chordmode {
  \time 6/8
  \partial 8*3 s4.
  \repeat volta 2 {
    d2. g2. d2. a2. d2. g2. a2.
  }
  \alternative {
    { d2. }
    { d2. }
  }
  \repeat volta 2 {
    d2. g2. d2. a2. d2. g2. a2.
  }
  \alternative {
    { d2. }
    { d2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \HasteToTheWeddingChords
  \new Staff { \clef treble \HasteToTheWedding }
  >>
  \header { piece = \markup {\fontsize #4.0 "Haste To The Wedding"}}
  }
%}