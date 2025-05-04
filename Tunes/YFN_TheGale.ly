
\version "2.18.0"

% -------------------------------------------------------------------------

TheGale = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    a'8 e' e'4 a' a'8 b' |
    c'' b' c'' e'' a''4 a'' |
    f''8 d'' d''4 e''8 c'' c''4 |
    b'8 a' b' c'' b'4 gis'' | \break
    a''8 e'' e''4 a'' a''8 b'' |
    a'' g'' e'' d'' c''4 c'' |
    b'8 c'' b' c'' b' e'' b' e'' |
    b' gis'' b' gis'' a''4 a'' |
  } \break
  \repeat volta 2 {
    a''8 e'' cis'' e'' a'' e'' cis'' e'' |
    a'' f'' d'' f'' a'' f'' d'' f'' |
    g'' d'' b' d'' g'' d'' b' d'' |
    g'' e'' c'' e'' g'' e'' c'' e'' | \break
    f'' d'' a' d'' f'' d'' a' d'' |
    e'' c'' a' c'' e'' c'' a' c'' |
    b' c'' b' c'' b' e'' b' e'' |
    b' gis'' b' gis'' a''4 a''
  }
}

TheGaleChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1:min s1 d2:min a2:min e1 a1:min s1 e1 s2 a2:min
  }
  \repeat volta 2 {
    a1 d1:min g1 c1 d1:min a1:min e1 s2 a2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \TheGaleChords
  \new Staff { \clef treble \TheGale }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Gale"}
  opus = \markup {\fontsize #3.0 "Susan Conger"}}
  }
%}
