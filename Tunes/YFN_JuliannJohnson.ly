
\version "2.18.0"

% -------------------------------------------------------------------------

JuliannJohnson = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''8 a'' fis'' e'' d'' fis'' e'' d'' |
    b' [d''~] d'' [e''] d''4 fis''8 g'' |
    a''4 a''~ a''8 [a''] b''4 |
    a''1 | \break
    fis''8 a'' fis'' e'' d'' fis'' e'' d'' |
    b' [d''~] d'' [e''] d''4 e'' |
    fis'' e'' d''8 a' b'4 |
  }
  \alternative {
    { a'1 } { \partial 4*3 a'2. }
  } \break
  \repeat volta 2 {
    \partial 4 a'4
    b'8 a' b' cis'' d''4. a'8 |
    b' a' b' cis'' d''4. a'8 |
    b' a' b' cis'' d'' a' b'4 |
    a'2.~ a'8 a' | \break
    b' a' b' cis'' d''4. a'8 |
    b' a' b' cis'' d''4 e'' |
    fis'' e'' d''8 a' b'4 |
  }
  \alternative {
    { \partial 4*3 a'2. } { a'1 }
  }
}


JuliannJohnsonChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 s1 a1 d1 s1 s2 g2
  }
  \alternative {
    { a1 } { \partial 4*3 a2. }
  }
  \repeat volta 2 {
    \partial 4 s4
    g1 s1 s1 d1 g1 s1 d2 g2
  }
  \alternative {
    { \partial 4*3 a2.:7 } { a1:7 }
  }
}

%{
  \score {
  <<
  \new ChordNames \JuliannJohnsonChords
  \new Staff { \clef treble \JuliannJohnson }
  >>
  \header { piece = \markup {\fontsize #4.0 "Juliann Johnson"}}
  }
%}
