
\version "2.18.0"

% -------------------------------------------------------------------------

JayBird = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a''8 g''
    fis''4 d'' fis'' d'' |
    fis''8 a''4 fis''8 a''4 g''8 fis'' |
    e''4 cis'' e'' cis'' |
    e''8 g''4 e''8 g''4 a''8 g'' | 
    \break
    fis''4 d'' fis'' d'' |
    fis''8 a''4 fis''8 a''4 b'8 cis'' |
    d'' cis'' d'' b' a' [b' a' g'] |
    \partial 4*3 fis'4 d' d'
  } 
  \break
  \repeat volta 2 {
    \partial 4 e'8 fis' |
    g'4 b' b' a'8 g' |
    fis'4 a' a' cis''8 d'' |
    e''4 e''8 fis'' e''4 d'' |
    cis''8 b' a' b' a'4 e'8 fis' | 
    \break
    g'4 b' b' a'8 g' |
    fis'4 a' a' b'8 cis'' |
    d'' cis'' d'' b' a' [b' a' g'] |
    \partial 4*3 fis'4 d' d'
  }
}

JayBirdChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1 s1 d1 s1 g2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 d1 e1 a1 g1 d1 g2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \JayBirdChords
  \new Staff { \clef treble \JayBird }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jay Bird"}}
  }
%}