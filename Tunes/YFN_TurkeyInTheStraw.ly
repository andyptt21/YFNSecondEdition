
\version "2.18.0"

% -------------------------------------------------------------------------

Turkey = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4
    fis''8 e''8 |
    d''4 d''8 e'' d'' a' fis' g' |
    a' b' a' fis' a'4 d''8 e'' |
    fis''4 fis''8 g'' fis'' e'' d'' e'' |
    fis''4 e'' e'' fis''8 e'' |
    d''4 d''8 e'' d'' a' fis' g' |
    a' b' a' fis' a'4 d''8 e'' |
    fis''4 a''8 b'' a'' [fis'' d'' e''] |
    \partial 4*3
    fis''4 d'' d'' |
  }
  \repeat volta 2 {
    \partial 4
    r4 |
    fis'8 a'4 fis'8 a'4 a' |
    fis'8 a'4 fis'8 a'4 (a') | \break
    g'8 b'4 g'8 b'4 b' |
    g'8 b'4 g'8 b'4 b'8 cis'' |
    d''4 d'' a' a' |
    fis' fis' e' d'8 e' |
    fis' a'4 b'8 a' [fis' d' e'] |
    \partial 4*3
    fis'4 d' d'
  }
}

TurkeyChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    s4 |
    d1 s1 s1 a1:7
    d1 s1 s1
    \partial 4*3
    s2.
  }
  \repeat volta 2 {
    \partial 4
    s4 |
    d1 s2 d2:7 g1 s2 e2:min
    d1 s2 a2:7 d1
    \partial 4*3
    s2.
  }
}


%{
  \score {
  <<
  \new ChordNames \TurkeyChords
  \new Staff { \clef treble \Turkey }
  >>
  \header { piece = \markup {\fontsize #4.0 "Turkey in the Straw"}}
  }
%}
