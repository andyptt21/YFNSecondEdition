
\version "2.18.0"

% -------------------------------------------------------------------------

SenecaSquareDance = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 4 a'4
    b'2 b'8 a' b' c'' |
    d''4 b'~ b' a' |
    b'2 b'8 a' b'4 |
    a'8 [g'~] g' [e'] g'4 a' | \break
    b'2 b'8 a' b' c'' |
    d''4 b'~ b' a'8 b' |
    c'' b' a' g' fis' [d' e' fis'] |
    \partial 4*3 g'2.
  } \break
  \repeat volta 2 {
    \partial 4  d''4 |
    g'' g''8 a'' g'' fis'' e''4 |
    d''8 [b'~] b' [d''] b'4 e''8 fis'' |
    g'' fis'' e'' fis'' g''4 a'' |
    b''8 [e''~] e'' [fis''] e''4 e''8 fis'' | \break
    g''4 g''8 a'' g'' fis'' e''4 |
    d''8 [b'~] b' [d''] b'4 a'8 b' |
    c'' b' a' g' fis' [d' e' fis'] |
    \partial 4*3 g'2.
  }
}


SenecaSquareDanceChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 e1:min s1 g1 s1 d1
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 c1 e1:min c1 g1 d1
    \partial 4*3 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \SenecaSquareDanceChords
  \new Staff { \clef treble \SenecaSquareDance }
  >>
  \header { piece = \markup {\fontsize #4.0 "Seneca Square Dance"}}
  }
%}
