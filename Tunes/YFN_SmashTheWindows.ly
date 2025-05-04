
\version "2.18.0"

% -------------------------------------------------------------------------

SmashTheWindows = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    d'8 e' d' fis'4 a'8 |
    d''4 fis''8 e'' cis'' a' |
    g'4 b'8 fis'4 a'8 |
    e'4 fis'8 g' fis' e' |
    d' e' d' fis'4 a'8 |
    d''4 fis''8 e'' cis'' a' |
    b' g'' fis'' e'' d'' cis'' |
  }
  \alternative {
    { d''4. d''8 a' fis' }
    { d''4 d''8 d'' fis'' g'' }
  }

  a''4 fis''8 d''4 e''8 |
  fis''4 g''8 a'' g'' fis'' |
  g'' fis'' e'' cis'' a' cis'' |
  e''4 fis''8 g'' fis'' e'' |
  a''4 fis''8 d''4 e''8 |
  fis''4 g''8 a'' g'' fis'' |
  g'' fis'' e'' cis'' d'' e'' |
  d''4 d''8 d'' fis'' g'' |
  a''4 fis''8 d'' cis'' d'' |
  fis''4 g''8 a'' g'' fis'' |
  g'' fis'' e'' cis'' a' cis'' |
  e''4 fis''8 g'' fis'' e'' |
  fis'' e'' d'' g'' fis'' e'' |
  a'' g'' fis'' b'' a'' g'' |
  fis'' g'' fis'' e'' d'' cis'' |
  d''4. r4. \bar "||"
}

SmashTheWindowsChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2. s2. g4. d4. a2. d2. s2. g4. a4.
  }
  \alternative {
    { d2. }
    { d2. }
  }
  d2. s2. a2. s2. d2. s2. a2. d2. d2. s2.
  a2. s2. d4. a4. d4. g4. d4. a4. d2.
}

%{
  \score {
  <<
  \new ChordNames \SmashTheWindowsChords
  \new Staff { \clef treble \SmashTheWindows }
  >>
  \header { piece = \markup {\fontsize #4.0 "Smash The Windows"}}
  }
%}
