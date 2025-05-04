
\version "2.18.0"

% -------------------------------------------------------------------------

ReelMontreal = {
  \time 4/4
  \key g \major
  \repeat volta 2 {
    \partial 4 d''4
    g''4 fis''8 e'' d'' c'' b' a' |
    g' b' d' g' b'4 a'8 g' |
    fis' a' d' fis' a' c'' b' a' |
    g' b' d' g' b'4 b'8 d'' | \break
    g''4 fis''8 e'' d'' c'' b' a' |
    g' b' d' g' b'4 a'8 g' |
    fis' g' a' b' c'' [d'' e'' fis''] |
    \partial 4*3 g''4 g'' g''
  } \break
  \key d \major
  \repeat volta 2 {
    \partial 4 s4
    a' fis'8 a' d''4 a'8 d'' |
    fis''4 d''8 fis'' a''4 a''8 b'' |
    a''4 g'' e'' g'' |
    b'' a'' fis'' d'' | \break
    a' fis'8 a' d''4 a'8 d'' |
    fis''4 d''8 fis'' a''4 a''8 b'' |
    a''4 g'' e'' cis'' |
    \partial 4*3 d''2 (d''4)
  }
}

ReelMontrealChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 d1 g1 s1 s1 d1:7
    \partial 4*3 g2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a2 a2:7 d1 s1 s1 a1
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \ReelMontrealChords
  \new Staff { \clef treble \ReelMontreal }
  >>
  \header { piece = \markup {\fontsize #4.0 "Reel de Montreal"}}
  }
%}
