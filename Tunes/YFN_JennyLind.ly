
\version "2.18.0"

% -------------------------------------------------------------------------

JennyLind = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a'8 g'
    fis'4 a' g' b' |
    a' fis'' fis''8 e'' fis''4 |
    g' e'' e''8 d'' e''4 |
    fis' d'' d'' a'8 g' |
    fis'4 a' g' b' |
    a' fis'' fis''8 e'' fis''4 |
    g'' e'' e''8 [g'' fis'' e''] |
  }
  \alternative {
    { \partial 4*3 d''4 fis'' d'' }
    { d'' fis'' d''2 }
  }
  \key g \major
  \repeat volta 2 {
    g''4 g''8 fis'' e'' g'' fis'' e'' |
    d''4 b' b'8 a' b'4 |
    c'' a' a'8 g' a'4 |
    b' g' g'2 |
    g''4 g''8 fis'' e'' g'' fis'' e'' |
    d''4 b' b'8 a' b'4 |
    c'' a' a'8 c'' b' a' |
    g'4 b' g'2
  }
}

JennyLindChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d2 a2:7 d1 a1:7 d1 d2 a2:7 d1 a1:7
  }
  \alternative {
    { \partial 4*3 d2. } { d1 }
  }
  \repeat volta 2 {
    g1 s1 d1:7 g1 s1 s1 d1:7 g1
  }
}

%{
  \score {
  <<
  \new ChordNames \JennyLindChords
  \new Staff { \clef treble \JennyLind }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jenny Lind Polka"}}
  }
%}