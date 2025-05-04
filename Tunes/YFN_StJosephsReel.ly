
\version "2.18.0"

% -------------------------------------------------------------------------

StJosephsReel = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''8 e'' fis'' d'' cis'' d'' e'' cis'' |
    d'' e'' fis'' d'' a'4 a' |
    b' g''8 fis'' e'' d'' cis'' b' |
    a'4 a'' a''8 g'' fis'' e'' |
    d'' e'' fis'' d'' cis'' d'' e'' cis'' |
    d'' e'' fis'' d'' a'4 a' |
    b' g''8 fis'' e'' d'' cis'' b' |
  }
  \alternative {
    { a' cis'' e'' cis'' d''2 }
    { a'8 cis'' e'' cis'' d''4 d'' }
  }
  \repeat volta 2 {
    fis'' fis''8 g'' fis'' e'' d'' cis'' |
    b' g''4 b'8 g''4 g'' |
    e'' e''8 fis'' e'' d'' cis'' b' |
    a'4 a'' a''8 g'' fis'' e'' |
    fis''4 fis''8 g'' fis'' e'' d'' cis'' |
    b' g''4 b'8 g''4 g'' |
    e'' e''8 fis'' e'' d'' cis'' b' |
    a' cis'' e'' cis'' d''4 d''
  }
}


StJosephsReelChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d2 a2 d1 g1 a1 d2 a2 d1 g1
  }
  \alternative {
    { a2 d2 }
    { a2 d2 }
  }
  \repeat volta 2 {
    d1 g1 a1 s1 d1 g1 a1 s2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \StJosephsReelChords
  \new Staff { \clef treble \StJosephsReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "St Joseph's Reel"}}
  }
%}
