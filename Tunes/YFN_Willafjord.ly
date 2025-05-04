
\version "2.18.0"

% -------------------------------------------------------------------------

Willafjord = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 8 b'8
    a'4 fis'8 a'~ a' d' fis' a' |
    b'4 g'8 b'~ b' d' g' b' |
    a'4 fis'8 a'~ a' d' fis' a' |
    e' (fis') g' a' g' (fis') e' d' | \break
    a'4 fis'8 a'~ a' d' fis' a' |
    b'4 g'8 b'~ b' d' g' b'( |
    a') b' cis'' d'' (e'' [fis'') g'' e''] |
    \partial 8*7 fis''4 d'' d''4.
  } \break
  \repeat volta 2 {
    \partial 8 e''8 |
    fis''4 d''8 fis''~ fis'' fis'' d'' fis''( |
    g'' e'') a'' fis'' g'' fis'' e'' g'' |
    fis''4 d''8 fis''~ fis'' a' d'' fis'' |
    e''4 cis''8 e''~ e'' a' cis'' e'' | \break
    fis''4 d''8 fis''~ fis'' fis'' d'' fis''( |
    g'' e'') a'' fis'' g'' fis'' e'' d''( |
    a' b') cis'' d'' (e'' [fis'') g'' e''] |
    \partial 8*7 fis''4 d'' d''4.
  }
}

WillafjordChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 8 s8
    d1 g1 d1 e2:min a2 d1 g1 a1
    \partial 8*7 d2 s4.
  }
  \repeat volta 2 {
    \partial 8 s8
    d1 g1 d1 a1 d1 g1 a1
    \partial 8*7 d4 g4 d4.
  }
}

%{
  \score {
  <<
  \new ChordNames \WillafjordChords
  \new Staff { \clef treble \Willafjord }
  >>
  \header { piece = \markup {\fontsize #4.0 "Willafjord"}}
  }
%}
