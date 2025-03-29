\version "2.18"

WashingtonsMarchChords = \chordmode{
  d1 g2 d s1 a2 d
  d1 g2 d s1 a2 d a2 d
  d1 a d a2 d
  d1 a d a2 d
}

WashingtonsMarch =  {

  \time 4/4 \key d \major   \repeat volta 2 {
    d'8    e'8    fis'8    g'8    a'8   b'8    c''8    a'8
    g'8    b'8    a'8    g'8    fis'8    d'8    e'8    fis'8
    d'8    e'8    fis'8    g'8    a'8    g'8    fis'8    g'8
    a'8    d''4 a'8     d''4    d''4
    d'8   
 e'8    fis'8    g'8    a'8    b'8    c''8    a'8     g'8    b'8    a'8 
   g'8    fis'8    d'8    e'8    fis'8     d'8    e'8    fis'8    g'8   
 a'4    d''8    e''8  } \alternative{{   fis''8    d''8    e''8    cis''8    
d''4    d''4  } {   fis''8    d''8    e''8    cis''8    d''4    d''8    e''8  
}}     \repeat volta 2 {   fis''8    d''8    a''8    d''8    fis''8    
d''8    a''8    d''8     e''8    d''8    cis''8    d''8    e''8    
fis''8    g''8    e''8     fis''8    d''8    a''8    d''8    fis''8    
d''8    a''8    d''8     e''8    d''8    cis''8    a'8    d''4    d''8  
  e''8       fis''8    d''8    a''8    d''8    fis''8    d''8    a''8   
 d''8     e''8    d''8    cis''8    d''8    e''8    fis''8    g''8    
			   e''8
			   a''4    g''4 \tuplet 3/2 {fis''8 g''8 fis''8} d''8 fis''8
			 e''8 d''8 cis''8 a'8 d''4 d''4}}


\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \WashingtonsMarchChords 
      \new Staff { \clef treble \WashingtonsMarch }

    >>
  \header { piece = \markup {\fontsize #4.0 "Washington's March"}}
  \layout {}
  \midi {}
}