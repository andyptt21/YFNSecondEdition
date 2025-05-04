
\version "2.18.0"

% -------------------------------------------------------------------------

MidnightMaze = {
  \time 6/8
  \key d \major
  \partial 8 b'8
  \repeat volta 2 {
    fis''8 b' fis'' e'' b' e'' |
    d'' b' d'' cis'' b' a' |
    b' cis'' d'' d'' cis'' d'' |
    e'' cis'' a' e'' cis'' a' | \break
    fis'' b' fis'' e'' b' e'' |
    d'' b' d'' cis'' b' a' |
    b' cis'' d'' d'' cis'' a' |
    a' b' b' b'4 b'8 |
  } \break
  \repeat volta 2 {
    cis'' a' fis' cis'' d'' e'' |
    g'' d'' b' g' a' b' |
    e'' cis'' a' e'' fis'' e'' |
    d'' fis'' d'' cis'' fis'' cis'' | \break
    d'' b' g' d'' g'' d'' |
    e'' cis'' a' e'' a'' e'' |
    g'' fis'' e'' d'' cis'' b' |
  }
  \alternative {
    { g'' fis'' d'' b'4 b'8 }
    { g'' fis'' d'' b'4. }
  }
}

MidnightMazeChords = \chordmode {
  \time 6/8
  \partial 8 s8
  \repeat volta 2 {
    b4.:min a4. g4. a4. b2.:min a2.
    b4.:min a4. g4. a4. b2.:min a4. b4.:min
  }
  \repeat volta 2 {
    fis2.:min g2. a2. b4.:min fis4.:min
    g2. a2. b2.:min6
  }
  \alternative {
    { fis4.:min b4.:min }
    { b4.:min6 b4.:min }
  }
}

%{
  \score {
  <<
  \new ChordNames \MidnightMazeChords
  \new Staff { \clef treble \MidnightMaze }
  >>
  \header { piece = \markup {\fontsize #4.0 "Midnight Maze"}
  opus = \markup {\fontsize #3.0 "M. Prochaska"}}
  }
%}
