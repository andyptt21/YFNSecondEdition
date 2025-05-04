
\version "2.18.0"

% -------------------------------------------------------------------------

SouthOfTheJames = {
  \time 6/8
  \key d \major
  \repeat volta 2 {
    \partial 8 g'8
    a'8 g' fis' a' g' fis' |
    b' a' g' b' a' g' |
    d'' cis'' b' a' g' fis' |
    e' a' e' fis' g' fis' | \break
    a' g' fis' a' g' fis' |
    b' a' g' b' a' g' |
    d'' cis'' b' a' [b' cis''] |
    \partial 8*5 d'' [a' fis'] d'4
  } \break
  \repeat volta 2 {
    \partial 8 g''8
    fis'' d'' d'' a' d'' fis'' |
    g'' e'' e'' a' e'' g'' |
    a'' g'' fis'' e'' d'' cis'' |
    b' a' b' cis'' d'' e'' | \break
    fis'' d'' d'' a' d'' fis'' |
    g'' e'' e'' a' e'' g'' |
    a'' g'' fis'' e'' [d'' cis''] |
    \partial 8*5 d'' [a' fis'] d'4
  }
}

SouthOfTheJamesChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    d2. g2. g4. d4. a2. d2. g2. g4. a4.
    \partial 8*5 d4. s4
  }
  \repeat volta 2 {
    \partial 8 s8
    d2. a2.:7 d4. a4. b4.:min a4. d2. a2.:7 d4. a4.
    \partial 8*5 d4. s4
  }
}

%{
  \score {
  <<
  \new ChordNames \SouthOfTheJamesChords
  \new Staff { \clef treble \SouthOfTheJames }
  >>
  \header { piece = \markup {\fontsize #4.0 "South of the James"}
  opus = \markup {\fontsize #3.0 "M. Prochaska"}}
  }
%}
