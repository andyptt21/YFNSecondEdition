
\version "2.18.0"

% -------------------------------------------------------------------------

AfterBattleAughrim = {
  \time 4/4
  \key g \major
  \partial 4 a'8 g'
  \repeat volta 2 {
    e'4 a' a'8 b' c'' d'' |
    e''4 d'' c'' a' |
    \appoggiatura { b'16 [c''] } b'4 g' \acciaccatura a'16 g'8 fis' g' a' |
    b' g' a' g' e'4 d' |
    \break
    e' a' a' \tuplet 3/2 { b'8 (c'' d'') } |
    e''4 e''8 d'' e''4 a''8 g'' |
    e''4 d'' b'8 e'' d'' b' |
  }
  \alternative {
    { a'2 a'4 a'8 [g'] }
    { \partial 4*3 a'2. }
  }
  \break
  \repeat volta 2 {
    \partial 4 e''4 |
    a'' a''8 g'' e''4 \tuplet 3/2 { e''8 (fis'' g'') } |
    a'' b'' a'' g'' e''4 \tuplet 3/2 { e''8 (fis'' g'') } |
    a''4 \acciaccatura a''16 a''8 fis'' g''4 \acciaccatura a''16 g''8 e'' |
    d'' e'' d'' b' g'2 |
    \break
    a''8 b'' a'' g'' e''4 \tuplet 3/2 { e''8 (fis'' g'') } |
    a'' b'' a'' g'' e''4 d'' |
    b' e'' d'' b' |
    \partial 4*3 a'2.
  }
}

AfterBattleAughrimChords = \chordmode {
  \time 4/4
  \partial 4 s4
  \repeat volta 2 {
    a1:min s1 g1 s1 a1:min s1 g1
  }
  \alternative {
    { a1:min }
    { \partial 4*3 a2.:min }
  }
  \repeat volta 2 {
    \partial 4 s4 |
    a1:min s1 s2 e2:min g1 a1:min s1 e2:min g2
    \partial 4*3 a2.:min
  }
}

%{
  \score {
  <<
  \new ChordNames \AfterBattleAughrimChords
  \new Staff {  \clef treble \AfterBattleAughrim }
  >>
  \header { piece = \markup {\fontsize #4.0 "After the Battle of Aughrim"}}
  }
%}
