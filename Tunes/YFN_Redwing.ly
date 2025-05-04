
\version "2.18.0"

% -------------------------------------------------------------------------

Redwing = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 d''4 |
    g'4 g'8 fis' g'4 b' |
    d''2. g'4 |
    c'' e'' g'' e'' |
    d''2. b'4 | \break
    c'' b' a' c'' |
    b' a' g' b' |
  }
  \alternative {
    {
      a'4 e' fis' g' |
      \partial 4*3
      a'2.
    }
    {
      a'4 g' fis' a' |
      g'2 g''4 fis''
    }
  } \break

  e''2 e'' |
  e''4 g'' fis'' e'' |
  d''2 b' ( |
  b'4) d'' e'' d'' |
  d''2 a' ( |
  a'4) d'' e'' d'' |
  d''2 b' ( |
  b'4) r4 g'' fis'' | \break
  e''2 e'' |
  e''4 g'' fis'' e'' |
  d''2 b' ( |
  b'4) d'' e'' d'' |
  d''2 a' ( |
  a'4) c'' b' a' |
  g'1 ( |
  \partial 4*3 g'2.) \bar "|."
}

RedwingChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 d4:7 |
    g1 s1 c1 g1 d1:7 g1
  }
  \alternative {
    {
      a1:7
      \partial 4*3
      d2.:7
    }
    {
      a2:min d2:7 g1
    }
  }

  c1 s1 g1 s1 d1 s1 g1 s1 c1 s1 g1 s1 d1 d1:7 g2 c2
  \partial 4*3 g2.
}

%{
  \score {
  <<
  \new ChordNames \RedwingChords
  \new Staff { \clef treble \Redwing }
  >>
  \header { piece = \markup {\fontsize #4.0 "Redwing"}}
  }
%}
