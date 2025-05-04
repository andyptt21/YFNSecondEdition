
\version "2.18.0"

% -------------------------------------------------------------------------

FemaleSailor = {
  \time 6/8
  \key bes \major
  \repeat volta 2 {
    g'4 d''8 d''4 c''8 |
    bes'4. c'' |
    d''4 c''8 bes'4 a'8 |
    bes'4 a'8 g'4 f'8 |
    g'4 d''8 d''4 c''8 |
    bes'4. c'' |
    d''4 c''8 bes'4 a'8 |
    g'4. (g')
  } \break

  bes''4 a''8 g''4 fis''8 |
  g''4. d'' |
  bes''4 a''8 g''4 fis''8 |
  g''4. d''4 f''8 |
  ees''4 c''8 d''4 a'8 |
  bes'4 g'8 bes'4 c''8 |
  d''4. fis''4. |
  g''4. g'' |
  bes''4 a''8 g''4 fis''8 |
  g''4. d'' |
  bes''4 a''8 g''4 fis''8 |
  g''4. d''4 f''8 |
  ees''4 c''8 bes'4 a'8 |
  bes'4 g'8 bes'4 c''8 |
  d''4. a'4 g'8 |
  g'4. (g')
}


FemaleSailorChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    g2.:min s4. c4.:min g2.:min d2.:7 g2.:min s4. c4.:min d2.:7 g2.:min
  }
  g2.:min s2. s2. s2. c4.:min d4.:min g2.:min
  s4. d4.:7 g2.:min s2. s2. s2. s2. c4.:min d4.:7
  g2.:min d2.:7 g2.:min
}

%{
  \score {
  <<
  \new ChordNames \FemaleSailorChords
  \new Staff { \clef treble \FemaleSailor }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Female Sailor"}}
  }
%}
