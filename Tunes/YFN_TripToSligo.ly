
\version "2.18.0"

% -------------------------------------------------------------------------

TripToSligo = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    e'4 e''8 b' g' e' |
    d'4 d''8 a' fis' d' |
    e'4 e''8 b' g' e' |
    g' fis' e' e''4 fis''8 | \break
    g'' fis'' e'' d'' cis'' b' |
    a' b' g' fis' e' d' |
    e' fis' g' a' b' c'' |
  }
  \alternative {
    { b' g' fis' e'4 d'8 }
    { b' g' fis' e'4 e''8 }
  } \break
  \repeat volta 2 {
    e'' b' e'' g'' fis'' e'' |
    d'' a' d'' fis'' e'' d'' |
    e'' b' e'' g'' fis'' e'' |
    fis''16 g'' a''8 fis'' g'' fis'' e'' | \break
    fis''16 g'' a''8 fis'' g'' fis'' e'' |
    d'' cis'' b' a' fis' a' |
    e' fis' g' a' b' c'' |
  }
  \alternative {
    { b' g' fis' e'4 e''8 }
    { b' g' fis' e'4 d'8 }
  }
}

TripToSligoChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    e2.:min d2. e2.:min s2. s2. d2. e4.:min d4.
  }
  \alternative {
    { s4. e4.:min }
    { s4. e4.:min }
  }
  \repeat volta 2 {
    e2.:min d2. e2.:min d2. s2. s2. e4.:min d4.
  }
  \alternative {
    { s4. e4.:min }
    { s4. e4.:min }
  }
}

%{
  \score {
  <<
  \new ChordNames \TripToSligoChords
  \new Staff { \clef treble \TripToSligo }
  >>
  \header { piece = \markup {\fontsize #4.0 "Trip To Sligo"}}
  }
%}
