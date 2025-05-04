
\version "2.18.0"

% -------------------------------------------------------------------------

Ricketts = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {a'8 (b' cis'')}
    d''8 cis'' d'' a' fis' a' d'' fis'' |
    e'' d'' cis'' b' a'4-. g''-. |
    fis''8-. g'' a'' fis'' g'' fis'' e'' d'' |
    e'' d'' cis'' b' a' g'' fis'' e'' | \break
    d'' cis'' d'' a' fis' a' d'' fis'' |
    e'' d'' cis'' b' a'4-. g''-. |
    fis''8 a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''4 d'' d''
  }
  \repeat volta 2 {
    \partial 4 fis''8-. g''-.
    a'' fis'' a'' fis''-. d''4-. g''8 (a'') |
    b'' g'' b'' g'' e''4-. fis''8 (g'') | \break
    a'' fis'' b'' a'' g'' fis'' e'' d'' |
    e'' d'' cis'' b' a' g'' fis'' e'' |
    d'' cis'' d'' a' fis' a' d'' fis'' |
    e'' d'' cis'' b' a'4-. g''-. |
    fis''8 a'' fis'' d'' e'' [g'' e'' cis''] |
    \partial 4*3 d''4 d'' d''
  }
}

RickettsChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 a2:7 d2 g2 a1:7
    d1 g2 a2:7 d2 a2:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 d1 a1:7
    d1 g2 a2:7 d2 a2:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \RickettsChords
  \new Staff { \clef treble \Ricketts }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ricketts"}}
  }
%}
