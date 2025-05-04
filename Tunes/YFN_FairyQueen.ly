
\version "2.18.0"

% -------------------------------------------------------------------------

FairyQueen = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 a'4
    \tuplet 3/2 {d''8 e'' d''} e'' cis'' d''4 a'8 g' |
    fis' d' fis' a' d'' a' fis' a' |
    \tuplet 3/2 {g' a' g'} b' g' e'4 e''8 fis'' |
    g'' e'' cis'' \appoggiatura d'' e'' (d'') cis'' b' a' | 
    \break
    \tuplet 3/2 {d'' e'' d''} e'' cis'' d''4 a'8 g' |
    fis' d' fis' a' d'' a' fis' a' |
    \tuplet 3/2 {g' a' g'} b' g' e'4 e''8 [fis''] |
    \partial 4*3 g'' e'' cis'' e'' d''4
  } 
  \break
  \repeat volta 2 {
    \partial 4 a'4
    d''8 fis'' \tuplet 3/2 {fis'' g'' fis''} g'' e'' cis'' e'' |
    d'' a'' gis'' a'' b'' a'' gis'' a'' |
    fis'' d'' a' fis' g'4 e''8 fis'' |
    g'' e'' \tuplet 3/2 {e'' fis'' e''} g'' e'' \tuplet 3/2 {e'' fis'' e''} | 
    \break
    d'' fis'' \tuplet 3/2 {fis'' g'' fis''} g'' fis'' g'' a'' |
    b'' a'' gis'' a'' b'' a'' gis'' a'' |
    fis'' d'' a' fis' g'4 e''8 [fis''] |
    \partial 4*3 g'' e'' cis'' e'' d''4
  }
}

FairyQueenChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g2 e2:min a1:7 d1 s1 g2 e2:min
    \partial 4*3 a2:7 d4
  } 
  \break
  \repeat volta 2 {
    \partial 4 s4
    d2 a2:7 d1 s2 e2:min a1:7 d2 a2:7 d1 s2 e2:min
    \partial 4*3 a2:7 d4
  }
}

%{
  \score {
  <<
  \new ChordNames \FairyQueenChords
  \new Staff { \clef treble \FairyQueen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Fairy Queen"}}
  }
%}
