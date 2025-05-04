
\version "2.18.0"

% -------------------------------------------------------------------------

MorpethRant = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 { a'8 (b' cis'' }
    d''4) d''8 a' fis' d' fis' a' |
    b' g' b' d'' cis'' a' cis'' e'' |
    d'' fis'' a'' fis'' g'' fis'' e'' d'' |
    cis''4 e'' e'' a'8 cis'' | \break
    d''4 d''8 a' fis' d' fis' a' |
    b' g' b' d'' cis'' a' cis'' e'' |
    d'' fis'' a'' fis'' g'' [fis'' e'' d''] |
    \partial 4*3 a'4 d'' d''
  } \break
  \repeat volta 2 {
    \partial 4 fis''8 e'' |
    d'' fis'' a'' fis'' d'' fis'' a'' fis'' |
    g'' fis'' e'' fis'' g''4 e''8 fis'' |
    g'' fis'' e'' d'' cis'' d'' e'' g'' |
    fis'' e'' d'' e'' fis''4 fis''8 e'' | \break
    d'' fis'' a'' fis'' d'' fis'' a'' fis'' |
    g'' fis'' e'' fis'' g''4 e''8 fis'' |
    g'' fis'' e'' d'' cis'' [d'' e'' g''] |
    \partial 4*3 fis''4 d'' d''
  }
}

MorpethRantChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 g2 a2 d1 a1 d1 g2 a2 d2 g2
    \partial 4*3 a2 d4
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 g1 a1 d1 s1 g1 a1
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \MorpethRantChords
  \new Staff { \clef treble \MorpethRant }
  >>
  \header { piece = \markup {\fontsize #4.0 "Morpeth Rant"}
  opus = \markup {\fontsize #3.0 "William Shield"}}
  }
%}
