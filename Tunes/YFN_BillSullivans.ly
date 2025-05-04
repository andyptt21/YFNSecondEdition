
\version "2.18.0"

% -------------------------------------------------------------------------

BillSullivans = {
  \time 2/2
  \key a \major
  \repeat volta 2 {
    a''2 a''4. fis''8 |
    e''4 cis'' a''4. fis''8 |
    e''4 cis'' a'' fis'' |
    e'' cis'' b' a' |
    a''2 a''4. fis''8 |
    e''4 cis'' a''4. fis''8 | \break
    e''4 cis'' b' b'8 cis'' |
    b'4 a' a'2
  }
  \repeat volta 2 {
    cis''4 e'' e''4. cis''8 |
    d''4 fis'' fis''4. d''8 |
    cis''4 e'' e''4. b'8 | \break
    cis''4 b' b'2 |
    cis''4 e'' e''4. cis''8 |
    d''4 fis'' fis''4. d''8 |
    e''4 cis'' b' b'8 cis'' |
    b'4 a' a'2
  }
}

BillSullivansChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    a1 s1 s1 s1
    s1 s1 s2 e2:7 s2 a2
  }
  \repeat volta 2 {
    a1 d1 a1 e1:7
    a1 d1 a2 e2:7 s2 a2
  }
}

%{
\score {
  <<
    \new ChordNames \BillSullivansChords
    \new Staff { \clef treble \BillSullivans }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bill Sullivans Polka"}}
}
%}
