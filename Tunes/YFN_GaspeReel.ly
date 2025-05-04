
\version "2.18.0"

% -------------------------------------------------------------------------

GaspeReel = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''4 e''8 fis'' e''4 d''8 b' |
    a' fis' a' fis' b'4 a' |
    g'' fis''8 g'' fis''4 e''8 d'' |
    b' a' b' cis'' \tuplet 3/2 {b' (cis'' b')} a'4 | 
    \break
    fis'' e''8 fis'' e''4 d''8 b' |
    a' fis' a' fis' b'4 a' |
    g'' fis''8 g'' fis''4 e''8 d'' |
    b'4 cis'' d''2
  } 
  \break
  \repeat volta 2 {
    e''4 fis'' g''8 fis'' e''4 |
    fis'' g'' a''2 |
    e''4 fis'' g''8 fis'' e'' d'' |
    b'4 cis'' \tuplet 3/2 {b'8 (cis''8 b'8)} a'4 | 
    \break
    e'' fis'' g''8 fis'' e''4 |
    fis'' g'' a''2 |
    e''4 fis'' g''8 fis'' e'' d'' |
    b'4 cis'' d''2
  }
}

GaspeReelChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 a1:7 s1 d1 s1 a1:7 g4 a4:7 d2
  }
  \repeat volta 2 {
    a1:7 d1 a1:7 s1 s1 d1 a1:7 g4 a4:7 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \GaspeReelChords
  \new Staff { \clef treble \GaspeReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Gaspe Reel"}}
  }
%}