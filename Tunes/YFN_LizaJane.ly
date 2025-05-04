
\version "2.18.0"

% -------------------------------------------------------------------------

LizaJane = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    \partial 4 e''8 fis''8 |
    a''4 fis'' e'' cis''8 e'' |
    fis'' e'' cis'' b' a'4 e'' |
    a'' fis'' e'' e'' |
    fis''2. e''8 fis'' |
    a''4 fis'' e'' cis''8 e'' |
    fis'' e'' cis'' b' a'4 a'8 b' |
    cis'' b' a' fis' e'4 fis' |
    \partial 4*3 a'2.
  }
  \repeat volta 2 {
    \partial 4 s4
    cis''2 cis''4. cis''8 |
    b'4 a' (a') a'8 b' |
    cis''4 b' a' e' |
    fis'2. e'4 |
    fis' a' b'4. a'8 |
    b'4 cis'' b' a'8 b' |
    cis'' b' a' fis' e'4 fis' |
    \partial 4*3 a'2.
  }
}

LizaJaneChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 s1 d1 a1 s1 s2 e2
    \partial 4*3 a2.
  }
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 s1 d1 d2 e2 s1 s1
    \partial 4*3 a2.
  }
}

%{
  \score {
  <<
  \new ChordNames \LizaJaneChords
  \new Staff { \clef treble \LizaJane }
  >>
  \header { piece = \markup {\fontsize #4.0 "Liza Jane"}}
  }
%}
