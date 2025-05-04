
\version "2.18.0"

% -------------------------------------------------------------------------

RoundTheHorn = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {d'8 (e'8 fis'8)}
    g'4 g'8 a' b' a' g' a' |
    b' d''4 e''8 d''2 |
    c''8 d'' e'' fis'' e''4 g'' |
    a''2. g''8 a'' | \break
    b''4 b'' a''8 g'' fis'' a'' |
    g'' fis'' e'' d'' b' a' g' b' |
    a'4 d'' b'8 a' g'4 |
    \partial 4*3
    e'2.
  } \break
  \repeat volta 2 {
    \partial 4 s4
    e''4. fis''8 e''4 d'' |
    b'2. b'4 |
    a'4. a'8 g'4 a' |
    b' d''2. | \break
    g''4. a''8 g''4 e'' |
    d''8 e'' d'' c'' b' a' g' b' |
    a'4 d'' b'8 a' g'4 |
    \partial 4*3
    e'2.
  }
}

RoundTheChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s2 d2 c2 e2:min
    d1 g2 d2 e1:min d1
    \partial 4*3 e2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    e1:min g1 a1:min s4 d2.
    g1 d2 g2 d1
    \partial 4*3 e2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \RoundTheChords
  \new Staff { \clef treble \RoundTheHorn }
  >>
  \header { piece = \markup {\fontsize #4.0 "Round the Horn"}
  opus = \markup {\fontsize #3.0 "Jay Unger" } }
  }
%}
