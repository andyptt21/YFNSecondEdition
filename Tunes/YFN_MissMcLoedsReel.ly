
\version "2.18.0"

% -------------------------------------------------------------------------

MissMcLoeds = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    g'4 g'' e''8 d'' e'' g'' |
    b'4 b'8 a' b' c'' b' a' |
    g'4 g'' e''8 d'' e'' g'' |
    a'4 a'8 g' a' c'' b' a' | \break
    g'4 g'' e''8 d'' e'' g'' |
    b'4 b'8 a' b'4 d'' |
    e'' e''8 fis'' e'' d'' e'' fis'' |
    g'' e'' d'' b' a' c'' b' a' |
  } \break
  \repeat volta 2 {
    g' a' b' c'' d'' b' g' a' |
    b'4 b'8 a' b' c'' b' a' |
    g' a' b' c'' d'' b' g' b' |
    a'4 a'8 g' a' c'' b' a' | \break
    g' a' b' c'' d'' b' g' a' |
    b'4 b'8 a' b'4 d'' |
    e'' e''8 fis'' e'' d'' e'' fis'' |
    g'' e'' d'' b' a' c'' b' a'
  }
}

MissMcLoedsChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g1 s1 s1 d1 g1 s1 c1 d1
  }
  \repeat volta 2 {
    g1 s1 s1 d1 g1 s1 c1 d1
  }
}

%{
  \score {
  <<
  \new ChordNames \MissMcLoedsChords
  \new Staff { \clef treble \MissMcLoeds }
  >>
  \header { piece = \markup {\fontsize #4.0 "Miss McLoed's Reel"}}
  }
%}