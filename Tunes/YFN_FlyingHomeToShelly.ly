
\version "2.18.0"

% -------------------------------------------------------------------------

FlyingHome = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    d'8 g' d'' g' c'' g' b' g' |
    d' g' c'' g' b' g' a' g' |
    d' g' a' g' b' g' a' g' |
    d' e' g' d' e' d' b d' | \break
    d' g' d'' g' c'' g' b' g' |
    d' g' c'' g' b' g' a' g' |
    d' g' a' g' b' g' a' g' |
  }
  \alternative {
    { d'8 e' fis' d' g'2 }
    { d'8 e' fis' d' g' a' b' c'' }
  } \break
  \repeat volta 2 {
    d''4. b'8 a' g' a' b' |
    c''4. b'8 a' g' e'4 |
    e''4. d''8 b' a' g'4 |
    a'8 b' d'' a' b' a' g' b' | \break
    d''4. b'8 a' g' a' b' |
    c'' g' b' g' a' g' e'4 |
    e''4. d''8 b' a' g'4 |
  }
  \alternative {
    { a'8 b' a' fis' g' a' b' c'' }
    { a'8 b' a' fis' g'2 }
  }
}

FlyingHomeChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    g1 a1:min b1:min c2 d2 g1 a1:min b2:min a2:min
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
  \repeat volta 2 {
    g1 a1:min c2 b2:min a2:min d2
    e1:min a1:min c2 a2:min
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \FlyingHomeChords
  \new Staff { \clef treble \FlyingHome }
  >>
  \header { piece = \markup {\fontsize #4.0 "Flying Home to Shelley"}
  opus = \markup {\fontsize #3.0 "Paul Gitlitz"}}
  }
%}