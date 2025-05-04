
\version "2.18.0"

% -------------------------------------------------------------------------

LaMaison = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    d'4. d'8 e' fis' |
    a'4. a'8 fis' a' |
    b'4. b'8 cis'' d'' |
    cis'' b' a' g' fis' e' |
    d'4. d'8 e' fis' |
    a'4. a'8 fis' a' |
  }
  \alternative {
    {
      b'4. b'8 a' g'
      fis'4. e'
    }
    {
      b'4. b'8 cis'' d'' |
      cis''4. fis'
    }
  }
  \repeat volta 2 {
    b'4. b'8 cis'' d'' |
    b'4. b'8 cis'' d'' |
    fis'' e'' d'' e'' d'' cis'' |
    d'' cis'' a' d'' cis'' a' |
    b'4. b'8 cis'' d'' |
    b'4. b'8 cis'' d'' |
    fis'' e'' d'' e'' d'' cis'' |
  }
  \alternative {
    { a'8 d'' cis'' d''4 cis''8 }
    { a'8 d'' cis'' d''4. }
  }
}

LaMaisonChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2. fis2.:min g2. a2. d2. fis2.:min
  }
  \alternative {
    { g2. d4. a4. }
    { g2. a4. fis4. }
  }
  \repeat volta 2 {
    b2.:min g2. d2. fis2.:min b2.:min g2. d4. b4.:min
  }
  \alternative {
    { a4. d4. }
    { a4. d4. }
  }
}

%{
  \score {
  <<
  \new ChordNames \LaMaisonChords
  \new Staff { \clef treble \LaMaison }
  >>
  \header { piece = \markup {\fontsize #4.0 "La Maison de Glace"}
  opus = \markup {\fontsize #3.0 "Rejean Brunet"}}
  }
%}
