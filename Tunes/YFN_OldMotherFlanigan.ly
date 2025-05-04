
\version "2.18.0"

% -------------------------------------------------------------------------

OldMotherFlanigan = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    g''4 g'' e'' d'' |
    b' b' a'8 g' e' d' |
    g'4 g' d'8 e' g' a' |
    b' a' b' c'' d''4 e''8 fis'' |
    g''4 g'' e'' d'' |
    b' b' a'8 g' e' d' |
    g'4 g' d'8 e' g' a' |
    b' g' a' fis' g'2 |
  }
  \repeat volta 2 {
    g'4. e'8 d' e' g' a' |
    b'4 b' a'8 g' e' d' |
    g'4. e'8 d' e' g' a' |
    b' a' b' c'' d''4 a'8 b' |
    c''4 e''8 c'' b'4 d'' |
    b' b' a'8 g' e' d' |
    g'4 g' d'8 e' g' a' |
    b' g' a' fis' g'2
  }
}

OldMotherFlaniganChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 s1 s1 s2 d2 g1 s1 s1 d2 g2
  }
  \repeat volta 2 {
    g1 s1 s1 s2 d2 c2 g2 s1 s1 d2 g2
  }
}

%{
  \score {
  <<
  \new ChordNames \OldMotherFlaniganChords
  \new Staff { \clef treble \OldMotherFlanigan }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Mother Flanigan"}}
  }
%}
