
\version "2.18.0"

% -------------------------------------------------------------------------

YearOfJubilo = {
  \time 4/4
  \key g \major
  \partial 4 b'8 a'
  \repeat volta 2 {
    g'4 b'8 a' b'4 d''8 c'' |
    d'' g'' (b'' a'') b'' a'' g'' e'' |
    d'' fis'' (g'' fis'') g''4 b' |
    a'4. b'8 (a' c'') b' a' |
    g'4 b'8 a' b'4 d''8 c'' |
    d'' g'' (b'' a'') b'' a'' g'' e'' |
    d''4 g'' a''4. g''8 |
  }
  \alternative {
    { g''4 g'' g'' b'8 a' }
    { g''4 g'' g''8 (a'') g'' (fis'') }
  }
  \repeat volta 2 {
    e''4 e'' e'' fis'' |
    g'' g'' g''8 a'' (g'') e'' |
    d'' fis'' (g'' fis'') g''4 b' |
    a'4. b'8 (a' c'') b' a' |
    g'4 b'8 a' b'4 d''8 c'' |
    d'' g'' (b'' a'') b'' a'' g'' e'' |
    d''4 g'' a''4. g''8 |
  }
  \alternative {
    { g''4 g'' g''8 [(a'') g'' (fis'')] }
    { \partial 4*3 g''2. }
  }
}

YearOfJubiloChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    g1 s1 s1 d1 g1 s1 s2 d2
  }
  \alternative {
    { g1 } { g1 }
  }
  \repeat volta 2 {
    c1 s1 g1 d1 g1 s1 s2 d2
  }
  \alternative {
    { g1 }
    { \partial 4*3 g2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \YearOfJubiloChords
  \new Staff { \clef treble \YearOfJubilo }
  >>
  \header { piece = \markup {\fontsize #4.0 "Year Of the Jubilo"}}
  }
%}
