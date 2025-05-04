
\version "2.18.0"

% -------------------------------------------------------------------------

ForkedDeer = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    d''8 e'' fis'' g'' a'' (b'') a'' fis'' |
    g'' (a'') g'' e'' fis'' d'' e'' cis'' |
    d'' (e'') fis'' g'' a'' (b'') a'' fis'' |
    g'' fis'' e'' d'' cis'' (a') b' cis'' | 
    \break
    d'' (e'') fis'' g'' a'' (b'') a'' fis'' |
    g'' (a'') g'' e'' fis'' d'' e'' cis'' |
    d'' (b') a' fis' g' b' a' g' |
    fis' (d') e' fis' d'2
  } \break
  \repeat volta 2 {
    <a' a'>2 <a' a'> |
    a'8 b' a' fis' e'4 cis' |
    \acciaccatura fis'8 a'4. a'8 a' b' a' g'( |
    fis' d') e' cis' <d' d'>2 | 
    \break
    \acciaccatura fis'8 a'4. a'8 (cis'' a') b' cis'' |
    d'' b' a' fis' (d' e') fis' d' |
    e' d' e' fis' g' b' a' g'( |
    fis' d') e' d' d'2
  }
}

ForkedDeerChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 g2 a2 d1 a1 d1 g2 a2 d2 g2 a2 d2
  }
  \repeat volta 2 {
    a1 s1 s1 s2 d2 a1 d1 a2 g2 a2 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \ForkedDeerChords
  \new Staff { \clef treble \ForkedDeer }
  >>
  \header { piece = \markup {\fontsize #4.0 "Forked Deer"}}
  }
%}