
\version "2.18.0"

% -------------------------------------------------------------------------

Whiskey = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    a8 b d' e' (d'4) d'8 e'( |
    fis'4) b'8 fis' a' b' a' fis'( |
    g'4) b'8 g' (fis'4) a'8 fis'( |
    e' d') e' fis' (e' d') b g( |
    a b) d' e' (d'4) d'8 e'( |
    fis'4) b'8 fis' a' b' a' fis'( |
    g'4) b'8 g' (fis' g') a' fis'( |
  }
  \alternative {
    { e' d') e' fis' (d'4) d'8 b }
    { e' (d') e' fis' (d'4) d''8 b' }
  } \break
  \repeat volta 2 {
    a'4 b' d'' cis''8 d'' |
    e'' fis'' e'' d'' (cis'' b') a'4 |
    e'' e''8 fis'' (e''4) e''8 fis''( |
    g'' fis'') e'' d'' (cis'' a') b' cis''( |
    d''4) fis''8 d'' (cis''4) e''8 cis''( |
    b' a') b' cis'' (d'' b') a' fis'( |
    g'4) b'8 g' (fis'4) a'8 fis'( |
  }
  \alternative {
    { e' d') e' fis' (d'4) d''8 b' }
    { e' (d') e' fis' (d'4) d'8 b }
  }
}

WhiskeyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 g2 d2 a1 d1 s1 g2 d2
  }
  \alternative {
    { a2 d2 } { a2 d2 }
  }
  \repeat volta 2 {
    d1 s1 a1 s1 d2 a2 g2 d2 g2 d2
  }
  \alternative {
    { a2 d2 } { a2 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \WhiskeyChords
  \new Staff { \clef treble \Whiskey }
  >>
  \header { piece = \markup {\fontsize #4.0 "Whiskey Before Breakfast"}}
  }
%}
