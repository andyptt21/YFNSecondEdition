
\version "2.18.0"

% -------------------------------------------------------------------------

OldJoeClark = {
  \time 4/4
  \key a \major
  \repeat volta 2 {
    e''4 fis'' g'' fis'' |
    e''8 (fis'') e'' d'' cis''4 cis''8 d'' |
    e''4 fis'' g'' fis'' |
    e''4. fis''8 (e''4) cis''8 d'' | \break
    e''4 fis'' g'' fis'' |
    e''8 (fis'') e'' d'' cis''4 a'8 b' |
    cis'' (b') a' cis'' b' (a') gis' b'
  }
  \alternative {
    { a'4. b'8 (a'4) cis''8 d'' }
    { a'4. b'8 (a'4) cis''8 b' }
  } \break
  \repeat volta 2 {
    a'4 a'8 b' cis'' (b') cis'' d'' |
    e'' (fis'') e'' d'' cis'' (b') a'4 |
    a' a'8 b' (cis'' b') a'4 |
    g'2. cis''8 (b') | \break
    a'4 a'8 b' (cis'' b') cis'' d'' |
    e'' (fis'') e'' d'' cis'' (b') a' b' |
    cis'' (b') a' cis'' b' (a') gis' b' |
  }
  \alternative {
    { a'4. b'8 a'4 cis''8 b' }
    { a'1 }
  }
}

OldJoeClarkChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1 s1 s1 g1 a1 s1 s2 e2
  }
  \alternative {
    { a1 } { a1 }
  }
  \repeat volta 2 {
    a1 s1 s1 g1 a1 s1 s2 e2
  }
  \alternative {
    { a1 } { a1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \OldJoeClarkChords
  \new Staff { \clef treble \OldJoeClark }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Joe Clark"}}
  }
%}
