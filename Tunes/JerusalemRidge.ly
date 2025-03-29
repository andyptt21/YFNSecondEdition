\version "2.18"

JerusalemRidgeChords = \chordmode{
  a1:m s s s
  s s s e2:7 a:m e2:7 a:m
  a1:m s s s2 e:7
  a1:m s s e2:7 a:m
  a1:m d:m e2 e:7 a1:m a1:m
  a1:m s c s
  a:m s s e2:7 a:m
  s1 s  e2:7 a:m s1
}

JerusalemRidge =  {
  \time 4/4 \key a \minor   \repeat volta 2 {
    a8    b8    c'8    d'8    e'4   e'8    f'8
    e'8    d'8    c'8    e'8    d'8    c'8    e'8    c'8  
    a8    b8    c'8    d'8    e'8    g'8    a'8    g'8
    e'8  d'8    c'8    e'8    d'8    c'8    a4
    a8    b8    c'8  d'8    e'4    e'8    f'8
    e'8    d'8    c'8    e'8    d'8    c'8    e'8    c'8
    a8    b8    c'8    d'8    e'8    g'8    a'8    g'8  
  }
  \alternative{
    {   \times 2/3 {   e'8    g'8    e'8  }   d'8    c'8    a4.  g8  }
    {   \times 2/3 {   e'8    g'8    e'8  }   d'8    c'8    a4.    d'8}}
  \break
  \repeat volta 2 {   e'4    a'4    a'4    a'4
		      e'8  a'8    a'8    b'8    c''8    d''8    c''8    a'8
		      e'4    a'4    a'4  a'8    b'8
		      c''4    e''4    e''2
		      e'4    a'4    a'4   a'4
		      e'8    a'8    a'8    b'8    c''8    d''8    c''8    a'8  
		      e'8    g'8    a'8    b'8    c''8    d''8    c''8    a'8     
		      g'8    e'8    d'8    c'8    a2  }
  \break
  \repeat volta 2 { \times 2/3 {   g'8   a'8    g'8  }   e'2 f'8 e'8 
		    d'2.  e'8 d'8
		    c'2 b8 d'8 c'8 b8 
		    }
  \alternative{
    {a1}
    {a2. e''4~}
  }
  \break
  \repeat volta 2 {
    e''4    a''4    a''4.    g''8
    a''4   b''4    c'''2
    e''8    g''4    a''8    g''4.    e''8     
    g''8    a''8    g''8    e''8    d''8    c''4    d''8
    e''8    a''4  g''8    a''4    a''4
    c'''8    a''8    b''8    c'''8    a''8  c'''8    g''8    d''8
    e''4    e''4    e''8    d''8    c''8    d''8  
    e''8    d''8    c''8    g'8    a'2          
    a'4.    c''8    a'8    g'8    e'8    d'8
    e'4.    g'8    e'8    d'8   c'8    d'8
    e'8    c'8    d'8    c'8    a2~
    a2.  e''4}   
}

\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \JerusalemRidgeChords 
      \new Staff { \clef treble \JerusalemRidge }

    >>
  \header { piece = \markup {\fontsize #4.0 "Jerusalem Ridge"}}
  \layout {}
  \midi {}
}
