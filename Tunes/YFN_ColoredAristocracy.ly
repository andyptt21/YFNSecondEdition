
\version "2.18.0"

% -------------------------------------------------------------------------

ColoredAristrocracy = {
  \time 2/2
  \key g \major
  \partial 2 e'4 fis'
  \repeat volta 2 {
    g'4 g'8 a' g' e' d'4 |
    g'2. g'8 a' |
    b'4 b'8 c'' b' a' g'4 |
    e'2. a'8 b' |
    %5
    c'' b' c'' d'' e''4 d''8 c'' |
    b' a' b' c'' d''4 c''8 b' |
  }
  \alternative {
    {
      a'4 a'8 b' a'4 g' |
      a' fis' e' fis'
    }
    {
      b'8 a' b' d''~ d'' b' a'4 |
      g'2. e''8 fis''
    }
  } \break
  \repeat volta 2 {
    g''4 g'' g''8 e'' d''4 |
    e''2. e''4 |
    e'' fis'' e''8 d'' b'4 |
    b'2. a'8 b' |
    %15
    c''4 c''8 d'' e''4 d''8 c'' | \break
  }
  \alternative {
    {
      b' a' b' c'' d''4 c''8 b' |
      a'4 b' c'' cis'' |
      d'' dis'' e'' fis'' |
    }
    {
      b'8 a' b' c'' d''4 b'8 a' |
      b' a' b' d''~ d'' b' a'4 |
      \partial 2 g'2
    }
  }
}

ColoredAristrocracyChords = \chordmode {
  \time 2/2
  \partial 2 s2
  \repeat volta 2 {
    g1 s1 e1:min s1 c1 g1
  }
  \alternative {
    { a1 d1 }
    { a2 d2 g1 }
  }
  \repeat volta 2 {
    g1 e1:min s1 s1 c1
  }
  \alternative {
    { g1 a1 d1 }
    { g1 d1 \partial 2 g2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \ColoredAristrocracyChords
  \new Staff { \clef treble \ColoredAristrocracy }
  >>
  \header { piece = \markup {\fontsize #4.0 "Colored Aristrocracy"}}
  }
%}
