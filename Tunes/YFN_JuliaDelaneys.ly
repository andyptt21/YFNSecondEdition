
\version "2.18.0"

% -------------------------------------------------------------------------

JuliaDelany = {
  \time 2/2
  \key c \major
  \repeat volta 2 {
    d''8 c'' a' g' f'4 d'8 f' |
    e'4 c'8 e' f'4 d'8 (c'') |
    d'' c'' a' g' f'4 d'8 (g') |
    a' c'' d'' e'' f'' e'' d'' e'' | \break
    d'' c'' a' g' f'4 d'8 f' |
    e'4 c'8 e' f'4 d'8 (c'') |
    d'' c'' a' g' f'4 d'8 (g') |
    a' c'' d'' c'' d''2
  } \break
  \repeat volta 2 {
    f''8 e'' d'' e'' f'' e'' d'' f'' |
    e'' c'' g'' c'' a'' c'' g'' c'' |
    f'' e'' d'' e'' f'' a'' g'' f'' |
    e'' d'' c'' e'' d'' e'' f'' e'' | \break
    f'' e'' d'' e'' f'' e'' d'' f'' |
    e'' c'' g'' c'' a'' c'' g'' e'' |
    f'' e'' d'' e'' f'' e'' d'' c'' |
    a' d'' d'' c'' d''2
  }
}

JuliaDelanyChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1:min c2 d2:min s1 a2:min d2:min
    s1 c2 d2:min s1 a2:min d2:min
  }
  \repeat volta 2 {
    d1:min c1 d2:min f2 a2:min d2:min s1
    c1 d1:min a2:min d2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \JuliaDelanyChords
  \new Staff { \clef treble \JuliaDelany }
  >>
  \header { piece = \markup {\fontsize #4.0 "Julia Delaney's"}}
  }
%}