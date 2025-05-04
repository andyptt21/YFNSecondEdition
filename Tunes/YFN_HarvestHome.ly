
\version "2.18.0"

% -------------------------------------------------------------------------

HarvestHome = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d'8 a' fis' a' d' a' fis' a' |
    d'' e'' fis'' e'' d'' cis'' b' a' |
    e'' a' fis'' a' g'' a' fis'' a' |
    \tuplet 3/2 {e'' fis'' e''} \tuplet 3/2 {d'' cis'' b'}
    \tuplet 3/2 {a' b' a'} \tuplet 3/2 {g' fis' e'} |
    d' a' fis' a' d' a' fis' a' |
    d'' e'' fis'' e'' d'' cis'' b' a' |
    e'' a' fis'' a' g'' e'' cis'' e'' |
  }
  \alternative {
    { d''4 d''8 cis'' d''4 a'8 fis' }
    { d''4 d''8 cis'' d''4 cis''8 d'' }
  }
  \repeat volta 2 {
    e'' a' \tuplet 3/2 {a' g' a'} fis'' a' \tuplet 3/2 {a' g' a'} |
    e'' a' fis'' a' e'' a' \tuplet 3/2 {a' g' a'} |
    e'' a' fis'' a' g'' a' fis'' a' |
    \tuplet 3/2 {e'' fis'' e''} \tuplet 3/2 {d'' cis'' b'}
    \tuplet 3/2 {a' b' a'} \tuplet 3/2 {g' fis' e'} |
    d' a' fis' a' d' a' fis' a' |
    d'' e'' fis'' e'' d'' cis'' b' a' |
    e'' a' fis'' a' g'' e'' cis'' e'' |
  }
  \alternative {
    { d''4 d''8 cis'' d''4 cis''8 d'' }
    { d''4 d''8 cis'' d''4 a'8 fis' }
  }
}

HarvestHomeChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 a4 d4 g4 d4 a2 g4 a4 d1 s1 e2:min a2
  }
  \alternative {
    { d4 g4 d2 } { d4 g4 d2 }
  }
  \repeat volta 2 {
    a2 d2 a4 d4 a2 a4 d4 g4 a4 s2 g4 a4 d1 s1 e2:min a2
  }
  \alternative {
    { d4 g4 d2 } { d4 g4 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \HarvestHomeChords
  \new Staff { \clef treble \HarvestHome }
  >>
  \header { piece = \markup {\fontsize #4.0 "Harvest Home"}}
  }
%}