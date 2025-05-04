
\version "2.18.0"

% -------------------------------------------------------------------------

EddiesReel = {
  \time 2/2
  \key g \major
  \partial 4
  g'4
  \repeat volta 2 {
    d'8 (g') b' (d'') g'' (a'') g''4 |
    d'8 (g') b' d'' (g'' a'') g''4 |
    d'8 (g') b' (d'') g'' (fis'') e'' d'' |
    c''2 c''8 d'' c'' b' |
    a' (fis') a' d'' (fis'' g'') fis''4 |
    a'8 (fis') a' d'' fis'' (g'' fis'' e'') |
  }
  \alternative {
    {
      d''4 d'' e''8 (g'') e'' d'' |
      b'2 b'8 (c'') b' a' |
    }
    {
      d''4 d'' c''8 [(a') fis' a'] |
      \partial 4*3
      g'2.
    }
  }

  \partial 4
  d''4 |
  <b' b''>2 <b' b''>4 <b' a''> |
  <a' g''>2 <a' g''>4 d'' |
  <b' b''> <b' b''> <b' a''> <b' g''> |
  <a' fis''>2 <a' fis''>4 d'' |
  <a' a''>2 <a' a''>4 <a' g''> |
  <a' fis''>2 <a' fis''>8 <a' g''> <a' fis''> <a' e''> |
  <d' d''>4 <d' d''> <a' e''>8 <a' g''> <a' e''> <d' c''> |
  <d' b'>2 <d' b'>4 d'' |
  <b' b''>2 <b' b''>4 <b' a''> |
  <b' g''>2. r4 |
  <b' b''>2 <b' b''>4 <b' b''> ( |
  <c'' c'''>2) <c'' c'''>4 <a' e''> |
  <a' a''>2 <a' a''>4 <a' g''> |
  <a' fis''>2 <a' fis''>8 (<a' g''> <a' fis''> <a' e''>) |
  d''4 d'' c''8 [(a') fis' <d' a'>] |
  \partial 4*3
  <g g'>4 <g g'>8 <g g'> <g g'>4
}

EddiesChords = \chordmode {
  \time 2/2
  \partial 4
  s4
  \repeat volta 2 {
    g1 s1 s1 d1:7 s1 s1
  }
  \alternative {
    { d1:7 g1 }
    { d1:7 \partial 4*3 g2. }
  }
  \partial 4
  s4
  g1 s1 s1 d1:7 s1 s1 s1 g1 s1 s1 s1
  c1 a1:min d1:7 s1
  \partial 4*3 g2.
}

%{
\score {
  <<
    \new ChordNames \EddiesChords
    \new Staff { \clef treble \EddiesReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Eddie's Reel"}}
}
%}
