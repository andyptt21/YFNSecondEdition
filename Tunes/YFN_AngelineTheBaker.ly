
\version "2.18.0"

% -------------------------------------------------------------------------

AngelineTheBaker = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 d''8 b'
    a'4 b' d''4. a'8 |
    b'4 d''2 d''8 b' |
    a'4 b' d''8 b' a'4 |
    b'2. d''8 b' |
    a'4 b' d''4. e''8 |
    fis''4 e'' d''4. e''8 |
    fis''4 e'' d'' b' |
    \partial 4*3 a'4. b'8 a'4
  }
  \repeat volta 2 {
    \partial 4 fis''8 g'' |
    a''4 fis'' e'' d''8 e'' |
    fis''4 e'' d'' fis''8 g'' |
    a''4 fis'' e'' d'' |
    b'4. b'8 b'4 fis''8 g'' |
    a''4 fis'' e'' d''8 e'' |
    fis''4 e'' d'' d''8 e'' |
    fis''4 e'' d'' b' |
    \partial 4*3 a'4. b'8 a'4
  }
}

AngelineTheBakerChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s1 g1 d1 s1 s2 g2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s1 g1 d1 s1 s2 g2
    \partial 4*3 d2.
  }
}

%{
\score {
  <<
    \new ChordNames \AngelineTheBakerChords
    \new Staff { \clef treble \AngelineTheBaker }
  >>
  \header { piece = \markup {\fontsize #4.0 "Angeline the Baker"}}
}
%}
