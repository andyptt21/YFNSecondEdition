
\version "2.18.0"

% -------------------------------------------------------------------------

SwallowtailJig = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8 e'16 (fis') |
    g'8 e' e' b' e' e' |
    g' e' e' b' a' g' |
    fis' d' d' a' d' d' |
    d'' cis'' d'' a' g' fis' |
    g' e' e' b' e' e' |
    g' e' e' b'4 cis''8 |
    d'' cis'' d'' a' [g' fis'] |
    \partial 8*5 g' [e' e'] e'4
  }
  \repeat volta 2 {
    \partial 8 b'8 |
    b' cis'' d'' e''4 fis''8 |
    e''4 fis''8 e'' d'' b' |
    b' cis'' d'' e''4 fis''8 |
    e'' d'' b' d''4. |
    b'8 cis'' d'' e''4 fis''8 |
    e''4 fis''8 e'' d'' b' |
    d'' cis'' d'' a' [g' fis'] |
    \partial 8*5 g' [e' e'] e'4
  }
}

SwallowtailChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    e2.:min s2. d2. s2.
    e2.:min s2. d2.
    \partial 8*5 e4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    e2.:min s2. s2. s4. d4.
    e2.:min s2. d2.
    \partial 8*5 e4.:min s4
  }
}

%{
  \score {
  <<
  \new ChordNames \SwallowtailChords
  \new Staff { \clef treble \SwallowtailJig }
  >>
  \header { piece = \markup {\fontsize #4.0 "Swallowtail Jig"}}
  }
%}
