\version "2.18"

ColemansMarchChords = \chordmode{
  d2 g d a
  d4 fis:m g d a2:7 d d
  d fis:m g d
  d4 fis:m g d a2:7 d d
}


ColemansMarch =  {

  \time 2/4 \key d \major
\repeat volta 2 {
  fis'8 fis' fis'16 e' d' fis'
  g'4.    fis'16    g'16     
  a'8    a'16    b'16    a'16    fis'16
  d'8     e'4. fis'16    g'16
  a'8    d''8    cis''8. cis''16
  b'16 cis'' b' a' fis'8 fis'16 g'   
  a'8 a' g'16 fis' e'8
}
  \alternative {
    {d'4    a'16    b'16    a'16    g'16}
    {   d'4    d'16  fis'16    a'16    cis''16  }}
  \repeat volta 2 {d''2
		   cis''2     
		   b'8    b'16    cis''16    d''16    cis''16    b'8
		   a'4.    fis'16  g'16
		   a'8    d''8    cis''8. cis''16
		   b'16 cis'' b' a' fis'8 fis'16 g'   
		   a'8 a' g'16 fis' e'8  }
  \alternative {{d'4    d'16    fis'16    a'16    cis''16  }
		{  d'4  a'16    b'16    a'16    g'16 }}  
}

\score{
    <<

	% \context Staff="default"
	% {
	%     \voicedefault 
				% }
      \new ChordNames \ColemansMarchChords 
      \new Staff { \clef treble \ColemansMarch }

    >>
  \header { piece = \markup {\fontsize #4.0 "Coleman's March"}}
  \layout {}
  \midi {}
}