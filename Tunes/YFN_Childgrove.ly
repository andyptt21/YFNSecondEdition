
\version "2.18.0"

% -------------------------------------------------------------------------

Childgrove = {
  \time 2/2
  \key f \major
  \repeat volta 2 {
    \partial 4 a'4 |
    a'4 d'' d'' e'' |
    f''2 e''4 d'' |
    g'' f'' e'' d'' |
    e''4. d''8 c'' bes' a'4 |
    a' d'' d'' e'' |
    f''2 e''4 a'' |
    g''4. f''8 e'' [f'' e'' d''] |
    \partial 4*3 d''2.
  }
  \repeat volta 2 {
    \partial 4 f''8 g'' |
    a''4 f'' f''8 g'' a'' f'' |
    g''4 e'' e''8 f'' g'' e'' |
    f''4 d'' d''8 e'' f'' d'' |
    e''4 a' a' f''8 g'' |
    a''4 f'' f''8 g'' a'' f'' |
    g''4. f''8 e'' f'' g'' e'' |
    f''4 e''8 d'' e'' d'' cis''4 |
    \partial 4*3 d''2.
  }
}

ChildgroveChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1:min s1 c1 a1:min d1:min s1 c1
    \partial 4*3 d2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    f1 c1 d1:min a1:min f1 c1 d2:min a2
    \partial 4*3 d2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \ChildgroveChords
  \new Staff { \clef treble \Childgrove }
  >>
  \header { piece = \markup {\fontsize #4.0 "Childgrove"}}
  }
%}