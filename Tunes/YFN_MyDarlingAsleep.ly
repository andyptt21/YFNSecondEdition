
\version "2.18.0"

% -------------------------------------------------------------------------

MyDarlingAsleep = {
  \time 6/8
  \key d \major
  \partial 8*3 a''4 g''8
  \repeat volta 2 {
    fis''8 d'' d'' cis'' a' a' |
    b' a' g' a'4 (g'8) |
    fis' g' a' d'' (e'' fis'') |
    \acciaccatura a''16 g''8 fis'' g'' e'' (a'' g'') | \break
    fis'' d'' d'' cis'' a' a' |
    b' a' g' a'4 (g'8) |
    fis' g' a' d'' (e'' fis'') |
  }
  \alternative {
    { g'' e'' cis'' d'' (a'' g'') }
    { g'' e'' cis'' d'' (a' g') }
  } \break
  \repeat volta 2 {
    fis' a' a' a' d'' d'' |
    fis' a' a' b' (a' g') |
    fis' g' a' d'' (e'' fis'') |
    \acciaccatura a''16 g''8 fis'' g'' e'' (a'' g'') | \break
    fis'' d'' d'' cis'' a' a' |
    b' a' g' a'4 (g'8) |
    fis' g' a' d'' (e'' fis'') |
  }
  \alternative {
    { g'' e'' cis'' d'' (a' g') }
    { g'' e'' cis'' d'' (a'' g'') }
  }
}

MyDarlingChords = \chordmode {
  \time 6/8
  \partial 8*3 s4.
  \repeat volta 2 {
    d4. a4. g4. d4. s2. g4. a4.
    d4. a4. g4. d4. s4. g4.
  }
  \alternative {
    { a4. d4. }
    { a4. d4. }
  }
  \repeat volta 2 {
    d2. s4. g4. d2. a2.
    d4. a4. g4. d4. s2.
  }
  \alternative {
    { a4. d4. }
    { a4. d4. }
  }
}

%{
  \score {
  <<
  \new ChordNames \MyDarlingChords
  \new Staff { \clef treble \MyDarlingAsleep }
  >>
  \header { piece = \markup {\fontsize #4.0 "My Darling Asleep"}}
  }
%}
