
\version "2.18.0"

% -------------------------------------------------------------------------

GravelWalk = {
  \time 2/2
  \key g \major

  a'4 e''8 a' b' a' e'' a' |
  a'4 e''8 a' b' a' g' b' |
  a'4 e''8 a' b' d'' e'' fis'' |
  g'' e'' d'' c'' b' a' g' b' |

  a'4 e''8 a' b' a' e'' a' |
  a'4 e''8 a' b' a' g' b' |
  a'4 e''8 a' b' d'' e'' fis'' |
  g'' e'' d'' c'' b' a' g' b' |

  a'4 a''8 a' g'' a' fis'' a' |
  a'4 e''8 a' b' a' g' b' |
  a'4 a''8 a' g'' a' fis'' a'' |
  g'' e'' d'' c'' b' a' g' b' |

  a'4 a''8 a' g'' a' fis'' a' |
  a'4 e''8 a' b' a' g' b' |
  a' b' c'' d'' e'' g'' fis'' a'' |
  g'' e'' d'' c'' b' a' g' b' |

  c'' a' a' g' a'4 a'8 b' |
  c'' a' a' c'' b' g' b' d'' |
  c'' a' a' g' a'4 e''8 fis'' |
  g'' fis'' g'' e'' d'' b' g' b' |

  c'' a' a' g' a'4 a'8 b' |
  c'' a' a' c'' b' g' b' d'' |
  c'' a' a' g' a'4 e''8 fis'' |
  g'' fis'' g'' e'' d'' b' g' b' |

  \repeat volta 2 {
    c''4 g''8 c'' a'' c'' g'' c'' |
    c''4 g''8 c'' b' a' g' b' |
    c''4 g''8 c'' a'' c'' g'' a'' |
    g'' e'' d'' c'' b' a' g' b' |
    c''4 g''8 c'' a'' c'' g'' c'' |
    c''4 g''8 c'' b' a' g' b' |
  }
  \alternative {
    {
      a' b' c'' d'' e'' g'' fis'' a'' |
      g'' e'' d'' c'' b' a' g' b'
    }
    {
      a' a'' a'' g'' a'' g'' e'' a'' |
      g'' e'' d'' c'' b' a' g' b'
    }
  }
}


GravelWalkChords = \chordmode {
  \time 2/2

  a1:min s2 g2 a1:min g1 a1:min s2 g2 a1:min g1
  a1:min s2 g2 a1:min g1 a1:min s2 g2 a1:min g1
  a1:min s2 g2 a1:min g1 a1:min s2 g2 a1:min g1

  \repeat volta 2 {
    c1 s2 g2 c1 a2:min g2 c1 c2 g2
  }
  \alternative {
    { a1:min g1 }
    { a1:min g1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \GravelWalkChords
  \new Staff { \clef treble \GravelWalk }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Gravel Walk"}}
  }
%}
