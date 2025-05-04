\version "2.18.0"

% -------------------------------------------------------------------------

MeetingWaters = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 a'8 a' |
    d''8. cis''16 d''8 fis'' a'4 d''8 cis'' |
    b'8. d''16 b'8 g' a'4 d''8. e''16 |
    fis''8 a'' a' a'' g'' fis'' e'' d'' |
    fis''4. g''16 fis'' e''4 a'8 b' | \break
    d''8. cis''16 d''8 fis'' a'4 d''8 cis'' |
    b' d'' b' g' a'4 d''8. e''16 |
    fis''8 a'' g'' fis'' g'' [a' cis'' e''] |
    \partial 4*3 d''4 d''8. d''16 d''4
  } \break
  \repeat volta 2 {
    \partial 4 a''8. g''16 |
    fis''4 a''8. g''16 fis''8 a'' fis'' a' |
    b' d'' g'' b' a'4 a''8. g''16 |
    fis'' g'' a''8 a' a'' g'' fis'' e'' d'' |
    fis''4. g''16 fis'' e''4 a''8. g''16 | \break
    fis''4 a''8. g''16 fis''8 a'' fis'' d'' |
    b' g' g'' b' a'4 d''8. e''16 |
    fis''8 a'' g'' fis'' g'' [a' cis'' e''] |
    \partial 4*3 d''4 d''8. d''16 d''4
  }
}

MeetingWatersChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 d2 s1 b2:min a2
    d1 g2 d2 s2 a2 \partial 4*3 d2.
  } \break
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 d2 s1 b2:min a2
    d1 g2 d2 s2 a2 \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \MeetingWatersChords
  \new Staff { \clef treble \MeetingWaters }
  >>
  \header { piece = \markup {\fontsize #4.0 "Meeting of the Waters"}}
  }
%}
