
\version "2.18.0"

% -------------------------------------------------------------------------

CoralsCaper = {
  \time 6/8
  \key a \major
  \repeat volta 2 {
    fis'8 a' fis' e'4 a'8 |
    b' cis'' d'' cis'' b' a' |
    fis' a' fis' e' a' cis'' |
    d'' e'' fis'' e''4 e''8 |
    %5
    a'' gis'' e'' fis'' e'' cis'' |
    d'' e'' fis'' e'' cis'' a' |
    d'' cis'' b' cis'' b' a' |
    fis' a' fis' e'4 e'8 |
  }
  \repeat volta 2 {
    b'4. b'8 cis'' d'' |
    %10
    cis''4. cis''8 d'' e'' |
    d''4. d''8 e'' fis'' |
    e'' a'' fis'' e'' cis'' a' |
    b'4. b'8 cis'' d'' |
    cis''4. cis''8 d'' e'' |
    %15
    d'' cis'' b' cis'' b' a' |
    fis' a' fis' e'4. \bar "|."
  }
}

CoralsCaperChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d4. e4. s4. a4. d4. a4. d4. e4.
    a4. s4. d4. a4. d4. a4. d4. e4.
  }
  \repeat volta 2 {
    e4. s4. a4. s4. d4. s4. a4. s4.
    e4. s4. a4. s4. d4. a4. d4. e4.
  }
}

%{
  \score {
  <<
  \new ChordNames \CoralsCaperChords
  \new Staff { \clef treble \CoralsCaper }
  >>
  \header { piece = \markup {\fontsize #4.0 "Coral's Caper"}
  opus = \markup {\fontsize #3.0 "Megan Beller" } }
  }
%}
