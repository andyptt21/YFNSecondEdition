
\version "2.18.0"

% -------------------------------------------------------------------------

YearOfJubiloAlt = {
  \time 2/4
  \key d \major
  \repeat volta 2 {
    d'8 fis' fis' a' |
    a' fis'' fis''16 e'' d'' b' |
    a'8 fis'16 a' d''8 fis' |
    e'8. fis'16 e'8 fis'16 e' |
    d'8 fis' fis' a' |
    a' fis'' fis''16 e'' d'' b' |
    a'8 d'' e'' d''16 cis'' |
  }
  \alternative {
    { d''4. fis'16 e' }
    { d''4. a'8 }
  }
  \repeat volta 2 {
    b'8. g'16 b'8 cis'' |
    d''8. e''16 d''8 b' |
    a' fis'16 a' d''8 fis' |
    e'8. fis'16 e'8 fis'16 e' |
    d'8 fis' fis' a' |
    a' fis'' fis''16 e'' d'' b' |
    a'8 d'' e'' d''16 cis'' |
  }
  \alternative {
    { d''4. a'8 }
    { d''4. r8 }
  }
}

YearOfJubiloAltChords = \chordmode {
  \time 2/4
  \repeat volta 2 {
    d2 s2 d2 a2 d2 s2 d4 a4
  }
  \alternative {
    { d2 } { d2 }
  }
  \repeat volta 2 {
    g2 s2 d2 a2 d2 s2 d4 a4
  }
  \alternative {
    { d2 } { d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \YearOfJubiloAltChords
  \new Staff { \clef treble \YearOfJubiloAlt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Year of the Jubilo (alternate version)"}}
  }
%}
