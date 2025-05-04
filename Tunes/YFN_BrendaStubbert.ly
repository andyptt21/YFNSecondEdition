
\version "2.18.0"

% -------------------------------------------------------------------------

BrendaStubbert = {
  \time 2/2
  \key g \major
  \repeat volta 2 {
    \partial 8 e'8
    a'4 b'8 a' g' a' a' b' |
    \tuplet 3/2 { a'8-. a'-. a'8-. } b'8 [a'] e'' d'' d'' e'' |
    \tuplet 3/2 { g'8-. g'-. g'8-. } b'8 [a'] b' g' g' b' |
    c''4 b'8 a' b' g' g' b' |
    \tuplet 3/2 { a'8-. a'-. a'8-. } b'8 [a'] g' a' a' b' |
    a'4 b'8 a' e'' [d'' d'' a''] |
    g'' [e'' d'' b'] g' [a' b' d'']
    \partial 8*7 e''4 d''8 [b'] e'' [a'] a'
  }
  \repeat volta 2 {
    \partial 8 b'8 |
    a'4 a'' a' g'' |
    a'8 a'' g'' e'' a'' g'' e'' g'' |
    g' g' b' a' b' g' g' b' |
    c''4 b'8 a' b' g' g' b' |
  }
  \alternative {
    {
      a' a' a''4 a'8 a' g''4 |
      a'8 a'' g''8 e'' a'' g'' e'' a'' |
      g'' e'' d'' b' g' [a' b' d''] |
      \partial 8*7 e''4 d''8 [b'] e'' [a'] a'
    }
    {
      a'4 b'8 a' g' a' a' b' |
      \tuplet 3/2 { a'8-. a'-. a'8-. } b'8 [a'] e'' d'' e'' a'' |
      g'' e'' d'' b' g' [a' b' d''] |
      \partial 8*7 e''4 d''8 [b'] e'' [a'] a'
    }
  }
}

BrendaStubbertChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 8 s8
    a1:min s1 g1 c2 g2 a1:min s1 g1
    \partial 8*7 s2 a4.:min
  }
  \repeat volta 2 {
    \partial 8 s8
    a1:min s1 g1 c2 g2
  }
  \alternative {
    { a1:min s1 g1 \partial 8*7 s2 a4.:min }
    { a1:min s1 g1 \partial 8*7 s2 a4.:min }
  }
}

%{
\score {
  <<
    \new ChordNames \BrendaStubbertChords
    \new Staff { \clef treble \BrendaStubbert }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "Brenda Stubbert"}
    opus = \markup {\fontsize #3.0 "Jerry Holland"}
  }
}
%}
