
\version "2.18.0"

% -------------------------------------------------------------------------

RightsOfWomen = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    d''4 b'8 d''4 b'8 |
    g'4 g'8 g' (a' b' |
    c''4) a'8 b'4 g'8 |
    fis' a' d' d'4. |
    d''4 b'8 g''4 d''8 |
    e''4 c''8 g''4 e''8 | \break
    d'' e'' d'' d'' (c'' b') |
    b'4. a'
  }
  \repeat volta 2 {
    d'8 fis' a' c'' a' fis' |
    g' b' d'' d'' b' g' |
    d' fis' a' c'' a' fis' | \break
    g' b' d'' d'' (b' d'') |
    e'' c'' e'' e'' (g'' e'') |
    d'' b' d'' d'' (g'' d'') |
    e'' d'' c'' (b') c'' a' |
    g'4. (g')
  }
}

RightsOfChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    g2. s2. c4. g4. d2.:7
    g2. c2. g2. s4. d4.:7
  }
  \repeat volta 2 {
    d2. g2. d2. g2.
    c2. g2. c4. d4.:7 g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \RightsOfChords
  \new Staff { \clef treble \RightsOfWomen }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rights Of Women"}}
  }
%}
