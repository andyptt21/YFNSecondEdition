
\version "2.18.0"

% -------------------------------------------------------------------------

JennysGone = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    a'4. a'8 cis''4 e'' |
    a''4. gis''8 a''4 e'' |
    fis''4. e''8 fis''4 gis'' |
    a''4. b''8 a'' fis'' e'' cis'' |
    a'4. a'8 cis''4 e'' | \break
    a''4. gis''8 a''4 e'' |
    fis'' a'' e'' cis'' |
    b'2 a'
  }
  \repeat volta 2 {
    cis''4 e'' e'' a'' |
    fis'' d'' d'' fis'' |
    e'' cis'' cis'' e'' | \break
    d'' b' b'2 |
    cis''4 e'' e'' a'' |
    fis'' d'' d'' fis'' |
    e'' a'' e'' cis'' |
    b'2 a'
  }
}

JennysGoneChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1 s1 d1 a1 a1 s1 d2 a2 e2:7 a2
  }
  \repeat volta 2 {
    a1 d1 a1 e1:7 a1 d1 a1 e2:7 a2
  }
}

%{
  \score {
  <<
  \new ChordNames \JennysGoneChords
  \new Staff { \clef treble \JennysGone }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jenny's Gone to Linton"}}
  }
%}
