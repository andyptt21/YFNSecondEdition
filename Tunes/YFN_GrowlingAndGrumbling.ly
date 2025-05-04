
\version "2.18.0"

% -------------------------------------------------------------------------

GrowlingAndGrumbling = {
  \time 4/4
  \key c \major
  \repeat volta 2 {
    \partial 4 a8^"4 times" b
    c'8 a <a e'> a (c' a) <a e'> a( |
    b g) <g d'> g (b g) <a d'> (b |
    c' a) <a e'> a (c' [a) <a e'> a(] |
    \partial 4*3 b g) <g d'> g (a4)
  }
  \key a \major
  \repeat volta 2 {
    \partial 4 cis''8 (d'')
    e'' fis'' e'' d'' cis'' d'' e'' fis'' |
    g'' e'' d'' c'' b' a' cis'' d'' |
    e'' fis'' e'' d'' cis'' a' cis'' d'' |
    e''4 a''8 (gis'') a''4 e''8 (fis'') |
    g'' fis'' e'' d'' cis'' d'' e'' fis'' |
    g'' e'' d'' c'' b' a' b' d'' |
    c''4 \tuplet 3/2 { b'8 (c'' b') } a' [g' e' d'] |
    \partial 4*3 e' (d') c'4 a
  }
}

GrowlingAndGrumblingChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    a1:min g1 a1:min
    \partial 4*3 g2 a4:min
  }
  \repeat volta 2 {
    \partial 4 s4
    a1 g1 a1 g1 a1 g1 a1:min
    \partial 4*3 e2:min a4:min
  }
}

%{
  \score {
  <<
  \new ChordNames \GrowlingAndGrumblingChords
  \new Staff { \clef treble \GrowlingAndGrumbling }
  >>
  \header { piece = \markup {\fontsize #4.0 "Growling Old Man & Grumbling Old Woman"}}
  }
%}
