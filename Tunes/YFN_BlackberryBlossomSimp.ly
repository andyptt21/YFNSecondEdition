
\version "2.18.0"

% -------------------------------------------------------------------------

BlackberryBlossom = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    g''8 a'' b'' g'' (fis'' g'') a'' fis''( |
    e'' fis'') g'' e'' (d'' b') a' g'( |
    e' fis') g' e' (d' e') g' a' |
    b' d'' b' g' a' d'' e'' fis''( | \break
    g''8 a'') b'' g'' (fis'' g'') a'' fis''( |
    e'' fis'') g'' e'' (d'' b') a' g' |
    e' fis' g' e' d' e' g' a' |
  }
  \alternative {
    { b'8 g' a' fis' (g'2) }
    { b'8 g' a' fis' (g'4) g'8 fis' }
  } \break
  \repeat volta 2 {
    b'4 e''8 (b' d'' b') e'' d''( |
    b'4) e''8 (b' d'' b') a' g'
    b'4 e''8 (b' d'' b') e'' fis''
    g''8 a'' b'' g'' a'' g'' fis'' e'' | \break
    b'4 e''8 b' (d'' b') e'' d''( |
    b'4) e''8 b' (c'' b') a' fis' |
    b'4 e''8 b' (d'' b') e'' b'
  }
  \alternative {
    { b'8 g' a' fis' (g'4) g'8 fis' }
    { b'8 g' a' fis' (g'2) }
  }
}

BlackberryBlossomChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g2 d2 c2 g2 c2 g2 s2 d2
    g2 d2 c2 g2 c2 g2
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
  \repeat volta 2 {
    e1:min s2 d2 e1:min g2 d2
    e1:min s2 d2 e1:min
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \BlackberryBlossomChords
  \new Staff { \clef treble \BlackberryBlossom }
  >>
  \header { piece = \markup {\fontsize #4.0 "Blackberry Blossom"}}
  }
%}