
\version "2.18.0"

% -------------------------------------------------------------------------

MairisWedding = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    d'4. e'8 d'4 e' |
    g' a' b'2 |
    a'4 g' e' g' |
    b' a' b'8 d''4. |
    d' e'8 d'4 e' | \break
    g' a' b'4. c''16 b' |
    a'4 g' e' c' |
    d'1
  }
  \repeat volta 2 {
    d''2 d''4. e''8 |
    d''4 c'' b'2 |
    a'4 g' e' g' | \break
    b' a' b'8 d''4. |
    d'' b'8 d''4. e''8 |
    d''4 c'' b'4. c''16 b' |
    a'4 g' e' c' |
    d'1
  }
}

MairisWeddingChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g1 s1 c1 g2 d2:7 g1 s1 c1 d1
  }
  \repeat volta 2 {
    g1 s1 c1 g2 d2:7 g1 s1 c1 d1
  }
}

%{
  \score {
  <<
  \new ChordNames \MairisWeddingChords
  \new Staff { \clef treble \MairisWedding }
  >>
  \header { piece = \markup {\fontsize #4.0 "Mairi's Wedding"}}
  }
%}