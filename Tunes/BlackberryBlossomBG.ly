
\version "2.18.0"

% -------------------------------------------------------------------------

BlackberryBlossomBG = {
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
    <<
      {
        b'4 e''8 (b' d'' b') e'' d''( |
        b'4) e''8 (b' d'' b') a' g'
        b'4 e''8 (b' d'' b') e'' fis''
      }
      \\
      {
        e'4 e'2 e'8 e'8( |
        e'4) e'8 e'8 (e'4) d'8 g' |
        e'4 e'8 e'8 (e'4) r4
      }
    >>
    g''8 a'' b'' g'' a'' g'' fis'' e'' | \break
    <<
      {
        b'4 e''8 b' (d'' b') e'' d''( |
        b'4) e''8 b' (c'' b') a' fis'
      }
      \\
      {
        e'4 e'8 e'8 (e'4) e'8 e'8( |
        e'4) e'8 e'8 (e'4) d'8 fis'8
      }
      
    >>
    c''8 b'8 c''8 d''8 e''8 fis''8 g''8 e''8
  }
  \alternative {
    { d''8 b'8 a'8 d''8 g'4 g'8 fis' }
    { d''8 b'8 a'8 d''8 g'2 }
  }
}

BlackberryBlossomBGChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g2 d2 c2 g2 c2 g2 a2 d2
    g2 d2 c2 g2 c2 g2
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
  \repeat volta 2 {
    e1:min s1 s1 b1
    e1:min s1 c2 g
  }
  \alternative {
    { d2 g2 } { d2 g2 }
  }
}


  \score {
  <<
  \new ChordNames \BlackberryBlossomBGChords
  \new Staff { \clef treble \BlackberryBlossomBG }
  >>
  \header { piece = \markup {\fontsize #4.0 "Blackberry Blossom (Bluegrass Chords)"}}
    \layout {}
  \midi {}
  }

