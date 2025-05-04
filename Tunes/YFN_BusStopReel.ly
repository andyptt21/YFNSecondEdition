
\version "2.18.0"

% -------------------------------------------------------------------------

BusStopReel = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    a'4 e''8 a' d'' a' c''4 |
    a'8 b' c'' a' b' a' g' b' |
    a'4 e''8 a' d'' a' c''4 |
    c''8 d'' e'' fis'' g'' e'' d'' b' |
    a'4 e''8 a' d'' a' c''4 | \break
    a'8 b' c'' a' b' a' g'4 |
    f'8 g' a' c'' b' a' g' b' |
    c'' a' b' g' a'2 |
  }
  \repeat volta 2 {
    e''8 a''~ a'' g'' e'' d'' c'' b' |
    a' b' c'' d'' e''2 |
    e''8 a''~ a'' g'' e'' d'' c''4 | \break
    d''8 e'' fis'' d'' e''2 |
    e''8 a''~ a'' g'' e'' d'' c'' b' |
    a' b' c'' d'' e''4 d''8 c'' |
    b' a' g' f' e' f' g' b' |
    c'' a' b' g' a'2
  }
}

BusStopReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1:min s2 g2 a1:min c2 g2 a1:min s2 g2 f2 g2 a1:min
  }
  \repeat volta 2 {
    a1:min s1 s2 c2 d2 e2 a1:min s1 g1 a1:min
  }
}

%{
  \score {
  <<
  \new ChordNames \BusStopReelChords
  \new Staff { \clef treble \BusStopReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bus Stop Reel"}
  opus = \markup {\fontsize #3.0 "Anita Anderson"}}
  }
%}
