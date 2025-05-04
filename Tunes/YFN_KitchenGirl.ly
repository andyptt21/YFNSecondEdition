
\version "2.18.0"

% -------------------------------------------------------------------------

KitchenGirl = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    <cis'' a''>2 <b' g''> |
    e''8 (fis'') e'' d'' cis''4 cis''8 d'' |
    e'' (cis'') e'' fis'' g'' (a'') b'' a'' |
    g''4 e'' e'' e''8 g'' |
    a'' (b'') a'' fis'' g'' (a'') g'' g'' | \break
    e'' (fis'') e'' d'' cis'' (d'') e'' fis'' |
    g''4 d'' e''8 fis'' e'' d'' |
  }
  \alternative {
    { cis''4 a' a' e''8 (g'') }
    { cis''4 a' a' <a' a'>( }
  } \break
  \repeat volta 2 {
    <a' a'>8) b' c'' a' b' (a') g' a' |
    a' (b') a' g' e' (d') e' g' |
    a'4 a'8 a' c''4 d'' |
    e''4. g''8 (e''4) <a' a'>( | \break
    <a' a'>8) b' c'' a' b' (a') g' b' |
    a' (b') a' g' e' (g') a' b' |
    c''4 a' b'8 (a') g'4 |
  }
  \alternative {
    { a'4. b'8 (a'4) <a' a'> }
    { a'4. b'8 (<a' a'>2) }
  }
}

KitchenGirlChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    a2 g2 a1 s1 e1 a2 g2 a1 g2 e2
  }
  \alternative {
    { a1 } { a1 }
  }
  \repeat volta 2 {
    a2:min g2 a1:min s1 e1 a2:min g2 a1:min s2 g2
  }
  \alternative {
    { a1:min } { a1:min }
  }
}

%{
  \score {
  <<
  \new ChordNames \KitchenGirlChords
  \new Staff { \clef treble \KitchenGirl }
  >>
  \header { piece = \markup {\fontsize #4.0 "Kitchen Girl"}}
  }
%}