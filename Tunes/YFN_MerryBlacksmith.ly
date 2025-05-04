
\version "2.18.0"

MerryBlackSmith =
\transpose c c' {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4
    a4 (
    d'4) d'8 (a) b a fis a |
    a b d' a (b a) fis a |
    a b d' e' (fis'4) e'8 d' |
    b e' e' d' e' g' (fis' e') | \break
    d'4 d'8 (a) b a fis a |
    a b d' a (b a) fis a |
    a b d' e' (fis' [d') e' cis'] |
    \partial 4*3
    d' b a fis (d4) |
  } \break
  \repeat volta 2 {
    \partial 4
    fis'8 g'8
    a'4 a'8 g' fis' (g') fis' e' |
    d'4 d'8 (a) b a fis a |
    a b d' e' (fis'4) e'8 d' |
    b e' e' d' e' g' (fis' e') | \break
    a'8 b' a' g' (fis' g') fis' e' |
    d'4 d'8 (a) b a fis a |
    a b d' e' (fis' [d') e' cis'] |
    \partial 4*3 d' b a fis (d4)
  }
}

MerryBlackSmithChords = \chordmode {
  \repeat volta 2 {
    \partial 4
    s4
    d1 s1 g1 a1
    d1 s1 g1
    \partial 4*3
    a2.
  }
  \repeat volta 2 {
    \partial 4
    s4
    b1:min s1 a1 s1
    g1 s1 e2:min fis2:min
    \partial 4*3
    g2 a4
  }
}

%{
  \score {
  <<
  \new ChordNames \MerryBlackSmithChords
  \new Staff { \clef treble \MerryBlackSmith }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Merry Blacksmith (Paddy on the Railroad)"}}
  }
%}
