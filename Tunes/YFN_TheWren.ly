
\version "2.18.0"

% -------------------------------------------------------------------------

TheWren = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    b'4 fis'' fis'' e''8 fis'' |
    g''4 e'' e''8 d'' cis'' d'' |
    e'' a' cis'' e'' e'' fis'' e'' d'' |
    cis''4 cis'' d''8 cis'' b' a' | \break
    %5
    b'4 fis'' fis'' e''8 fis'' |
    g''4 e'' e''8 d'' cis'' d'' |
    e'' a' cis'' e'' e'' fis'' e'' d'' |
    cis''4 b' b'8 a' fis' a' |
  } \break
  \repeat volta 2 {
    b'4. a'8 b' cis'' d'' cis'' |
    %10
    b'4 b' cis''4. d''8 |
    e'' a' cis'' e'' e'' fis'' e'' d'' |
    cis''4 cis'' d''8 cis'' b' a' | \break
    b'4. a'8 b' cis'' d'' cis'' |
    b'4 b' cis''4. d''8 |
    %15
    e'' a' cis'' e'' e'' fis'' e'' d'' |
    cis''4 b' b' a'
  }
}

TheWrenChords = \chords {
  \time 2/2
  \repeat volta 2 {
    b1:min e1:min a1 s1
    b1:min e1:min a1 a2 b2:min
  }
  \repeat volta 2 {
    b1:min s2 a2 s1 s2 g2
    g1 s2 a2 s1 s2 b2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \TheWrenChords
  \new Staff { \clef treble \TheWren }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Wren"}}
  }
%}
