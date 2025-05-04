
\version "2.18.0"

% -------------------------------------------------------------------------

CamptownRaces = {
  \time 2/4
  \key d \major
  \repeat volta 2 {
    a'8 a' fis' a' |
    b' a' fis' r8 |
    fis'8 e'4. |
    fis'8 e'4. |
    a'8 a' fis' a' |
    b' a' fis' r8 |
    e'4 fis'8 e' |
    d'4. r8
  }
  \repeat volta 2 {
    d'8. d'16 fis'8 a' |
    d''4. r8 |
    b'8. b'16 d''8 b' |
    a'4 r8 a' |
    a' a' fis'16 fis' a' a' |
    b'8 a' fis'4 |
    e'8 fis'16 g' fis' e'8 e'16 |
    d'4 s4
  }
}

CamptownRacesChords = \chordmode {
  \time 2/4
  \repeat volta 2 {
    d2 s2 a2 s2 d2 s2 a2:7 d2
  }
  \repeat volta 2 {
    d2 s2 g2 d2 s2 s2 a2:7 d2
  }
}

%{
\score {
  <<
    \new ChordNames \CamptownRacesChords
    \new Staff { \clef treble \CamptownRaces }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Camptown Races"}
    opus = \markup {\fontsize #3.0 "Stephen Foster"}
  }
}
%}
