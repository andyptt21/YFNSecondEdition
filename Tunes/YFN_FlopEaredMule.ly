
\version "2.18.0"

% -------------------------------------------------------------------------

FlopEaredMule = {
  \time 2/2
  \key d \major
  \repeat volta 2 {
    fis''4 fis''8 fis'' d''4 d''8 d'' |
    a'4 a'8 a' fis'4 fis'8 fis' |
    e'4 g' fis' e' |
    d'8 e' fis' g' a'2 |
    fis''4 fis''8 fis'' d''4 d''8 d'' | 
    \break
    a'4 a'8 a' fis'4 fis'8 fis' |
    e'4 g' fis' e' |
  }
  \alternative {
    {d'4 fis' d'2} {d'4 fis' d'2}
  }
  \key a \major
  \repeat volta 4 {
    <cis'' e''>4 <cis'' e''>8 <cis'' e''> <cis'' e''>4 <cis'' e''>8 <cis'' e''> | 
    \break
    c'' (c'' <c'' e''>) <c'' e''> <c'' e''>4 <c'' e''>8 <c'' e''> |
    <b' e''>4 <d'' e''>8 <d'' e''> <cis'' e''>4 <cis'' e''>8 <cis''e''> |
  }
  \alternative {
    { a'8 b' cis'' d'' e''2 }
    { a'4 cis'' a'2 }
  }
}

FlopEaredMuleChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1 s1 a1:7 d1 s1 s1 a1:7
  }
  \alternative {
    { d1 } { d2 e2 }
  }
  \repeat volta 4 {
    a1 s1 e1:7
  }
  \alternative {
    { a1 } { a1 }
  }
}

%{
  \score {
  <<
  \new ChordNames \FlopEaredMuleChords
  \new Staff { \clef treble \FlopEaredMule }
  >>
  \header { piece = \markup {\fontsize #4.0 "Flop-Eared Mule"}}
  }
%}