
\version "2.18.0"

% -------------------------------------------------------------------------

OldFrench = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 { a'8 (b' cis'') }
    d''4 cis''8 d'' b' d'' a' fis' |
    d' fis' a' d'' fis''4 e''8 d'' |
    cis'' d'' e'' fis'' g'' e'' cis'' e'' |
    d'' e'' fis'' d'' a'4 \tuplet 3/2 { a'8 (b' cis'') } | \break
    d''4 cis''8 d'' b' d'' a' fis' |
    d' fis' a' d'' fis''4 e''8 d'' |
    cis'' d'' e'' fis'' g'' [e'' cis'' e''] |
    \partial 4*3 d''4 fis'' d''
  } \break
  \key a \major
  \repeat volta 2 {
    \partial 4 cis''8 d'' |
    e'' fis'' e'' d'' cis''4 a' |
    a'8 e' a' cis'' e''4 d''8 cis'' |
    b' g' b' d'' g'' fis'' e'' d'' |
    cis'' a' cis'' e'' a''4 cis''8 d'' | \break
    e'' fis'' e'' d'' \tuplet 3/2 {cis'' (d'' cis'')} a'4 |
    a'8 e' a' cis'' e''4 d''8 cis'' |
    b' g' b' d'' g'' [fis'' e'' d''] |
    \partial 4*3 cis''4 a' a'
  }
}

OldFrenchChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 a1 d1 s1 s1 a1
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    a1 s1 g1 a1 s1 s1 g1
    \partial 4*3 a2.
  }
}

%{
  \score {
  <<
  \new ChordNames \OldFrenchChords
  \new Staff { \clef treble \OldFrench }
  >>
  \header { piece = \markup {\fontsize #4.0 "Old French"}}
  }
%}
