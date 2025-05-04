
\version "2.18.0"

% -------------------------------------------------------------------------

LeviJackson = {
  \time 2/4
  \key g \major

  \partial 8*3 d''8 [e'' fis'']
  g''4 d'' |
  e''16 d'' b' d''~ d'' b' a'8 |
  g'2 |
  d' | \break
  f'4 bes' |
  d''16 f'' g'' f''~ f'' d'' c''8 |
  d''2 |
  e''4 fis''? | \break
  g'' d'' |
  e''16 d'' b' d''~ d'' b' a'8 |
  g'2 |
  e'4. ees'8 | \break
  d'4 d'' |
  b'16 g' a' bes'~ bes' g' a'8 |
  g'2~ |
  g'8 g' [fis' f'] | \break
  e'16-> g' a' c' e'-> g' e' g' |
  a'-> c' e' g' e'-> g' a' c'' |
  e''8 e''16 e''~ e'' d'' c''8 |
  a'2 | \break
  gis'16-> b' cis'' e' gis'-> b' gis' b' |
  cis''-> e' gis' b' gis'-> b' cis'' e'' |
  gis''8 gis''16 gis''~ gis'' fis'' e''8 |
  cis''2 | \break
  gis''8 gis''16 gis''~ gis'' fis'' e''8 |
  g''? g''16 g''~ g'' fis'' e''8 |
  fis'' fis''16 fis''~ fis'' e'' d'' e'' |
  fis'' a'' fis'' e'' d'' e'' fis'' a'' | \break
  b'' a'' g'' e''~ e'' d'' b'8 |
  e''16 d'' b' a'~ a' g' e'8 |
  g'2~ |
  \partial 8 g'8 \bar "||"
}

LeviJacksonChords = \chordmode {
  \time 2/4

  \partial 8*3 d4.:7
  g2 g4 d4:7 g2 s2 bes2 s2 a2:min
  d2:7 g2 s2 c2 s2 g4 e4:7 a4:7 d4:7 g4 c4 g4 g4:7
  c2 c2 a2:min s2 e2 s2 cis2:min s2 e2 a2:7
  d2 d2:7 g4 e4:7 a4:7 d4:7 g4 c4
  \partial 8 g8
}

%{
  \score {
  <<
  \new ChordNames \LeviJacksonChords
  \new Staff { \clef treble \LeviJackson }
  >>
  \header { piece = \markup {\fontsize #4.0 "Levi Jackson Rag"}}
  }
%}
