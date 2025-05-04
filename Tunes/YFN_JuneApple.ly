
\version "2.18.0"

% -------------------------------------------------------------------------

JuneAppleff = {
  \time 4/4
  \key d \major
  \partial 4 e''8 g''(
  \repeat volta 2 {
    a''8 g'') e'' g'' (a'' g'') e'' g''( |
    a'' g'') e'' d'' (cis'' d'') e'' fis''( |
    g'' fis'') e'' fis'' (g'' fis'') e'' fis''( |
    g'' a'') g'' fis'' (e''4) e''8 g''( | \break
    a'' g'') e'' g'' (a'' g'') e'' g''( |
    a'' g'') e'' d'' (cis'' b') a' a' |
    g'4 g'8 (a' b' [a']) g'4 |
  }
  \alternative {
    { a'4. b'8 (a'4) e''8 g'' }
    { a'4. b'8 (a'4) e''8 d''( }
  } \break
  \repeat volta 2 {
    cis''4) cis''8 b' (a'4) a'8 b'( |
    cis''4) cis''8 d'' e''4 a' |
    g' a' b'8 cis''4. |
    d'' e''8 (d''2) | \break
    cis''8 d'' cis'' b' (a'4) a'8 b'( |
    cis'' b') cis'' d'' e''4 a' |
    g'8 fis' g' a' (b' a') g'4 |
  }
  \alternative {
    { a'4. b'8 (a'4) e''8 [d''] }
    { \partial 4*3 a'2. }
  }
}

JuneAppleChordsff = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    a1 s1 g1 s1 a1 s1 g1
  }
  \alternative {
    { a1 } { a1 }
  }
  \repeat volta 2 {
    a1 s1 g1 d1 a1 s1 g1
  }
  \alternative {
    { a1 } { \partial 4*3 a2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \JuneAppleChordsff
  \new Staff { \clef treble \JuneAppleff }
  >>
  \header { piece = \markup {\fontsize #4.0 "June Apple"}}
  }
%}
