
\version "2.18.0"

% -------------------------------------------------------------------------

YouMarried = {
  \time 2/2
  \key g \major
  \partial 2 b'4 d''
  \repeat volta 2 {
    g''4 g'' fis''8 g'' a'' fis'' |
    g''4 g'' b' d'' |
    fis'' fis'' e''8 fis'' g'' e'' |
    fis''4 e''8 d'' b'4 d'' |
    g'' g'' fis''8 g'' a'' fis'' |
    g''4 g'' b' d'' |
    fis''8 g'' fis'' e'' d'' b' a'4 |
  }
  \alternative {
    { g'2 b'4 d'' }
    { g'2 b'8 c'' d'' b' }
  }
  \repeat volta 2 {
    g'4 b'8 b' g'4 b'8 b' |
    d''4 c'' a'8 b' c'' a' |
    fis'4 a'8 a' fis'4 a'8 a' |
    e''4 d'' b'8 c'' d'' b' |
    g'4 b'8 b' g'4 b'8 b' |
    d''4 c'' a'8 b' c'' a' |
    fis'4 fis''8 e'' d'' c'' a'4 |
  }
  \alternative {
    { g'2 b'8 c'' d'' b' }
    { g'2 b'4 d'' }
  }
}

YouMarriedChords = \chordmode {
  \time 2/2
  \partial 2 s2
  \repeat volta 2 {
    g2 d2 g1 d2 a2:7 d1
    g2 d2 g1 d1
  }
  \alternative {
    { g1 } { g1 }
  } \break
  \repeat volta 2 {
    g1 d1 d1 g1
    g1 d1 d1
  }
  \alternative {
    { g1 } { g1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \YouMarriedChords
  \new Staff { \clef treble \YouMarried }
  >>
  \header { piece = \markup {\fontsize #4.0 "You Married My Daughter But Yet You Didn't"}}
  }
%}
