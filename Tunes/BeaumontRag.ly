\version "2.18"

BeaumontRagChords = \chordmode{
  s2.
  a1:7 s d s
  a:7 s d s
  a:7 s d s
  g d a:7 d
  a:7 s d s
  a:7 s d s
  a:7 s d s
  g d a:7 d
}

BeaumontRag =  {

\time 4/4 \key d \major  \partial 2.  d''4    e''4    fis''4  \bar "||"   g''8    a''8 
   g''8    fis''8    e''8    fis''8    e''8    d''8     c''8    
cis''!8    c''8    cis''!8    a'8    b'8    a'4     eis''8    
fis''8    eis''8    fis''8    d''8    b'8    a'8    d''8     b'8    
a'8    fis'8    g'8    a'8    b'8    a'8    fis'8         e'8    
fis'8    g'8    a'8   ~    a'8    e'8  <<   e''4    g''4   >>    e'8 
   fis'8    g'8    a'8   ~    a'8    b'8    a'8    fis'8     d'8 
   e'8    fis'8    g'8    a'8    b'8    a'8    fis'8     d'8    
e'8    fis'8    g'8    a'8    b'8    a'4         fis''8    g''4    
e''4    fis''8    e''4     c''8    cis''!4    a'4    b'8    a'4  
   eis''8    fis''8    eis''8    fis''8    d''8    b'8    a'8    
d''8     b'8    a'8    fis'8    e'8    d'4    d'4         g'8    a'8    b'8    cis''8    
d''4    e''8    d''8     eis''8    fis''8    d''8    b'8    a'4    
b'4     cis''8    b'8    a'8    g'8    fis'8    e'8    a'8    
fis'8     d'2    d'4     b8 
   c'8  \bar "||"       cis'8    e'8    a'8    cis'8    e'8    b'8    
cis'8    e'8     a'8    cis'8    e'8    b'8    cis'8    e'8    a'4 
    d'8    fis'8    a'8    d'8    fis'8    b'8    d'8    fis'8  
   a'8    d'8    fis'8    b'8    d'8    fis'8    a'4        
 cis'8    e'8    a'8    cis'8    e'8    b'8    cis'8    e'8     
a'8    cis'8    e'8    b'8    cis'8    e'8    a'4     d''8    
b'8    a'8    d''8    b'8    a'8    fis'8    g'8     a'8    b'8    
a'8    fis'8    e'8    d'8    b8    c'8         cis'8    e'8    
a'8    cis'8    e'8    b'8    cis'8    e'8     a'8    cis'8    e'8 
   b'8    cis'8    e'8    a'4     d'8   fis'8    a'8    d'8    
fis'8    b'8    d'8    fis'8     bis'8    d'8    fis'8    b'!8    
d'8    fis'8    a'4         g'8  a'8    b'8    cis''8    d''4    
e''8    d''8     eis''8  fis''8    d''8    b'8    a'4    b'8    
a'8     cis''8  b'8    a'8    g'8    fis'8    e'8    a'8    
fis'8     d'2   d'2   
\bar "||"   
}

\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \BeaumontRagChords 
      \new Staff { \clef treble \BeaumontRag }

    >>
  \header { piece = \markup {\fontsize #4.0 "Beaumont Rag"}}
  \layout {}
  \midi {}
}