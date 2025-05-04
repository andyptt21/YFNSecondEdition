
\version "2.18.0"

% -------------------------------------------------------------------------

JohnRyans = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''4 d'' b'8 cis'' d'' b' |
    a'4 fis' a' fis' |
    d'' d'' b'8 cis'' d'' b' |
    a'4 fis' e' d' | \break
    d'' d'' b'8 cis'' d'' b' |
    a'4 fis' a' d''8 e'' |
    fis''4 d'' e'' cis''
  }
  \alternative {
    { d''2 d'' }
    { d''2 d''4. e''8 }
  } \break
  \repeat volta 2 {
    fis''4 d'' d'' e''8 fis'' |
    g''4 fis'' e'' d''8 e'' |
    fis''4 d'' a' d'' |
    fis'' d''8 fis'' a''4 \acciaccatura b''8a''8 g'' | \break
    fis''4 d'' d'' e''8 fis'' |
    g''4 \appoggiatura {fis''16 [g''])} fis''4 e'' d''8 e'' |
    fis''4 d'' e'' cis''
  }
  \alternative {
    { d''2 d''4. e''8 }
    { d''1 }
  }
}

JohnRyansChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d2 g2 d1 s2 g2 d2 a2 d2 g2 d1 s2 a2
  }
  \alternative {
    { d1 } { d1 }
  }
  \repeat volta 2 {
    d1 g2. d4 s1 s2 a2 d1 g1 d2 a2
  }
  \alternative {
    { d1 } { d1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \JohnRyansChords
  \new Staff { \clef treble \JohnRyans }
  >>
  \header { piece = \markup {\fontsize #4.0 "John Ryan's Polka"}}
  }
%}
