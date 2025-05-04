
\version "2.18.0"

% -------------------------------------------------------------------------

ReelTiMe = {
  \time 2/2
  \key d \major

  \partial 4 fis''8 g''
  a''8 fis'' b'' fis'' a'' fis'' d'' e'' |
  \tuplet 3/2 {fis'' [a'' fis'']} \tuplet 3/2 {e'' [g'' e'']} d'' b' a' g' |
  fis' a' d'' a' fis' a' d'' fis'' |
  e''4 <g' b'> <g' b'> e''8 fis'' | \break
  %5
  g'' fis'' g'' a'' g'' fis'' e'' d'' |
  cis'' b' cis'' e'' cis''4. b'8 |
  a' b' \tuplet 3/2 {cis'' [b' a']} g'' fis'' g'' a'' |
  b'' a'' gis'' a'' fis''4 d''8 fis'' | \break
  a'' fis'' b'' fis'' a'' fis'' d'' e'' |
  %10
  \tuplet 3/2 {fis'' [a'' fis'']} \tuplet 3/2 {e'' [g'' e'']} d'' b' a' g' |
  fis' a' d'' a' fis' a' d'' fis'' |
  e''4 <g' b'> <g' b'> e''8 fis'' | \break
  g'' fis'' g'' a'' g'' fis'' e'' d'' |
  cis'' b' cis'' e'' cis''4. b'8 |
  %15
  a' b' \tuplet 3/2 {cis'' [b' a']} g'' a' b' cis'' |
  d'' fis'' e'' cis'' d''2 | \break

  \repeat volta 2 {
    d'4 fis'8 a' d'' a' fis' a' |
    g'4 b'8 g' c'' g' b' g' |
    %20
    a' a' e''-> a' a' fis''-> a' a' |
    g''-> a' a' g'' fis'' e'' cis'' a' | \break
    d'4 fis'8 a' d'' a' fis' a' |
    g'4 b'8 g' c'' g' b' g' |
    a' a' e''-> a' a' fis''-> a' a' |
  }
  \alternative {
    { g'' e'' cis'' e'' d''2 }
    { \partial 4*3 g''8 [e'' cis'' e''] d''4 }
  }
}

ReelTiMeChords = \chordmode {
  \time 2/2
  \partial 4 s4
  d1 s1 s1 e1:min
  a1 s1 s1 s2 d2
  d1 s1 s1 e1:min
  a1 s1 s1 s2 d2
  \repeat volta 2 {
    d1 g1 a1 s1
    d1 g1 a1
  }
  \alternative {
    { s2 d2 }
    { \partial 4*3 s2 d4 }
  }
}

%{
  \score {
  <<
  \new ChordNames \ReelTiMeChords
  \new Staff { \clef treble \ReelTiMe }
  >>
  \header { piece = \markup {\fontsize #4.0 "Reel Ti-Me"}
  opus = \markup {\fontsize #3.0 "Marcel Messervier"}}
  }
%}
