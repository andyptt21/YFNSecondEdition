\version "2.18.0"

AmericanPolkaChords = \chordmode{
  s4
  d1 s s a:7
  s s s d
  s s d:7 g2 g:m
  g g:m d1 a d2 d:7
  g2 g:m d1 a d
  a s s e2 a
  a1 s s e2 a e2 a
  d1 s a d
  d s e a
  d d:7 g g2 g:m
  d1 a d s
}

AmericanPolka =  {

  \time 4/4 \key d \major   \partial 4 b'8    cis''8  \repeat volta 2 {   d''8    cis''8    
b'8    d''8    cis''8    b'8    a'8    cis''8     b'4    fis'4    fis'4 
   b'8    cis''8     d''8    cis''8    b'8    d''8    cis''8    b'8    
a'8    cis''8     b'4    g'4    g'4    b'8    cis''8       d''8 
   cis''8    b'8    d''8    cis''8    b'8    a'8    cis''8     b'4    
g'4    g'4    b'8    cis''8     d''8    cis''8    b'8    d''8    cis''8 
   b'8    a'8    cis''8     b'4    fis'4    fis'4    b'8    cis''8  
     d''8    cis''8    b'8    d''8    cis''8    b'8    a'8    cis''8  
   b'4    fis'4    fis'4.    fis''8   \times 2/3 {   fis''8    
g''8    fis''8  }   f''8    fis''!8    g''4    fis''4     b'2    bes'2  
     b'8    cis''8    d''8    dis''8    e''8    d''!8    cis''8    b'8  
   a'8    a''8    fis''8    d''8    a'4    \times 2/3 {   a''8    a''8  
  a''8  }    a''8    g''8    e''8    cis''8    a'4    \times 2/3 {   
a''8    a''8    a''8  }    b''8    a''8    fis''8    d''8    a'4    
bes'4       b'8    cis''8    d''8    dis''8    e''8    d''!8    cis''8  
  b'8     a'8    a''8    fis''8    d''8    a'4    \times 2/3 {   a''8   
 a''8    a''8  }    a''8    g''8    e''8    cis''8    a'8    b'8    
							     c''8    cis''!8     d''4    r4   a'4    b'8    cis''8  }
\repeat volta 2 {
\key a \major   e''4.    e''8    fis''8    gis''8    a''8    fis''8     
e''8    dis''8    e''8    fis''8    e''8    a'8    cis''8    e''8     
fis''8    gis''8    a''8    fis''8    e''8    a'8    cis''8    a'8     
b'4    b'8    a'8    b'8    cis''8    d''8    fis''8       e''4.    
e''8    fis''8    gis''8    a''8    fis''8     e''8    dis''8    e''8   
 fis''8    e''8    a'8    cis''8    e''8     fis''8    gis''8    a''8   
fis''8    e''8    a'8    cis''8    a'8 }
  \alternative{{   b'8    a'8    gis'8    b'8  
		   a'8    b'8    cis''8    d''8 }
	       {b'8    a'8    gis'8    b'8    a'8  
		b'8    d''8    e''8}}
  \repeat volta 2{
  \key d \major   fis''4.    g''8^"Triplets can be played as quarter notes"    
  \times 2/3 {   fis''8    fis''8    fis''8  }   \times 2/3 {   e''8    e''8    
								e''8  }  \times 2/3 {   d''8    d''8    d''8  }   \times 2/3 {   a'8    
																 a'8    a'8  }   \times 2/3 {   fis'8    fis'8    fis'8  }   \times 2/3 {   d'8  
  d'8    d'8  }  \times 2/3 {   cis'8    cis'8    cis'8  }   
\times 2/3 {   e'8    e'8    e'8  }   \times 2/3 {   g'8    g'8    g'8  }   
\times 2/3 {   e'8    e'8    e'8  }  \times 2/3 {   d'8    d'8    d'8  
}   \times 2/3 {   a'8    a'8    a'8  }   \times 2/3 {   gis'8    gis'8    
gis'8  }   \times 2/3 {   g'!8    g'8    g'8  }      \times 2/3 {   
fis'8    fis'8    fis'8  }   \times 2/3 {   d''8    d''8    d''8  }   
\times 2/3 {   cis''8    cis''8    cis''8  }   \times 2/3 {   b'8    b'8    b'8 
 }  \times 2/3 {   a'8    a'8    a'8  }   \times 2/3 {   b'8    b'8    
b'8  }   \times 2/3 {   cis''8    cis''8    cis''8  }   \times 2/3 {   d''8    
d''8    d''8  }    e''4.    fis''8    e''8    d''8    e''8    fis''8  
   a''8    g''8    e''8    cis''8    a'8    b'8    cis''8    a'8  
     d''4.    fis''8    fis''4    e''4     d''4    d''4    
e''4 fis''4    a''4    g''2    b'4     b'2  
  bes'2       a'4    fis''4    fis''8    e''8    fis''8    g''8  
   fis''4    e''4    b'4    cis''4     d''4    d''8    cis''8   
 d''8    b'8    a'8    fis'8     d'2    r2    }
}

\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \AmericanPolkaChords 
      \new Staff { \clef treble \AmericanPolka }

    >>
  \header { piece = \markup {\fontsize #4.0 "American Polka"}}
  \layout {}
  \midi {}
}
