
\version "2.18.0"

% -------------------------------------------------------------------------

PaysDeHaut = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 fis''8 g''
    a''8 fis'' a'' fis'' d''4 e''8 fis'' |
    g'' fis'' g'' e'' cis''4 e''8 fis'' |
    g'' fis'' g'' e'' cis'' a' b' cis'' |
    d'' e'' fis'' g'' a''4 fis''8 g'' |
    a'' fis'' a'' fis'' d''4 e''8 fis'' |
    g'' fis'' g'' e'' cis''4 e''8 fis'' |
    g'' fis'' g'' e'' cis'' [a' b' cis''] |
    \partial 4*3 d''4 fis'' d''
  } \break
  \repeat volta 2 {
    \partial 4 a'4
    fis'8 a' d'' a' fis' a' d'' a' |
    g' b' d'' b' g' b' d'' b' |
    a' b' cis'' d'' e'' fis'' e'' cis'' |
    d'' e'' fis'' g'' a''2 |
    fis'8 a' d'' a' fis' a' d'' a' |
    g' b' d'' b' g' b' d'' b' |
    a' b' cis'' d'' e'' [fis'' e'' cis''] |
    \partial 4*3 d''4 fis'' d''
  }
}

PaysDeHautChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 a1 s1 d1 s1 a1 s1
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 a1 d1 d1 g1 a1
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \PaysDeHautChords
  \new Staff { \clef treble \PaysDeHaut }
  >>
  \header { piece = \markup {\fontsize #4.0 "Pays de Haut"}}
  }
%}
