
\version "2.18.0"

% -------------------------------------------------------------------------

HundredPipers = {
  \time 6/8
  \key a \major
  \repeat volta 2 {
    cis''4 e'8 e' fis' e' |
    fis'4 a'8 a'4 fis''8 |
    e''4 cis''8 cis'' b' a' |
    b' cis'' b' b' a' b' |
    cis''4 e'8 e' fis' e' |
    fis'4 a'8 a'4 fis''8 |
    e''4 cis''8 b' cis'' b' |
  }
  \alternative {
    { a'4. a'4 b'8 }
    { a'4. cis''4 d''8 }
  }
  \repeat volta 2 {
    e''4 e''8 e'' cis'' e'' |
    fis''4 a''8 a'' gis'' fis'' |
    e''4 cis''8 cis'' b' a' |
    b' cis'' b' b' cis'' d'' |
    e''4 e''8 e'' cis'' e'' |
    fis''4 a''8 a'' gis'' fis'' |
    e''4 cis''8 b' cis'' b' |
  }
  \alternative {
    { a'4. cis''4 d''8 }
    { a'4. a'4 b'8 }
  }
}

HundredPipersChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    a2. d2. a2. e2. a2. d2. a4. e4.
  }
  \alternative {
    { a2. }
    { a2. }
  }
  \repeat volta 2 {
    a2. d2. a2. e2. a2. d2. a4. e4.
  }
  \alternative {
    { a2. }
    { a2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \HundredPipersChords
  \new Staff { \clef treble \HundredPipers }
  >>
  \header { piece = \markup {\fontsize #4.0 "Hundred Pipers"}}
  }
%}
