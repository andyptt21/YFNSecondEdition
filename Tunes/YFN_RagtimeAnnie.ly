
\version "2.18.0"

% -------------------------------------------------------------------------


RagtimeAnnie = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 8 a'8 |
    <fis' a'>8 <fis' a'> <fis' b'> <fis' b'> <fis' a'> <fis' a'> <fis' b'> <fis' b'> |
    <fis' a'> <fis' a'> <fis' b'> <fis' b'> <fis' a'>4. a'8 |
    <fis' a'> <fis' a'> <fis' b'> <fis' b'> <fis' a'> <fis' a'> <fis' b'> <fis' b'> |
    a' cis''4 (c''8) cis''4 b' |
    a'8 b' cis'' a' b' a'4. |
    a'8 b' cis'' a' b' a'4. |
    a'8 b' cis'' a' b' a' b'4 |
    \partial 8*7
    a' d'' d''4.
  }
  \partial 8 fis''8 |
  a''2 (a''8) fis'' d'' b' |
  a'1 |
  d''8 d''4 d''8 cis''4 c'' |
  b'2. e''4 |
  g''2 (g''8) e'' cis'' b' |
  a'1 |
  a'8 a'4 cis''8 b'4 a' |
  fis'2. fis''4 |
  a''2 (a''8) fis'' d'' b' |
  a'1 |
  a''8 a''4 a''8 g''4 a'' |
  b''1 |
  b'8 a' b' cis'' d'' cis'' d'' e'' |
  fis'' e'' fis'' g'' a''2 |
  fis''8 e'' fis'' g'' a'' [fis'' e'' cis''] |
  \partial 4*3
  d''4. d''8 d''4
}

RagtimeAnnieChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 8 s8
    d4 b4:min d4 b4:min d4 b4:min d2 d4 b4:min d4 b4:min
    a1 s1 s1 s2 a2:7
    \partial 8*7
    d4 s4 s4.
  }
  \partial 8 s8
  d1 s1 s2. d4:7 g1 a1:7 s1 s1
  d1 s1 s1 d1:7 g1 e2:min g2:min d1 s2 a2:7
  \partial 4*3
  d2.
}

%{
  \score {
  <<
  \new ChordNames \RagtimeAnnieChords
  \new Staff { \clef treble \RagtimeAnnie }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ragtime Annie"}}
  }
%}
