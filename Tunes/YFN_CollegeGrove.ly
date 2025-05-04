
\version "2.18.0"

% -------------------------------------------------------------------------

CollegeGrove = {
  \time 2/2
  \key d \major

  d'4 fis'16 e' d'8 a' d' fis' d' |
  e'4 c''8 e' d'' e' c'' e' |
  d'16 [d' d'8] fis' [a'] d'' fis'' e'' d'' |
  cis'' a' g' e' \appoggiatura fis' e' d' cis' e' |

  d'4 fis'16 e' d'8 a' d' fis' d' |
  e'4 c''8 e' d'' e' c'' e' |
  d'16 [d' d'8] fis' [a'] d'' fis'' e'' d'' |
  cis'' a' g' e' \appoggiatura fis' e' d' d'4 |

  fis''8 [d''] d''16 [d'' d''8] fis'' a'' g'' fis'' |
  e'' [c''] c''16 c'' c''8 e'' fis'' g'' e'' |
  fis'' d'' d''4 \turn d''8 fis'' e'' d'' |
  cis'' a' g' e' \appoggiatura fis' e' d' d'4 |

  fis''8 [d''] d''16 d'' d''8 fis'' a'' g'' fis'' |
  e'' [c''] c''16 c'' c''8 e'' fis'' g'' e'' |
  d'' fis'' e'' g'' fis''16 [g'' a''8] g'' b'' |
  a'' fis'' g'' e'' fis'' d'' d''4 |

  fis''8 a'' \appoggiatura b'' a'' g'' fis'' d'' d'' fis'' |
  e'' fis'' g'' fis'' e'' c'' c''4 |
  fis''8 a'' \appoggiatura b'' a'' g'' fis'' d'' e'' d'' |
  cis'' a' g' e' \appoggiatura fis' e' d' d'4 |

  fis''8 a'' \appoggiatura b'' a'' g'' fis'' d'' d'' fis'' |
  e'' fis'' g'' fis'' e'' c'' c''4 |
  d''8 fis'' e'' g'' fis''16 [g'' a''8] g'' b'' |
  a'' fis'' g'' e'' fis'' d'' d''4 |

  fis'' d''8 fis'' fis''4 d''8 fis'' |
  e''4 \turn c''8 e'' e''4 \turn c''8 e'' |
  fis''4 d''8 fis'' fis''4 e''8 d'' |
  cis'' a' g' e' \appoggiatura fis' e' d' d'4 |

  fis'' d''8 fis'' d'' fis'' d'' fis'' |
  e''4 \turn c''8 e'' c'' e'' c'' e'' |
  d'' fis'' e'' g'' fis''16 [g'' a''8] g'' b'' |
  a'' fis'' g'' e'' fis'' d'' d''4 \bar "|."
}


CollegeGroveChords = \chordmode {
  \time 2/2

  d1 c1 d1 a1:7 d1 c1 d1 a2:7 d2
  d1 c1 d1 a2:7 d2 d1 c1 d2 g2 a2:7 d2
  d1 c1 d1 a2:7 d2 d1 c1 d2 g2 a2:7 d2
  d1 c1 d1 a1:7 d1 c1 d2 g2 a2:7 d2
}

%{
  \score {
  <<
  \new ChordNames \CollegeGroveChords
  \new Staff { \clef treble \CollegeGrove }
  >>
  \header { piece = \markup {\fontsize #4.0 "College Grove"}}
  }
%}
