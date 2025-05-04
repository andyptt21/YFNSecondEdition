
\version "2.18.0"

% -------------------------------------------------------------------------

DevilsDream = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    a''8 gis'' a'' e'' a'' gis'' a'' e'' |
    a'' gis'' a'' e'' fis'' e'' d'' cis'' |
    d'' fis'' b' fis'' d'' fis'' b' fis'' |
    d'' fis'' b' fis'' a'' gis'' fis'' e'' |
    a'' gis'' a'' e'' a'' gis'' a'' e'' |
    a'' gis'' a'' e'' fis'' e'' d'' cis'' |
    d'' fis'' e'' d'' cis'' a' b' a' |
    e' a' a' gis' a'4 e'' |
  }
  \repeat volta 2 {
    cis''8 e'' a' e'' cis'' e'' a' e'' |
    cis'' e'' a' e'' fis'' e'' d'' cis'' |
    d'' fis'' b' fis'' d'' fis'' b' fis'' |
    d'' b' d'' fis'' a'' gis'' fis'' e'' |
    cis'' e'' a' e'' cis'' e'' a' e'' |
    cis'' a' cis'' e'' fis'' e'' d'' cis'' |
    d'' fis'' e'' d'' cis'' a' b' a' |
    e' a' a' gis' a'4 e'' \bar "|."
  }
}

DevilsDreamChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1 s1 b1:min s2 e2 a1 s1 d2 a2 e2 a2
  }
  \repeat volta 2 {
    a1 s1 b1:min s2 e2 a1 s1 d2 a2 e2 a2
  }
}

%{
  \score {
  <<
  \new ChordNames \DevilsDreamChords
  \new Staff { \clef treble \DevilsDream }
  >>
  \header { piece = \markup {\fontsize #4.0 "Devil's Dream"}}
  }
%}
