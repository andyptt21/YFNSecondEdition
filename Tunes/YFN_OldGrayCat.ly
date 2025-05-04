
\version "2.18.0"

% -------------------------------------------------------------------------

OldGreyCat = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    e''4 e'' e'4. fis'8 |
    g' fis' g' a' b' a' b' cis'' |
    d''4 d'' d'4. e'8 |
    fis' a' d'' b' a' fis' e' d' |
    e''4 e'' e'4. fis'8 |
    g' fis' g' a' b' a' b' cis'' |
    d'' cis'' b' a' b' a' g' fis' |
    g'4 e' e'2
  }
  \repeat volta 2 {
    b'4 e'' e''4. d''8 |
    b' d'' e'' fis'' g'' fis'' e'' d'' |
    a'4 d'' d''4. b'8 |
    a' b' d'' e'' fis'' e'' d'' fis'' |
    e''4 b' g'' b' |
    a'' b' b''4. a''8 |
    g'' fis'' e'' d'' b' a' b' d'' |
    e''2 e''
  }
}

OldGreyCatChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    e1:min s1 d1 s1 e1:min s1 b1:min e1:min
  }
  \repeat volta 2 {
    e1:min s1 d1 s1 e1:min s2 b2:7 e2:min b2:7 e1:min
  }
}

%{
  \score {
  <<
  \new ChordNames \OldGreyCatChords
  \new Staff { \clef treble \OldGreyCat }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old Grey Cat"}}
  }
%}
