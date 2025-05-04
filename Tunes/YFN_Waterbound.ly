
\version "2.18.0"

% -------------------------------------------------------------------------

Waterbound = {
  \time 2/2
  \key a \major
  \partial 4 a'8 b'
  \repeat volta 2 {
    cis''8 a' a' d'' cis'' a' a' d'' |
    cis'' a' b' cis'' a'2 |
    b'8 a' b' cis'' b'4 b'8 cis'' |
    b' a' fis'4 e'2 |
    e'4 fis' a'2 |
    a'8 b' cis'' d'' e''4 e''( |
    e''8) fis'' e'' d'' cis'' a' b'4 |
  }
  \alternative {
    { a'2 a'4 a'8 b'}
    { a'2 a' }
  }
  \repeat volta 2 {
    fis''8 e'' d'' e'' fis'' e'' d'' e'' |
    fis'' e'' fis'' gis'' a''2 |
    e''8 fis'' e'' d'' cis'' a' d'' a' |
    e''2 e'' |
    fis''8 e'' d'' e'' fis'' e'' d'' e'' |
    fis'' e'' fis'' gis'' a''4 e''( |
    e''8) fis'' e'' d'' cis'' a' b'4 |
  }
  \alternative {
    { a'2 a' }
    { \partial 4*3 a' a'4 }
  }
}

WaterboundChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 e1 s2 a2 s1 s1 s2 e2
  }
  \alternative {
    { a1 } { a1 }
  }
  \repeat volta 2 {
    d1 s1 a1 s1 d1 s1 a2 e2
  }
  \alternative {
    { a1 } { \partial 4*3 a2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \WaterboundChords
  \new Staff { \clef treble \Waterbound }
  >>
  \header { piece = \markup {\fontsize #4.0 "Waterbound / Stay All Night"}}
  }
%}
