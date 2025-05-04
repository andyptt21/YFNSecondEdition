
\version "2.18.0"

% -------------------------------------------------------------------------

ReelSaintJean = {
  \time 4/4
  \key d \major
  \partial 4 fis''8 e''8
  \repeat volta 2 {
    d''8 b' \tuplet 3/2 { b'8-. b'-. b'-. } fis'8 b' d'' b' |
    fis''8 b' d'' fis'' b'4 e''8 d''8 |
    cis''8 a' \tuplet 3/2 { a'8-. a'-. a'-. } e'8 a' cis'' a' |
    e''8 a' cis'' e'' a'4 fis''8 e'' | \break
    d''8 b' \tuplet 3/2 { b'8-. b'-. b'-. } fis'8 b' d'' b' |
    fis''8 b' d'' fis'' b'4 e''8 d''8 |
    a' b' \tuplet 3/2 { cis''8-. b'-. a'-. } e''4 fis''8 e'' |
  }
  \alternative {
    { d''8 fis'' d'' cis'' b'4 fis''8 e'' }
    { d''8 fis'' d'' cis'' b'4 r8 a'8 }
  } \break
  \repeat volta 2 {
    d'4 d'8 e' d' e' fis' g' |
    a'4 a'8 b' a' fis' e' d' |
    d''4 b'8 d'' a' fis' d' e' |
    fis'8 d' e' fis' e' cis' b a | \break
    d'8 cis' d' e' d' e' fis' g' |
    a'4 a'8 b' a' fis' e' d' |
    d''4 b'8 d'' a' fis' d' e' |
  }
  \alternative {
    { fis'8 d' e' cis' d'4 r8 a8 }
    { fis'8 d' e' cis' d'8 fis''4 e''8 }
  }
}

ReelSaintJeanChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    b1:min s1 a1 s1 b1:min s1 a1
  }
  \alternative {
    { b4:min a4 b2:min }
    { b2:min a2:7 }
  }
  \repeat volta 2 {
    d1 s1 g2 d2 e2:min a2 d1 s1 g2 d2
  }
  \alternative {
    { a2 d2 }
    { a2 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \ReelSaintJeanChords
  \new Staff { \clef treble \ReelSaintJean }
  >>
  \header { piece = \markup {\fontsize #4.0 "Reel Saint-Jean"}}
  }
%}
