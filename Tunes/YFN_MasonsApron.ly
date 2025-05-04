
\version "2.18.0"

% -------------------------------------------------------------------------

MasonsApron = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    \partial 4 e''8 (d'')
    cis''4 a' a'8 b' a' fis' |
    e' fis' a' b' d'' cis'' b' a' |
    d''4 b' b'8 cis'' b' a' |
    b' cis'' d'' e'' gis'' fis'' e'' d'' | \break
    cis''4 a' a'8 b' a' fis' |
    e' fis' a' b' d'' cis'' b' a' |
    b' cis'' d'' e'' fis'' [e'' fis'' a''] |
    \partial 4*3 e'' [d'' cis'' b'] a'4
  } \break
  \repeat volta 2 {
    \partial 4 e''8 (d'')
    cis'' a' e'' a' fis'' a' e'' a' |
    cis'' a' e'' a' fis'' e'' d'' cis'' |
    d'' b' fis'' b' gis'' b' fis'' b' |
    e'' b' fis'' b' gis'' fis'' e'' d'' | \break
    cis'' a' e'' a' fis'' a' e'' a' |
    cis'' a' e'' a' fis'' e'' d'' cis'' |
    b' cis'' d'' e'' fis'' [e'' fis'' a''] |
    \partial 4*3 e'' [d'' cis'' b'] a'4
  }
}

MasonsApronChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 b1:min s1 a1 s1 b1:min
    \partial 4*3 d4 b4:min a4
  }
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 b1:min s1 a1 s1 b1:min
    \partial 4*3 d4 b4:min a4
  }
}

%{
  \score {
  <<
  \new ChordNames \MasonsApronChords
  \new Staff { \clef treble \MasonsApron }
  >>
  \header { piece = \markup {\fontsize #4.0 "Mason's Apron"}}
  }
%}
