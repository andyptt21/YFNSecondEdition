
\version "2.18.0"

% -------------------------------------------------------------------------

DenniMurphys = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis''8 g'' fis'' e'' d''4. b'8 |
    a'4 d' fis' a' |
    g' e' e''4. d''8 |
    cis''4 b' \tuplet 3/2 {b'8 (cis'' b'} a'4) | 
    \break
    fis''8 g'' fis'' e'' d''4. b'8 |
    a'4 d' fis' a' |
    g' e' e''4. fis''8 |
  }
  \alternative {
    { e''4 d'' d''2 }
    { e''4 d'' d'' b'4 }
  } 
  \break
  \repeat volta 2 {
    a'4 fis'' fis''8 e'' fis''4 |
    a' g'' g''8 fis'' g''4 |
    a' fis'' fis''8 e'' d''4 |
    e''8 fis'' e'' d'' b'4 a' | 
    \break
    a' fis'' fis''8 e'' fis''4 |
    a' g'' g'' a'' |
    b'' a'' g'' cis'' |
  }
  \alternative {
    { e'' d'' d'' b' }
    { e'' d'' d''2 }
  }
}

DenniMurphysChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 g1 a1 d1 s1 g2 e2:min
  }
  \alternative {
    { a2 d2 } { a2 d2 }
  }
  \repeat volta 2 {
    d1 g1 d1 a1 d1 g1 a1
  }
  \alternative {
    { d1 } { d1 }
  }
}

%{
\score {
  <<
    \new ChordNames \DenniMurphysChords
    \new Staff { \clef treble \DenniMurphys }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dennis Murphy's Polka"}}
}
%}
