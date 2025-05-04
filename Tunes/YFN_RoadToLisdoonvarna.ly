
\version "2.18.0"

% -------------------------------------------------------------------------

RoadToLisdoonvarna = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    \partial 8 d'8(
    e'4) b'8 \acciaccatura cis''8 b'4 a'8 |
    b'4 cis''8 d''4. |
    fis'4 a'8 a' b' a' |
    d'4 e'8 fis' e' d' |
    e'4 b'8 \acciaccatura cis''8 b'4 a'8 | \break
    b'4 cis''8 d''4. |
    cis''8 d'' cis'' b'4 a'8 |
    \partial 8*5 b'4 e'8 e'4
  }
  \repeat volta 2 {
    \partial 8 s8
    e''4 fis''8 g'' fis'' e'' |
    d''4 b'8 b' cis'' d'' | \break
    cis''4 a'8 a' b' cis'' |
    d''4 b'8 b'4. |
    e''4 fis''8 g'' fis'' e'' |
    d''4 b'8 b' cis'' d'' |
    cis'' d'' cis'' b'4 a'8 |
    b'4 e'8 e'4
    \partial 8*5
  }
}

RoadToLisdoonvarnaChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    e2.:min s2. d2. b2.:min e2.:min e4.:min g4. a2.
    \partial 8*5 e4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    e2.:min g2. a2. e2.:min s2. g2. a2.
    \partial 8*5 e4.:min s4
  }
}

%{
  \score {
  <<
  \new ChordNames \RoadToLisdoonvarnaChords
  \new Staff { \clef treble \RoadToLisdoonvarna }
  >>
  \header { piece = \markup {\fontsize #4.0 "Road To Lisdoonvarna"}}
  }
%}
