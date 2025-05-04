
\version "2.18.0"

% -------------------------------------------------------------------------

Connaughtmans = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    fis'8 a' a' d'' a' a' |
    b' a' b' d'' a' g' |
    fis' a' a' d'' e'' fis'' |
    e'' d'' b' b' a' g' |
    fis' a' a' d'' a' a' |
    b' a' b' d'' e'' fis'' |
    g'' fis'' e'' d'' fis'' e'' |
  }
  \alternative {
    { d'' b' a' b' a' g' }
    { d'' b' a' b'4 d''8 }
  }
  \repeat volta 2 {
    fis''8 b'' b'' fis'' a'' fis'' |
    fis'' e'' fis'' d'' e'' d'' |
    fis'' b'' fis'' a'' fis'' a'' |
    fis'' e'' d'' e''4. |
    fis''8 b'' b'' fis'' a'' a'' |
    fis'' e'' fis'' d'' e'' fis'' |
    g'' fis'' e'' d'' fis'' e'' |
    d'' b' a' b'4.
  }
}

ConnaughtmansChords = \chordmode  {
  \time 6/8
  \repeat volta 2 {
    d2. g2. d2. g2. d2. g2. s4. d4.
  }
  \alternative {
    { g2. } { g2. }
  }
  \repeat volta 2 {
    d2. s2. s2. s4. d4.:sus4 d2. s2. g4. d4. s4. g4.
  }
}

%{
\score {
  <<
    \new ChordNames \ConnaughtmansChords
    \new Staff { \clef treble \Connaughtmans }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Connaughtman's Rambles"}}
}
%}
