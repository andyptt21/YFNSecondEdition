
\version "2.18.0"

% -------------------------------------------------------------------------

FarewellToWhiskey = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    d'4 g' b' a'8 b' |
    a'4 e' e'2 |
    d'4 g' b' a'8 g' |
    d''4 b' b' d'' | 
    \break
    e''8 fis'' g'' e'' d''4 b' |
    c''8 b' a' g' a'4 b' |
    d' g' b'8 a' g' a' |
  }
  \alternative {
    { b'4 g' g'4. e'8 }
    { b'4 g' g' b'8 c'' }
  } 
  \break
  \repeat volta 2 {
    d''4 b' g'' b' |
    c''8 b' a' g' a'4 b'8 c'' |
    d''4 b' g'' d'' |
    e'' fis'' g'' d'' | 
    \break
    e''8 fis'' g'' e'' d''4 b' |
    c''8 b' a' g' a'4 b' |
    d' g' b'8 a' g' a' |
  }
  \alternative {
    { b'4 g' g' b'8 c'' }
    { b'4 g' g'4. e'8 }
  }
}

FarewellToWhiskeyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    g1 a1:min g1 e1:min c2 g2 a2:min d2 s4 g4 d2
  }
  \alternative {
    { g1 } { g1 }
  }
  \repeat volta 2 {
    g1 a2:min d2 g1 c2 g2 c2 g2 a2:min d2 g2 d2
  }
  \alternative {
    { g1 } { g1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \FarewellToWhiskeyChords
  \new Staff { \clef treble \FarewellToWhiskey }
  >>
  \header { piece = \markup {\fontsize #4.0 "Farewell to Whiskey"}}
  }
%}
