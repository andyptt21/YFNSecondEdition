
\version "2.18.0"

% -------------------------------------------------------------------------

Dubuque = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    a8 b d' e' (d'4) d'8 e' ( |
    fis'4) b'8 fis' a'2 |
    b'4. d''8 (b') a' fis' e' |
    d' e' fis' d' (e' d') b4 |
    a8 b d' e' (d'4) d'8 e' ( |
    fis'4) b'8 fis' a'2 |
    \break
    b'4. d''8 (b') a' fis' e' ( |
    d' e') fis' e' d'2
  }
  \repeat volta 2 {
    fis'8 a'4 (fis'8) a'4 b'8 a' |
    fis' e' d' fis' (e' d') b4 |
    g'8 b'4 g'8 b'4 g'8 a' |
    b' a' g' b' a' g' e' d' |
    \break
    fis' a'4 fis'8 a'4 b'8 a' |
    fis' e' d' fis' (e' d') b4 |
    fis'8 e' d' fis' e' d' b4 |
  }
  \alternative {
    { a8 b d' e' fis' (e' d'4) }
    { a8 b d' e' (d'2) }
  }
}

DubuqueChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 g1 d2 a2 d1 s1 g1 a2 d2
  }
  \repeat volta 2 {
    d1 s1 g1 s1 d1 s1 s1
  }
  \alternative {
    { a2 d2 }
    { a2 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \DubuqueChords
  \new Staff { \clef treble \Dubuque }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dubuque"}}
  }
%}
