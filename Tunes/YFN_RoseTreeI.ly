
\version "2.18.0"

% -------------------------------------------------------------------------

RoseTreeI = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    \partial 4 fis''8 e''
    d''4 b' a' fis' |
    a'8 b' a' fis' a'4 \tuplet 3/2 { a'8 (b' cis'' } |
    d''4) cis''8 d'' e''4 d''8 e'' |
    fis''4 e'' e''8 g'' fis'' e'' |
    d''4 b' a' fis' |
    a'8 b' a' fis' a'4 \tuplet 3/2 { a'8 (b' cis'' } |
    d''4) cis''8 d'' e''4 d''8 [e''] |
    \partial 4*3 fis''4 d'' d''
  }
  \repeat volta 2 {
    \partial 4 d''8 e'' |
    fis''4 e'' fis'' g'' |
    a''2 g''4 fis'' |
    e'' b'' b''4. a''8 |
    b''4 e'' e''8 g'' fis'' e'' |
    d''4 \tuplet 3/2 { b'8 (d'' b' } a'4) fis' |
    a'8 b' a' fis' a'4 \tuplet 3/2 { a'8 b' cis'' } |
    d''4 cis''8 d'' e''4 d''8 [e''] |
    \partial 4*3 fis''4 d'' d''
  }
}

RoseTreeIChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 s2 e2:min a1 d1 s1 s2 a2
    \partial 4*3 d2.
  }
  \repeat volta 2 {
    \partial 4 s4
    d1 s1 e1:min s1 d1 s1 s2 a2
    \partial 4*3 d2.
  }
}

%{
  \score {
  <<
  \new ChordNames \RoseTreeIChords
  \new Staff { \clef treble \RoseTreeI }
  >>
  \header { piece = \markup {\fontsize #4.0 "Rose Tree I"}}
  }
%}
