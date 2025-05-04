
\version "2.18.0"

% -------------------------------------------------------------------------

ArkansasTrav = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4
    \tuplet 3/2 {a'8 b' cis''}
    d''8 fis'' e'' d'' b'4 b' |
    a' a' d''2 |
    e''4 e'' fis'' fis'' |
    e''8 fis'' e'' d'' b'4 a' | 
    \break
    d''8 fis'' e'' d'' b'4 b' |
    a' a' d''2 |
    d''8 cis'' d'' a' b' [d'' a' g'] |
    \partial 4*3
    fis' d' e'4 d'
  } 
  \break
  \repeat volta 2 {
    \partial 4
    fis''8 g'' |
    a'' g'' fis'' a'' g'' fis'' e'' g'' |
    fis'' e'' d'' fis'' e'' a' b' cis'' |
    d'' cis'' d'' fis'' e''4 e'' |
    fis'' d'' e'' fis''8 g'' | 
    \break
    a'' g'' fis'' a'' g'' fis'' e'' g'' |
    fis'' e'' d'' fis'' e'' a' b' cis'' |
    d'' cis'' d'' a' b' [d'' a' g'] |
    \partial 4*3
    fis' d' e'4 d'
  }
}

ArkansasChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    s4
    d1 s1 a1 a1:7 d1 s1 s2 b2:min
    \partial 4*3
    g4 a4 d4
  } 
  \break
  \repeat volta 2 {
    \partial 4
    s4
    d2 a2 d2 a2 d2 a2 d2 a2 d2 a2 d2 a2 d2 b2:min
    \partial 4*3
    g4 a4 d4
  }
}

%{
\score {
  <<
    \new ChordNames \ArkansasChords
    \new Staff { \clef treble \ArkansasTrav }
  >>
  \header { piece = \markup {\fontsize #4.0 "Arkansas Traveller"}}
}
%}
