
\version "2.18.0"

% --------------------------------------------

SageHenB = {
  \time 3/4
  \key d \major
  \repeat volta 2 {
    fis''8 [e''] d'' [b'] a'4 |
    fis'8 [g'] a' b'4 d''8 |
    fis'' [e''] d'' [b'] a'4 |
    d''8 [a'] fis' e'4 d'8 | % \break

    fis'' [e''] d'' [b'] a'4 |
    fis'8 [g'] a' b'4 d''8 |
    fis'' [e''] d'' [b'] a' [d'] |
    d'' [b'] a' [fis'] e' [d'] \bar "||" % \break

    b [d'] a [d'] b [d'] |
    cis' [d'] d' [d'] cis' [d'] |
    b [d'] a [d'] fis' [d'] |
    e' [d'] fis' [d'] b [a] | % \break

    b [d'] a [d'] b [d'] |
    cis' [d'] d' [d'] cis' [d'] |
    b [d'] a [d'] fis' [d'] |
    e' [fis'] g' [a'] b' [d''] \bar "||" % \break

    fis'' [g''] a'' [fis''] b'' [fis''] |
    g'' [fis''] e'' [d''] b' [a'] |
    fis' [a'] d' [a'] fis' [a'] |
    e' [fis'] g' [a'] b' [d''] | % \break

    fis'' [g''] a'' [fis''] b'' [fis''] |
    g'' [fis''] e'' [d''] b' [a'] |
    fis' [a'] d' [e'] fis' [a'] |
    d'' [b'] a' [fis'] e' [d'] \bar "||" % \break

    b [d'] a [d'] b [d'] |
    cis' [d'] d' [d'] cis' [d'] |
    b [d'] a [d'] fis' [d'] |
    e' [d'] fis' [d'] b [a] | % \break

    b [d'] a [d'] b [d'] |
    cis' [d'] d' [d'] cis' [d'] |
    b [d'] a [d'] fis' [d'] |
  }
  \alternative {
    { e' [fis'] g' [a'] b' [d''] }
    { e'_"rit ..." [fis'] g' [a'] b' [cis''] d''2. \fermata \bar "|." }
  }
}

SageHenBChords = \chordmode {
  \time 3/4
  \repeat volta 2 {
    d2. s2. s2. s2. d2. s2. s2. s2.
    g2. d2. g2. a2. g2. d2. g2. e2:min a4
    d2. g2. d2. a2. d2. g2. d2. a2.
    g2. d2. g2. a2. g2. d2. g2.
  }
  \alternative {
    { e2:min a4 }
    { e2:min a4 d2. }
  }
}

%{
  \score {
  <<
  \new ChordNames \SageHenBChords
  \new Staff { \clef treble \SageHenB }
  >>
  \header {
  piece = \markup {\fontsize #4.0 "Sage Hen Waltz"}
  opus =  \markup {\fontsize #3.0 "Tim Ball"}
  }
  }

  \markup \fontsize #2.0 \column {
  " "
  "Written for the wedding of Bryant and Sarah Rose Adams"
  "on the 19th of August, 2006, at Sage Hen Farm, Lodi, NY"
  }
%}
