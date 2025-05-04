
\version "2.18.0"

% -------------------------------------------------------------------------

Fishers = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''8 a' fis' a' g' b' a' g' |
    fis' d' fis' d' g' b' a' g' |
    fis' d' fis' a' g' fis' e' g' |
    \tuplet 3/2 {fis' e' d'} fis' d' e'4 \tuplet 3/2 {a'8 b' cis''} |
    d'' a' fis' a' g' b' a' g' |
    fis' d' fis' d' g' b' a' g' |
    fis' a' d'' fis'' g'' e'' cis'' e'' |
  }
  \alternative {
    { d''4 d''8 cis'' d''4 \tuplet 3/2 {a'8 b' cis''} }
    { d''4 d''8 cis'' d''4 cis''8 d'' }
  }
  \repeat volta 2 {
    e'' cis'' a' cis'' e'' fis'' g'' e'' |
    fis'' d'' a' d'' fis'' d'' a'' fis'' |
    e'' d'' cis'' d'' e'' fis'' g'' fis'' |
    \tuplet 3/2 {e'' fis'' e''} \tuplet 3/2 {d'' cis'' b'} a'4. a'8 |
    b' g' d' g' b' g' d'' b' |
    a' fis' d' fis' a' d' fis' a' |
    \tuplet 3/2 {b' cis'' d''} cis'' b' a' g' fis' e'
  }
  \alternative {
    { \tuplet 3/2 {d' e' d'} cis'' e' d'4 cis''8 d'' }
    { \tuplet 3/2 {d' e' d'} cis'' e' d'4 \tuplet 3/2 {a'8 b' cis''} }
  }
}

FishersChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d2 d2:sus4 d2 d2:sus4 d2 d2:sus4 d2 a2
    d2 d2:sus4 d2 d2:sus4 d2 d2:sus4
  }
  \alternative {
    { d4 d4:sus4 d2 }
    { d4 d4:sus4 d2 }
  }
  \repeat volta 2 {
    a1 d1 a1 s1 g1 d1 g1
  }
  \alternative {
    { d2:sus4 d2 }
    { d2:sus4 d2 }
  }
}

%{
  \score {
  <<
  \new ChordNames \FishersChords
  \new Staff { \clef treble \Fishers }
  >>
  \header { piece = \markup {\fontsize #4.0 "Fisher's"}}
  }
%}
