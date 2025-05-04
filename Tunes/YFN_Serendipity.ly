
\version "2.18.0"

% -------------------------------------------------------------------------

Serendipity =  {
  \time 3/4
  \key g \major
  \repeat volta 2 {
    g'4. d'8 b4%|
    g' d' b%|
    g' a' b'%|
    c''2. 
    %5
    b'4. c''8 b'4%|
    a' b' a'%|
    g' b' g'%|
    e'2 e'4 
    g'4. d'8 b4%|
    %10
    g' d' b%|
    g' a' b'%|
    c''2. 
    b'4. c''8 b'4%|
    a' b' a'%|
    %15
    g'2.%|
  }
  \alternative {
    { g' }
    { g'2 b'8 c'' }
  } 
  \break

  \repeat volta 2 {
    d''4 c'' b'%|
    g''2 fis''4%|
    %20
    e''4. fis''8 e''4%|
    d''2. 
    d''4 b'^. b'^. %|
    d'' b'^. b'^. %|
    c''4. d''8 b'4%|
    %25
    a'2 b'8 c'' 
    d''4 c'' b'%|
    g''2 fis''4%|
    e''2.%|
    d'' 
    %30
    c''2 c''8 c''%|
    b'4 g' g'%|
    a' b' a'%|
    g'2.
  }
}

SerendipityChords = \chordmode  {
  \time 3/4
  \repeat volta 2 {
    g2. s2. s2. c2.
    g2. a2.:m g2. c2.
    g2. s2. s2. c2.
    g2. d2. c2.
  }
  \alternative {
    { g2. }
    { g2. }
  }
  \repeat volta 2 {
    g2. s2. c2. g2.
    g2. e2.:m c2. d2.
    g2. s2. c2. g2.
    c2. g2. d2. g2.
  }
}

%{
  \score {
  <<
  \new ChordNames \SerendipityChords
  \new Staff { \clef treble \Serendipity }
  >>
  \header { piece = \markup {\fontsize #4.0 "Serendipity"}
  opus = \markup {\fontsize #3.0 "Sarah Stark"}}
  }
%}
