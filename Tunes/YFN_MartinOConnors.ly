
\version "2.18.0"

% -------------------------------------------------------------------------

MartinOConnors = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    fis'4 e' e' d'8 e' |
    fis'4 d' d'4. e'8 |
    fis'4 e' e' a' |
    d'' b' b' a' |
    fis' e' e' d'8 e' | \break
    fis'4 d' d'4. e'8 |
    fis'4 d' cis'' d'' |
    b'1
  }
  \repeat volta 2 {
    a'4 d'' d''4. e''8 |
    fis''4 e'' e''4. fis''8 |
    d''4. e''8 cis''4 a' | \break
    b'4 a'4 a'2 |
    a'4 d''4 d''4. e''8 |
    fis''4 e''4 e''4. fis''8 |
    d''4. e''8 cis''4 a'4 |
    b'1
  }
}

MartinOConnorsChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a1:7 d1 a1:7 b1:min a1:7 d1 b2:min a2 g1
  }
  \repeat volta 2 {
    d1 a1:7 b1:min g2 a2:7 d1 a1:7 b2:min a2:7 g1
  }
}

%{
  \score {
  <<
  \new ChordNames \MartinOConnorsChords
  \new Staff { \clef treble \MartinOConnors }
  >>
  \header { piece = \markup {\fontsize #4.0 "Martin O'Connor's"}}
  }
%}
