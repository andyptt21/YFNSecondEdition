
\version "2.18.0"

% -------------------------------------------------------------------------

LaBastrange = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''4 fis''8 fis'' fis''4 g''8 fis'' |
    e''4 cis'' d''2 |
    cis''4 (d'') e''8 fis'' e'' cis'' |
    d''4 e'' fis'' a' | \break
    fis'' fis''8 fis'' fis''4 g''8 fis'' |
    e''4 cis'' d''2 |
    g''4 (fis'') e''8 fis'' e'' d'' |
  }
  \alternative {
    { b'4 cis'' d''2 }
    { b'4 cis'' d'' \tuplet 3/2 {a'8 (b' cis'')} }
  } \break
  \repeat volta 2 {
    d''4 fis''8 (d'') a'' d'' fis'' d'' |
    c''4 e''8 (c'') g'' c'' e'' c'' |
    d''4 fis''8 (d'') a'' d'' fis''4 |
    a''8 (b'') a'' g'' fis'' e'' d'' cis'' | \break
    d''4 fis''8 (d'') a'' d'' fis'' d'' |
    c''4 e''8 (c'') g'' c'' e'' c'' |
    d''4 fis''8 (d'') a'' d'' fis'' a'' |
  }
  \alternative {
    { b'' g'' e'' cis'' d''4 \tuplet 3/2 {a'8 (b' cis'')} }
    { b'' g'' e'' cis'' d''2 }
  }
}

LaBastrangeChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 a2 d2 a1 d1
    d1 a2 d2 g1
  }
  \alternative {
    { a2 d2 }
    { a2 d2 }
  }
  \repeat volta 2 {
    d1 c1 d1 a1
    d1 c1 d1
  }
  \alternative {
    { a2 d2 }
    { a2 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \LaBastrangeChords
  \new Staff { \clef treble \LaBastrange }
  >>
  \header { piece = \markup {\fontsize #4.0 "La Bastrange"}}
  }
%}
