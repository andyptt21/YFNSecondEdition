
\version "2.18.0"

% --------------------------------------------

SoTheyTied = {
  \time 6/8
  \key d \major

  \override TextScript.padding = #2.2

  \partial 8 a'8
  fis'4_\markup{\fontsize #2.5 "Actives cast down the outside below two couples"} a'8 a' fis' a' |
  d'' cis'' b' a' fis' d' |
  g' b' g' fis' a' fis' |
  e' fis' g' a' b' a' | \break
  fis'4_\markup{\fontsize #2.5 "Lead up the center to place and cast off"} a'8 a' fis' a' |
  d'' cis'' b' a' fis' d' |
  g' b' g' a' b' cis'' |
  d'' d' d' d'4 a'8 \bar "||" \break

  fis'4_\markup{\fontsize #2.5 "Right hand three hand star - gent below, lady above"} a'8 a' fis' a' |
  d'' cis'' b' a' fis' d' |
  g' b' g' fis' a' fis' |
  e' fis' g' a' b' a' | \break
  fis'4_\markup{\fontsize #2.5 "Actives pass with an allemande left, star with other couple"} a'8 a' fis' a' |
  d'' cis'' b' a' fis' d' |
  g' b' g' a' b' cis'' |
  d'' d' d' d'4 g''8 \bar "||" \break

  fis''_\markup{\fontsize #2.5 "Actives do-si-do"} d'' fis'' fis'' g'' a'' |
  e'' cis'' e'' e'' fis'' g'' |
  fis'' e'' fis'' fis'' g'' a'' |
  e'' cis'' a' a'4. | \break
  fis''8_\markup{\fontsize #2.5 "All join hands, go forward and back"} d'' fis'' fis'' g'' a'' |
  e'' cis'' e'' e'' fis'' g'' |
  fis'' a'' fis'' e'' d'' e'' |
  fis'' d'' d'' d''4 g''8 \bar "||" \break

  fis''_\markup{\fontsize #2.5 "Actives do-si-do"} d'' fis'' fis'' g'' a'' |
  e'' cis'' e'' e'' fis'' g'' |
  fis'' e'' fis'' fis'' g'' a'' |
  e'' cis'' a' a'4. | \break
  fis''8_\markup{\fontsize #2.5 "Actives swing partner"} d'' fis'' fis'' g'' a'' |
  fis'' cis'' e'' e'' fis'' g'' |
  fis'' a'' fis'' e'' [d'' e''] |
  \partial 8*5 e'' [d'' d''] d''4 \bar "||"
}

SoTheyTiedChords = \chordmode {
  \time 6/8

  \partial 8 s8
  d2. s2. g4. d4. a2.:7
  d2. d2. g4. a4.:7 d2.
  d2. s2. g4. d4. a2.:7
  d2. d2. g4. a4.:7 d2.

  d2. a2.:7 d2. a2.:7
  d2. a2.:7 d4. a4.:7 d2.
  d2. a2.:7 d2. a2.:7
  d2. a2.:7 d4. a4.:7
  \partial 8*5 d4. s4
}


  \score {
  <<
  \new ChordNames \SoTheyTiedChords
  \new Staff { \clef treble \SoTheyTied }
  >>
  \header { piece = \markup {\fontsize #4.0 "So They Tied The Knot"}
	    opus = \markup {\fontsize #3.0 "Steve Rauch"}}
  \layout {}
  }

  \markup \fontsize #1.5 \column {
    " "
    "This dance was written for Charlie & Nancy Trautmann's wedding in 1977"
    "by Steve. Charlie & Nancy led YFN from 1979-1982.  During this time, an"
    "unknown writer put \"Music by Your Friends & Neighbors\" on a flier for a gig,"
    "and the name stuck. Steve was Charie's college roomate and headed a contra"
    "band in Cincinnati in the late 1970's."
  }

