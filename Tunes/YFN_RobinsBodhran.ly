
\version "2.18.0"

% -------------------------------------------------------------------------

RobinsBodhran = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    \partial 8*2 b8 d'
    e'4 b8 e'4 fis'8 |
    g' fis' g' e' fis' g' |
    a' b' c'' b' g' e' |
    fis' e' fis' d' b d' | \break
    e'4 b8 e'4 fis'8 |
    g' fis' g' e' fis' g' |
    a' b' c'' b' [g' e'] |
    \partial 8*4 d' [e' fis'] e'
  } \break
  \repeat volta 2 {
    \partial 8*2 b'8 d'' |
    e''4. e'' |
    e''8 d'' e'' d'' b' a' |
    g' a' b' a' g' a' |
    b' d'' e'' d'' b' d'' | \break
    e''4. e'' |
    e''8 fis'' g'' fis'' e'' d'' |
    b' c'' b' a' [g' fis'] |
    \partial 8*4 g' [e' e'] e'
  }
}

RobinsBodhranChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8*2 s4
    e2.:min s2. a4.:min e4.:min d4. b4.:min
    e2.:min s2. a4.:min e4.:min
    \partial 8*4 d4. e8
  }
  \repeat volta 2 {
    \partial 8*2 s4
    c2. s4. d4. g2. g2.
    c2. c4. d4. e4.:min d4.
    \partial 8*4 e4.:min e8
  }
}

%{
  \score {
  <<
  \new ChordNames \RobinsBodhranChords
  \new Staff { \clef treble \RobinsBodhran }
  >>
  \header { piece = \markup {\fontsize #4.0 "Robin's Bodhran"}
  opus = \markup {\fontsize #3.0 "Bob McQuillen"}}
  }
%}
