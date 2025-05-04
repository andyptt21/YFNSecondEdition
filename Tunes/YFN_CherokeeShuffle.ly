
\version "2.18.0"

% -------------------------------------------------------------------------

CherokeeShuffle = {
  \time 4/4
  \key a \major
  \repeat volta 2 {
    \partial 4 fis'8 gis'
    a'4 a'8 b' a'4 a'8 b' |
    cis'' b' a'4 fis' e'8 fis' |
    a'4 a'8 b' cis'' d'' e''4 |
    fis''8 e'' fis'' gis'' fis''4 fis''8 gis'' |
    a''4 a''8 b'' a''4 a''8 fis'' |
    e'' fis'' e'' d'' cis'' b' a'4 |
    fis'8 gis' a' cis'' b' a' gis'4 |
  }
  \alternative {
    { a'2. e'4 } { a'2. e''4 }
  }

  \repeat volta 2 {
    fis''8 e'' fis'' gis'' a'' e'' fis'' e'' |
    cis'' d'' e'' fis'' e''4 e'' |
    fis''8 e'' fis'' gis'' a'' e'' fis''4 |
    e''2. e''4 |
    fis''8 e'' fis'' gis'' a'' e'' fis'' e'' |
    cis'' d'' e'' fis'' e''4 e'' |
    fis''8 e'' cis'' b' a' b' cis'' e'' |
    fis''4 fis''8 gis'' fis''4 fis''8 gis'' |
    a'' e'' gis'' fis'' e'' [d'' cis'' b'] |
    \partial 4*3 a'4 a'8 b' a'4
  }
}

CherokeeShuffleChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 s1 fis1:min d1 a1 d2 e2
  }
  \alternative {
    { a1 } { a1 }
  }
  \repeat volta 2 {
    d1 a1 d1 a1 d1 a1 fis1:min s1 d2 e2
    \partial 4*3 a2.
  }
}

%{
  \score {
  <<
  \new ChordNames \CherokeeShuffleChords
  \new Staff { \clef treble \CherokeeShuffle }
  >>
  \header { piece = \markup {\fontsize #4.0 " Cherokee Shuffle"}}
  }
%}
