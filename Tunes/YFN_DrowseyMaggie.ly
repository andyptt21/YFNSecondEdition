
\version "2.18.0"

% -------------------------------------------------------------------------

DrowseyMaggie = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    e'4 (b'8 e' d'' e' b' e') |
    e'4 (b'8 e' a' fis' d' fis') |
    e'4 (b'8 e' d'' e' b' e') |
    b' (a' b') cis'' d'' a' fis' d' | 
    \break
    e'4 (b'8 e' d'' e' b' e') |
    e'4 (b'8 e' a' fis' d' fis') |
    e'4 (b'8 e' d'' e' b' e') |
    b' (a' b') cis'' d'' a' fis' a' |
  } 
  \break
  \key d \major
  \repeat volta 2 {
    d''4 fis''8 (d'') cis''4 e''8 (cis'') |
    d'' e'' fis'' g'' a'' fis'' g'' e'' |
    d''4 fis''8 (d'') cis''4 e''8 (cis'') |
    b' (a' b') cis'' d'' a' fis' a' | 
    \break
    d''4 fis''8 (d'') cis''4 e''8 (cis'') |
    d'' e'' fis'' g'' a'' fis'' g'' e'' |
    a'' fis'' g'' e'' fis'' d'' e'' cis'' |
    b' (a' b') cis'' d'' a' fis' d'
  }
}

DrowseyMaggieChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    e1:min s2 d2 e1:min s2 d2
    e1:min s2 d2 e1:min s2 d2
  }
  \repeat volta 2 {
    d2 a2 d2 a2 d2 a2 e2:min d2
    d2 a2 d2 a2 d4 a4 d4 a4 e2:min d2
  }
}

%{
\score {
  <<
    \new ChordNames \DrowseyMaggieChords
    \new Staff { \clef treble \DrowseyMaggie }
  >>
  \header { piece = \markup {\fontsize #4.0 "DrowseyMaggie"}}
}
%}
