
\version "2.18.0"

% -------------------------------------------------------------------------

ComeDance = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 \tuplet 3/2 {a'8 (b' cis''}
    d''4) cis''8 d'' e''4 d''8 e'' |
    fis''4 d'' d''8 (e'') d'' cis'' |
    b'4 e'' e''8 (fis'') e'' d'' |
    cis''4 a' a' b'8 cis'' |
    d''4 cis''8 d'' e''4 d''8 e'' |
    fis''4 d'' d''8 (e'') d'' cis'' |
    b'4 e'' d''8 [(cis'') b' cis''] |
    \partial 4*3 d''4 a' d'
  }
  \repeat volta 2 {
    \partial 4 a'8 g' |
    fis'4 a' a'8 (b') a' g' |
    fis'4 a' a' a'8 g' |
    fis'4 a' d'' fis'' |
    e''8 (d'') cis'' b' a' (b') a' g' |
    fis'4 a' a'8 (b') a' g' |
    fis'4 a' a' \tuplet 3/2 {a'8 (b' cis''} |
    d''4) e'' fis''8 [(e'') fis'' g''] |
    \partial 4*3 a''4 a' a'
  }
}

ComeDanceChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d2 a2 d1 g1 a1 d2 a2 d1 g2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s1 a1 d1 s1 s1
    \partial 4*3 a2.
  }
}

%{
\score {
  <<
    \new ChordNames \ComeDanceChords
    \new Staff { \clef treble \ComeDance }
  >>
  \header { piece = \markup {\fontsize #4.0 "Come Dance and Sing"}}
}
%}
