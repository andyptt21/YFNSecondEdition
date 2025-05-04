
\version "2.18.0"

% -------------------------------------------------------------------------

QuigleysReel = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a'4
    d''4 fis''8 d'' cis'' d'' e'' cis'' |
    d''4 a' r4 a'4 |
    b'8 a' g' fis' g' fis' e' d' |
    cis' d' e' fis' g' a' b' cis'' |
    d''4 fis''8 d'' cis'' d'' e'' cis'' |
    d''4 a' r4 a'8 a' |
    b' a' g' fis' g' [fis' e' d'] |
    \partial 4*3 cis' [d' e' cis'] d'4
  }
  \repeat volta 2 {
    \partial 4 a'8 g' |
    fis'4 a'8 fis' fis' a' a' fis' |
    g'4 b'8 g' g' b' b' g' |
    fis'4 a'8 fis' fis' a' a' fis' |
    g' fis' e' d' cis' d' e' fis' |
    fis'4 a'8 fis' fis' a' a' fis' |
    g'4 b'8 g' g' b' b' g' |
    fis' a' d'' fis'' g'' [e'' cis'' e''] |
    \partial 4*3 d''4 d'' d''
  }
}

QuigleysReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d2 a2 d1 g2 d2 e2:min a2:7 d2 a2:7 d1 g1
    \partial 4*3 a2:7 d4
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 d1 a2 a2:7 d1 g1 d2 a2:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \QuigleysReelChords
  \new Staff { \clef treble \QuigleysReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Quigley's Reel"}}
  }
%}
