
\version "2.18.0"

% -------------------------------------------------------------------------

Coleraine = {
  \time 6/8
  \key c \major
  \partial 8 d'8
  \repeat volta 2 {
    e'8 a' a' a' b' c'' |
    b' e'' e'' e''4 d''8 |
    c'' b' a' a' b' c'' |
    b' gis' e' e'4 d'8 | \break
    e' a' a' a' b' c'' |
    b' e'' e'' e''4 d''8 |
    c'' b' a' b' gis' e' |
  }
  \alternative {
    { a'4 a'8 a'4 d'8 }
    { a'4. a'4 b'8 }
  } \break
  \repeat volta 2 {
    c''4 c''8 c'' d'' c'' |
    b' g'' g'' g''4 gis''8 |
    a'' e'' d'' c'' b' a' |
    gis' b' gis' e' fis' gis' | \break
    a' gis' a' b' a' b' |
    c'' d'' e'' f'' e'' d'' |
    c'' b' a' b' gis' e' |
  }
  \alternative {
    { a'4. a'4 b'8 }
    { \partial 8*5 a'4. a'4 }
  }
}

ColeraineChords = \chordmode {
  \time 6/8
  \partial 8 s8
  \repeat volta 2 {
    a2.:min e2. a2.:min e2. a2.:min e2. a4.:min e4.
  }
  \alternative {
    { a2.:min } { a2.:min }
  }
  \repeat volta 2 {
    c2. g2. a2.:min e2. a4.:min e4. a4.:min d4.:min a4.:min e4.
  }
  \alternative {
    { a2.:min }
    { \partial 8*5 a4.:min s4 }
  }
}

%{
  \score {
  <<
  \new ChordNames \ColeraineChords
  \new Staff {  \clef treble \Coleraine }
  >>
  \header { piece = \markup {\fontsize #4.0 "Coleraine"}}
  }
%}