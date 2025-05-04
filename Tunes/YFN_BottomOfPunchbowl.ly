
\version "2.18.0"

% -------------------------------------------------------------------------

BottomOfPunchbowl = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 fis'8 e'
    d'4 d' d''4. e''8 |
    d''4 d' fis'8 g' a' fis' |
    e'4 e'' e''8 fis'' g'' fis'' |
    e'' d'' cis'' b' a' g' fis' e' |
    d'4 d' d''4. e''8 |
    fis'' e'' d'' cis'' d''4. a'8 |
    b' cis'' d'' b' a'4. g'8 |
    \partial 4*3 fis'4 d' d'
  }
  \repeat volta 2 {
    \partial 4 d''8 e'' |
    fis'' e'' d'' b' a' b' d'' e'' |
    fis'' e'' d'' cis'' d''4. a'8 |
    b'4 e'' e'' d''8 e'' |
    fis''4 e'' e'' d''8 e'' |
    fis'' e'' d'' b' a' b' d'' e'' |
    fis'' a'' e'' fis'' d''4 a' |
    b'8 cis'' d'' b' a' [b' a' g'] |
    \partial 4*3 fis'4 d' d'
  }
}

BottomOfPunchbowlChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g1 a1 d1 s1 g2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 g1 a1 d1 b1:min g2 a2
    \partial 4*3 d2.
  }
}

%{
\score {
  <<
    \new ChordNames \BottomOfPunchbowlChords
    \new Staff { \clef treble \BottomOfPunchbowl }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bottom of the Punchbowl"}}
}
%}