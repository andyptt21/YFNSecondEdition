\version "2.18"

StarOfTheCountyDownChords = \chordmode{
  s4
  a1:m c2 g a1:m e:m
  a1:m c2 g a:m g a1:m
  c g a:m e:m
  a1:m c2 g a:m g a2.:m
}

StarOfTheCountyDown =  {
  \time 4/4
  \key a \minor
  \partial 4 e'8    g'8     a'4   a'4    a'4    g'8  
  a'8     c''4   c''4    d''4    c''8    d''8     e''4 
  d''8    c''8    a'4    g'8    e'8     g'2.    c''8    b'8  
  a'4    a'4    a'4    g'8    a'8     c''4    
  c''4    d''4    c''8    d''8
  e''4    d''8    c''8    a'4    g'4
       \partial 2. a'2. 
  \repeat volta 2 { \partial 4 e''4    
		    g''4    e''4   e''4    d''8    c''8
		    d''4    d''4    d''4    c''8    d''8  
		    e''4    d''8    c''8    a'4    g'8    e'8
		    g'2.    c''8    b'8
		    a'4    a'4    a'4    g'8    a'8     
		    c''4    c''4    d''4    c''8    d''8
		    e''4    d''8    c''8  a'4    g'4
		    a'2.  }
}

\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \StarOfTheCountyDownChords 
      \new Staff { \clef treble \StarOfTheCountyDown }

    >>
  \header { piece = \markup {\fontsize #4.0 "Star of the County Down"}}
  \layout {}
  \midi {}
}
