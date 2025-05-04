
\version "2.18.0"

% -------------------------------------------------------------------------

StonesRag = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    c''8 d'' e'' g''~ g'' a'' (g'') e'' |
    a'' g'' e'' c''~ c'' d'' (c'') a' |
    f' g' a' c''~ c'' d'' (c'') a' |
    d'' c'' a' c''~ c'' d'' (c'') a' |
    b' d'' b' g'~ g'4. ais'8 |
    b' d'' b' g'~ g'2 |
  }
  \alternative {
    {
      c''8 d'' e'' g''~ g'' a'' g'' e'' |
      g''1
    }
    {
      c''8 d'' e'' a''~ a'' g'' e''4 |
      c''2. e''4
    }
  }

  a''8 g'' e'' a''~ a'' g'' e''4 |
  a''8 g'' e'' a''~ a'' g'' e''4 |
  d''8 c'' a' d''~ d'' c'' a'4 |
  d''8 c'' a' d''~ d'' c'' a'4 |
  b'8 d'' b' g'~ g'4. ais'8 |
  b' d'' b' g'~ g'2 |
  c''8 d'' e'' g''~ g'' a'' (g'') e'' |
  g''2. gis''4 |
  a''8 g'' e'' a''~ a'' g'' e''4 |
  a''8 g'' e'' a''~ a'' g'' e''4 |
  d''8 c'' a' d''~ d'' c'' a'4 |
  d''8 c'' a' d''~ d'' c'' a'4 |
  c'''2 a'' |
  g''8 a'' g'' e''~ e'' d'' c''4 |
  g'8 a' c'' e''~ e'' c'' d''4 |
  c''1 \bar "|."
}

StonesRagChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    c1 s1 f1 s1 g1:7 s1
  }
  \alternative {
    { c1 g1:7 }
    { c1 s1 }
  }
  a1:7 s1 d1:7 s1 g1:7 s1 c1 s1
  a1:7 s1 d1:7 s1 f2 fis2:dim c2 a2:7 d2:7 g2:7 c1
}

%{
  \score {
  <<
  \new ChordNames \StonesRagChords
  \new Staff { \clef treble \StonesRag }
  >>
  \header { piece = \markup {\fontsize #4.0 "Stone's Rag"}}
  }
%}
