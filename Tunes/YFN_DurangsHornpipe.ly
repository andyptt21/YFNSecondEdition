
\version "2.18.0"

% -------------------------------------------------------------------------

Durangs = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    d'8 e' fis' e' d' e' fis' a' |
    b'4 b'8 d'' b' a' fis' e' |
    d' e' fis' e' d' e' fis' d' |
    b a b cis' d'4 d' | \break
    d'8 e' fis' e' d' e' fis' a' |
    b'4 b'8 d'' b' a' fis' g' |
    a' b' d'' e'' fis'' d'' e'' cis'' |
    d''4. cis''8 d''2
  } \break
  \repeat volta 2 {
    fis''4 fis''8 a'' fis'' e'' d'' a' |
    b'4 b'8 d'' b' a' fis' a' |
    g' d' fis' d' e'4 a' |
    e''4. fis''8 e''4 fis'' |
    fis'' fis''8 a'' fis'' e'' d'' a' |
    b'4 b'8 d'' b' a' fis' g' |
    a' b' d'' e'' fis'' d'' e'' cis'' |
    d''4. cis''8 d''2
  }
}

DurangsChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 g1 d1 a2 d2
    d1 g1 a1 d1
  } \break
  \repeat volta 2 {
    d1 g1 e1:min a1
    d1 g1 a1 d1
  }
}

%{
  \score {
  <<
  \new ChordNames \DurangsChords
  \new Staff { \clef treble \Durangs }
  >>
  \header { piece = \markup {\fontsize #4.0 "Durang's Hornpipe"}}
  }
%}
