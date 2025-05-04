
\version "2.18.0"

% -------------------------------------------------------------------------

RidingOnALoad = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 d'4 |
    e'4. fis'8 g'4 a' |
    b' e'' e'' fis''8 e'' |
    d''4 b' a' g' |
    fis' d' d' fis' | 
    e'4. fis'8 g'4 a' |
    b' e'' e'' fis''8 e'' |
    d''4 b' a' fis' |
    \partial 4*3 e' r4 r4
  } 
  \repeat volta 2 {
    \partial 4 fis'' |
    g'' e'' fis'' d'' |
    e'' b' b' b'8 cis'' |
    d''4 b' a' g' |
    \partial 4*3 fis' d' d' 
  }
  \alternative {
    {
      \partial 4 e''8 fis'' |
      g''4 e'' fis'' d'' |
      e'' b' b' b'8 cis'' |
      d''4 b' a' fis' |
      \partial 4*3 e' r4 r4 
    }
    {
      \partial 4 fis'4 |
      e' g' fis' a' |
      g' b' e''4. fis''8 |
      g''4 e'' a'' fis'' |
      \partial 4*3 e'' r4 r4
    }
  }
}

RidingOnALoadChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    e1:min s1 d1 s1 e1:min s2 a2:7 d1
    \partial 4*3 e2.:min
  }
  \repeat volta 2 {
    \partial 4 s4
    e2:min d2 e1:min d1
    \partial 4*3 s2.
  }
  \alternative {
    {
      \partial 4 s4
      e2:min d2 e1:min d1
      \partial 4*3 e2.:min
    }
    {
      \partial 4 s4
      e2:min d2 c1 a2:min b2:7
      \partial 4*3 e2.:min
    }
  }
}

%{
  \score {
  <<
  \new ChordNames \RidingOnALoadChords
  \new Staff { \clef treble \RidingOnALoad }
  >>
  \header { piece = \markup {\fontsize #4.0 "Riding On A Load Of Hay"}}
  }
%}
