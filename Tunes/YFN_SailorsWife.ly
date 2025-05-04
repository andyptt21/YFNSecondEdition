
\version "2.18.0"

% -------------------------------------------------------------------------

SailorsWife = {
  \time 6/8
  \key f \major
  \repeat volta 2 {
    \partial 8 d'8
    d'8 e' f' e'4 d'8 |
    d''4 e''8 f''4 g''8 |
    a'' g'' f'' e'' d'' c'' |
    a'16 b' c''8 a' g' e' c' |
    %
    d' e' f' e'4 d'8 | \break
    d''4 e''8 f''4 g''8 |
    a'' f'' d'' g'' [e'' cis''] |
    \partial 8*5 d''4. d''4
  }

  \repeat volta 2 {
    \partial 8 e''8 |
    f'' g'' a'' f'' g'' a'' |
    f'' g'' a'' a'' g'' f'' | \break
    e'' c'' g'' e'' c'' g'' |
    e'' f'' g'' g'' f'' e'' |
    %
    f'' g'' a'' a'' g'' f'' |
    e'' f'' g'' g'' f'' e'' |
    a'' f'' d'' g'' [e'' cis''] |
    \partial 8*5 d''4. d''4
  }
}

SailorsWifeChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    \partial 8 s8
    d4.:min c4. d4.:min c4. f4. c4. f4. c4.
    d4.:min c4. d4.:min c4. bes4. a4.
    \partial 8*5 d4.:min s4
  }
  \repeat volta 2 {
    \partial 8 s8
    f2. s2. c2. s2.
    f2. c2. d4.:min a4.
    \partial 8*5 d4.:min s4
  }
}

%{
  \score {
  <<
  \new ChordNames \SailorsWifeChords
  \new Staff { \clef treble \SailorsWife }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Sailor's Wife"}}
  }
%}
