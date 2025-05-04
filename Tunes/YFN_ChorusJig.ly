
\version "2.18.0"


% -------------------------------------------------------------------------

ChorusJig = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4
    a'8 (g'8) |
    fis'4 d'8 (fis') a' (b') a' (g') |
    fis' (a') d' (fis') a'4 d'' |
    d'4. fis'8 a' [(b') a' (fis')] |
    \partial 4*3
    g' [(fis') e' (fis')] g'4 |
  } 
  \break

  \key g \major
  \partial 4
  b'8 (c''8) |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (d'') cis'' (d'') a'4 b'8 (c'') |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (c'') b' (a') g'4 b'8 (c'') |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (b') c'' (d'') e'' (fis'') g'' (e'') |
  d''8 (b') c'' (a') b' [(g') fis' (g')] |
  \partial 4*3
  a'8 [(c'') b' (a')] g'4 | 
  \break

  \key d \major
  \repeat volta 2 {
    \partial 4
    a''8 (g''8) |
    fis''8 (d'') d''-. d''-. fis'' (d'') d''-. d''-. |
    fis'' (d'') fis''-. g''-. a'' (b'') a''-. g''-. |
    fis'' (d'') d''-. d''-. fis'' [(d'') d''-. d''-.] |
    \partial 4*3
    e'' [(d'') e''-. fis''-.] g''4 |
  } 
  \break

  \key g \major
  \partial 4
  b'8 (c''8) |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (d'') cis'' (d'') a'4 b'8 (c'') |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (c'') b' (a') g'4 b'8 (c'') |
  d''8 (b') c'' (a') b' (g') fis' (g') |
  a'8 (b') c'' (d'') e'' (fis'') g'' (e'') |
  d''8 (b') c'' (a') b' [(g') fis' (g')] |
  \partial 4*3
  a'8 [(c'') b' (a')] g'4 | 
  \break
}


ChorusJigChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4
    s4
    d1 s1 s1
    \partial 4*3
    a4:7 s2
  }

  \partial 4
  s4
  g1 d1:7 g1 d2:7 g2
  g1 c1:6 g1
  \partial 4*3
  d2:7 g4

  \repeat volta 2 {
    \partial 4
    s4
    d1 d2 a2:7 d1
    \partial 4*3
    c2.
  } 
  \break

  \partial 4
  s4
  g1 d1:7 g1 d2:7 g2
  g1 c1:6 g1
  \partial 4*3
  d2:7 g4
}

%{
\score {
  <<
    \new ChordNames \ChorusJigChords
    \new Staff { \clef treble \ChorusJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Chorus Jig"}}
}
%}
