
\version "2.18.0"

% -------------------------------------------------------------------------

FrostyMorning = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    e'8 d' e' g' a'4 a' |
    a'8 b' c'' d'' e''4 a' |
    b'4. a'8 g'4 d' |
    g'8 a' b' c'' d''2 |
    e'8 d' e'^\markup { \null { (F) }} g' a'4 a' |
    a'8^\markup { \null { (F) }} b' c'' d'' e''4 e''8 d'' |
    c'' b' a' c'' b' a' g'4 |
    a'2 a'
  }
  \repeat volta 2 {
    e''4 a'' a''2 |
    a''8 b'' a'' g'' e''4 e'' |
    e''8 d'' e'' fis'' g''4 g'' |
    e''8 d'' c'' d'' e''4 e'' |
    a' a' c''2 |
    d''4 d'' e''4. d''8 |
    c'' b' a' c'' b' a' g'4 |
    a'2 a'
  }
}

FrostyMorningChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1:min s1 g1 s1
    a1:min s2 e2:min a2:min e2:min a1:min
  }
  \repeat volta 2 {
    a1:min s1 c2 g2 a2:min e2:min
    a1:min g2 c2 a2:min e2:min a1:min
  }
}


  \score {
  <<
  \new ChordNames \FrostyMorningChords
  \new Staff { \clef treble \FrostyMorning }
  >>
  \header { piece = \markup {\fontsize #4.0 "Frosty Morning"}}
  }
%}