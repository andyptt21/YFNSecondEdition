
\version "2.18.0"

% -------------------------------------------------------------------------

MissMonagan = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    g'4 \tuplet 3/2 {b'8 (a' g')} b' (d'') d''4 |
    e''8 fis'' e'' d'' b' d'' d'' e'' |
    g'' a'' g'' e'' d'' e'' g'' a'' |
    b'' a'' g'' b'' a''4 a'' | \break
    g' \tuplet 3/2 {b'8 (a' g')} b' (d'') d''4 |
    e''8 fis'' e'' d'' b' d'' d'' e'' |
    g'' a'' g'' e'' d'' e'' g'' e'' |
    d'' b' g' b' a'4 g'
  } \break
  \repeat volta 2 {
    b'8 d'' d'' e'' d'' b' g' b' |
    c'' a' b' g' a' g' e' fis' |
    g' a' g' e' d' e' g' a' |
    b' a' g' b' a'4 a' | \break
    d'' d''8 (e'') d'' b' g' b' |
    c''4 b'8 (a') b' g' e' g' |
    g' a' g' e' d' e' g' e' |
    d' b g b a4 g
  }
}

MissMonaganChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 c2 d2 g2 e2:min a2:min d2
    g1 c2 d2 g2 c2 d2 g2
  }
  \repeat volta 2 {
    g1 c2 d2 g2 e2:min a2:min d2
    g1 c2 d2 g2 c2 d2 g2
  }
}

%{
  \score {
  <<
  \new ChordNames \MissMonaganChords
  \new Staff { \clef treble \MissMonagan }
  >>
  \header { piece = \markup {\fontsize #4.0 "Miss Monagan"}}
  }
%}
