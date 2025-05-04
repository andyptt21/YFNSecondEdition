
\version "2.18.0"

% -------------------------------------------------------------------------
% formerly called Reel Messervier

ReelJoseph = {
  \time 4/4
  \key d \major
  \partial 8*5
  a'8 b' cis'' d'' e'' |
  \repeat volta 2 {
    fis''4.-> fis''8 fis'' (a'' fis'' d'') |
    a'4 \tuplet 3/2 {fis'8-> (g' fis')} \tuplet 3/2 {e'8 (fis' e')} d'4-> |
    g'4.-> g'8 g' d' g' b' |
    d'' d'' d''4-> (d''8) e'' (d'' b') |
    cis''4 cis''8-> d'' cis'' a'-> cis'' e'' |
    a''4 \tuplet 3/2 {g''8-> (a'' g'')} \tuplet 3/2 {fis'' (g'' fis'')} \tuplet 3/2 {e''-> (fis'' e'')} |
  }
  \alternative {
    {
      d''4 cis''8-> d'' fis'' e'' d''-> cis'' |
      \tuplet 3/2 {b' (cis'' b'} a') a' b' cis'' d'' e''
    }
    {
      d''4 \tuplet 3/2 {a'8 a' a'( } b' a') fis' a' |
      d''2 d''4. e''8
    }
  } \break
  \repeat volta 2 {
    e'' e'' cis'' e'' a''4. e''8 |
    e'' fis'' e'' d'' \tuplet 3/2 {cis'' (d'' cis'')} a' (cis'') |
    b' a' b' d'' d''4 \tuplet 3/2 {b'8 (cis'' b')} |
    a' e' a' b' cis'' cis'' a' cis'' |
    e'' e'' cis'' e'' (a''4.) e''8 |
    e'' fis'' e'' d'' \tuplet 3/2 {cis'' (d'' cis'')} a' (cis'') |
    b' a' b' cis'' d''4 \tuplet 3/2 {b'8 (cis'' b')} |
  }
  \alternative {
    { a' (b' \tuplet 3/2 {cis'' b' a')} a''4. (e''8) | }
    { a'4. a'8 b' cis'' d'' e'' \bar "|." }
  }
}

ReelJosephChords = \chordmode {
  \time 4/4
  \partial 8*5 s2 s8
  \repeat volta 2 {
    d1 s1 g1 s1 a1 s1
  }
  \alternative {
    { d1 s4 a2. }
    { d2 a2 d1 }
  }
  \repeat volta 2 {
    a1 s1 e1 a1 s1 s1 e1
  }
  \alternative {
    { a1 }
    { a2 a2:7 }
  }
}

%{
  \score {
    <<
      \new ChordNames  \ReelJosephChords
      \new Staff {  \clef treble \ReelJoseph }
    >>
    \header {
      piece = \markup {\fontsize #4.0 "Reel Joseph" }
      opus = \markup {\fontsize #3.0 "Marcel Messervier"}
    }
  }
%}
