
\version "2.18.0"

% -------------------------------------------------------------------------

Petronella = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis'4 a'8 fis' e'4 a'8 fis' |
    d'4 d' d' fis'8 a' |
    d''4 cis''8 d'' e''4 d'' |
    cis''8 d'' b' cis'' a'4 d''8 a' | \break
    fis'4 a'8 fis' e'4 a'8 fis' |
    d'4 d' d' fis'8 a' |
    d''4 cis''8 d'' e''4 cis'' |
    d''2 d''4 d''8 a' |
  } \break
  \repeat volta 2 {
    fis'4 fis''8 d'' a'4 a''8 fis'' |
    g'' a'' g'' fis'' e'' d'' cis'' b' |
    a'4 e''8 cis'' a'4 g''8 e'' |
    fis'' a'' fis'' d'' a' d'' a' fis' | \break
    d'4 fis''8 d'' a'4 a''8 fis'' |
    g'' a'' g'' fis'' e'' d'' cis'' b' |
    a'4 e''8 cis'' a' g'' e'' cis'' |
    d''4 fis'' d'' a'8 g'
  }
}

PetronellaChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d2 a2:7 d1 s2 a2:7 s1 d2 a2:7 d1 s2 a2:7 d1
  }
  \repeat volta 2 {
    d1 g2 e2:m a1:7 d1 d1 g2 e2:m a1:7 d1
  }
}

%{
  \score {
  <<
  \new ChordNames \PetronellaChords
  \new Staff { \clef treble \Petronella }
  >>
  \header { piece = \markup {\fontsize #4.0 "Petronella"}}
  }
%}
