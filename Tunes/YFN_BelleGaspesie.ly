
\version "2.18.0"

% -------------------------------------------------------------------------

BelleGaspesie = {
  \time 4/4
  \key a \major
  \partial 4 e'8 a'
  \repeat volta 2 {
    cis''4. d''8 cis'' b' a' b' |
    fis'' e'' e'' fis'' e''4 e'8 a' |
    cis''4. d''8 cis'' b' a' b' |
    e'' d'' d'' cis'' d''2 | \break
    d''8 cis'' d'' e'' d'' cis'' b' a' |
    cis'' b' b' cis'' b'4 cis''8 d'' |
    e''4. fis''8 e'' d'' cis'' a' |
    cis'' a' b' gis' a'2
  } \break
  \repeat volta 2 {
    a''8 a' g'' a' fis'' a' e'' a' |
    a' cis'' e'' fis'' e'' cis'' a' fis' |
    e'4 b'8 e' cis'' e' b' a' |
    b' cis'' d'' e'' cis'' b' a'4 | \break
    a''8 a' g'' a' fis'' a' e'' a' |
    a' cis'' e'' fis'' e'' cis'' a' fis' |
    e'4 b'8 e' cis'' e' b' a' |
    a' cis'' b' gis' a'2
  }
}

BelleGaspesieChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    a1 s1 s1 e1 s1 s1 s1 a1
  }
  \repeat volta 2 {
    a1 s1 e1 s1 a1 s1 e1 a1
  }
}

%{
\score {
  <<
    \new ChordNames \BelleGaspesieChords
    \new Staff { \clef treble \BelleGaspesie }
  >>
  \header {
    piece = \markup {\fontsize #4.0 "La Belle Gaspésie" \postTitle }
    opus = \markup {\fontsize #3.0 "Marcel Messervier"}
  }
}
%}