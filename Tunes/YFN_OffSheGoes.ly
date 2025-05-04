
\version "2.18.0"

% -------------------------------------------------------------------------

#(set-default-paper-size "letter")

OffSheGoes = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    \partial 8 a'8
    fis'4 a'8 g'4 b'8 |
    a' b' cis'' d''4 a'8 |
    fis'4 a'8 g' a' b' |
    a' fis' d' e'4 d'8 |
    fis'4 a'8 g'4 b'8 |
    \break
    a' b' cis'' d''4 e''8 |
    fis''4 d''8 g'' [fis'' e''] |
    \partial 8*5 cis'' [a' cis''] d''4
  }
  \repeat volta 2 {
    \partial 8 e''8 |
    fis'' a'' fis'' d'' e'' fis'' |
    g'' b'' g'' e'' fis'' g'' |
    \break
    fis'' a'' fis'' d'' e'' fis'' |
    e'' cis'' a' a'4 g''8 |
    fis'' a'' fis'' d'' e'' fis'' |
    g'' b'' g'' e'' fis'' g'' |
    fis''4 d''8 g'' [fis'' e''] |
    \partial 8*5 cis'' [a' cis''] d''4
  }
}

OffSheGoesChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    d4. g4. a4. d4. s4. g4. d4. a4. d4. g4. a4. d4. s4. g4.
    \partial 8*5 a4. d4
  }
  \repeat volta 2 {
    \partial 8 s8
    d2. g2. d2. a2. d2. g2. d4. g4.
    \partial 8*5 a4. d4
  }
}

%{
  \score {
  <<
  \new ChordNames \OffSheGoesChords
  \new Staff { \clef treble \OffSheGoes }
  >>
  \header { piece = \markup {\fontsize #4.0 "Off She Goes"}}
  }
%}
