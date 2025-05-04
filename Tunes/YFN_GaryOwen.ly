
\version "2.18.0"

% -------------------------------------------------------------------------

GaryOwen = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    \partial 8 d''16 cis''16
    b'8 a' g' fis' e' d' |
    fis' g' fis' fis'4 d''16 cis'' |
    b'8 a' g' fis' e' d' |
    e' fis' e' e'4 d''16 cis'' |
    b'8 a' g' fis' e' d' |
    fis' g' fis' fis'4 a'8 |
    a' b' cis'' d'' [a' fis'] |
    \partial 8*5 e' [fis' e'] d'4
  }
  \repeat volta 2 {
    \partial 8 fis'16 g' |
    a'4 fis'8 a'4 fis'8 |
    a'4 fis'8 a'4 d''16 cis'' |
    b'4 g'8 b'4 g'8 |
    b'4 g'8 b'4 cis''8 |
    d''4 e''8 fis''4 e''8 |
    d''4 b'8 a'4 fis'8 |
    a' b' cis'' d'' [a' fis'] |
    \partial 8*5 e' fis' e' d'4
  }
}

GaryOwenChords =  \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    g4. d4. b2.:min g4. d4. a2.:7
    g4. d4. fis2.:min a4.:7 d4.
    \partial 8*5 a4.:7 s4
  }
  \repeat volta 2 {
    \partial 8 s8
    d2. s2. g2. s2.
    d4. fis4. b4.:min fis4. a4.:7 d4.
    \partial 8*5 a4.:7 d4
  }
}

%{
  \score {
  <<
  \new ChordNames \GaryOwenChords
  \new Staff { \clef treble \GaryOwen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Gary Owen"}}
  }
%}