
\version "2.18.0"

% -------------------------------------------------------------------------

PigAnkle = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 a''8 fis''
    g''8 e'' cis'' a'~ a'4 a''8 fis'' |
    g'' e'' cis'' a'~ a' a' (b') a' |
    d'' (a') b' a' d'' (a') b' a' |
    d'' b' a' fis'~ fis'4 a''8 fis'' |
    g'' e'' cis'' a'~ a'4 a''8 fis'' |
    g'' e'' cis'' a'~ a' a' (b') a' |
    d'' (a') b' a' d'' (a') b' a' |
    d'' b' a' fis'~ fis' a' gis' a' |
    b'2 d''8 cis'' d'' e'' |
    fis'' (a''4) b''8~ b'' a'' fis'' a' |
    fis'' a' fis'' a' a'' fis'' e''4 |
    \partial 4*3 d''2.
  }
  \repeat volta 2 {
    \partial 4 cis''8 b' |
    a' b' cis'' a' b' cis'' a' b' |
    cis'' a' b' cis''~ cis'' b' a' fis' |
    a'4 d''8 a' b' d'' a' b' |
    d'' a' b' d''~ d'' b' a' fis' |
    a' b' cis'' a' b' cis'' a' b' |
    cis'' a' b' cis''~ cis'' b' a' fis' |
    d'4 d''8 a' b' d'' a' b' |
    d'' a' b' d''~ d'' b' a'4 |
    b'2 d''8 cis'' d'' e'' |
    fis'' (a''4) b''8~ b'' a'' fis'' a' |
    fis'' a' fis'' a' a'' fis'' e''4 |
    \partial 4*3 d''2.
  }
}

PigAnkleChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1:7 s1 d1 s1 a1:7 s1 d1 s1
    g1 d2 b2:7 e2:7 a2:7
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    a1:7 s1 d1 s1 a1:7 s1 d1 s1
    g1 d2 b2:7 e2:7 a2:7
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \PigAnkleChords
  \new Staff { \clef treble \PigAnkle }
  >>
  \header { piece = \markup {\fontsize #4.0 "Pig Ankle Rag"}}
  }
%}
