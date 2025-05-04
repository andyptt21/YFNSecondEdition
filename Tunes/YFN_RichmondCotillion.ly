
\version "2.18.0"

% -------------------------------------------------------------------------


Richmond = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    a'4 fis'' fis''8 g'' fis'' e'' |
    d''4 fis' a'4. d''8 |
    cis''4 b' a' b' |
    a'8 b' a' g' fis' g' fis' e' |
    a'4 fis'' fis''8 g'' fis'' e'' |
    d''4 fis' a'4. b'8 |
    cis''4 a' b'8 a' cis'' a' |
    d''1
  }
  \key a \major
  \repeat volta 2 {
    e''8 fis'' e'' d'' cis'' d'' e'' fis'' |
    a''4 cis'' e''2 |
    b'4 cis'' d'' b' |
    cis''8 d'' cis'' b' a' b' cis'' d'' |
    e'' fis'' e'' d'' cis'' d'' e'' fis'' |
    a''4 cis'' e''4. a''8 |
    gis''4 e'' fis''8 e'' gis'' e'' |
  }
  \alternative {
    { a''1 } { a''2 g'' }
  }
}

RichmondChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 a1 s1 d1 s1 a1 d1
  }
  \repeat volta 2 {
    a1 s1 e1 a1 a1 s1 e1
  }
  \alternative {
    { a1 } { a2 a2:7 }
  }
}

%{
  \score {
  <<
  \new ChordNames \RichmondChords
  \new Staff { \clef treble \Richmond }
  >>
  \header { piece = \markup {\fontsize #4.0 "Richmond Cotillion"}}
  }
%}
