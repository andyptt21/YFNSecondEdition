
\version "2.18.0"

% -------------------------------------------------------------------------

FarFromHome = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    g'8 e' d' e' g'4. a'8 |
    b'4 b'8 a' b' c'' d''4 |
    g'8 e' d' e' g'4. b'8 |
    a' g' a' b' a' g' e'4 |
    g'8 e' d' e' g'4 g'8 a' |
    b'4 b'8 a' b' c'' d''4 |
    e''8 d'' e'' fis'' g'' e'' d'' c'' |
    b' g' a' fis' g'2
  }
  \repeat volta 2 {
    g''4. e''8 fis''4. d''8 |
    e'' d'' e'' fis'' e'' d'' b'4 |
    g''8 e'' d'' b' g'4 g'8 b' |
    a' g' a' b' a' g' e'4 |
    g'8 e' d' e' g'4 g'8 a' |
    b'4. a'8 b' c'' d''4 |
    e''8 d'' e'' fis'' g'' e'' d'' c'' |
    b' g' a' fis' g'2
  }
}

FarFromHomeChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 s1 s1 c2 d2:7 g1 s1 c1 d2:7 g2
  }
  \repeat volta 2 {
    g2 d2:7 c1 g1 c2 d2:7 g1 s1 c1 d2:7 g2
  }
}

%{
  \score {
  <<
  \new ChordNames \FarFromHomeChords
  \new Staff { \clef treble \FarFromHome }
  >>
  \header { piece = \markup {\fontsize #4.0 "Far From Home"}}
  }
%}