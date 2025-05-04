
\version "2.18.0"

% -------------------------------------------------------------------------

NeedleCase = {
	\time 2/2
	\key d \major
		\partial 4 fis''8 g''
	\repeat volta 2 {
		a''4 g'' fis''8 e'' d'' a' |
		b'4 g''8 b' b'4 g'' |
		a''8 fis'' g'' e'' fis'' e'' d'' a' |
		b' a' b' cis'' a'4 fis''8 g'' |
		a'' b'' a'' g'' fis'' e'' d'' a' |
		b'4 g''8 b' b'4 g''8 b' |
		a' b' cis'' d'' e'' fis'' (e'') cis''( |
	}
        \alternative {
		{ b') a' b' cis'' (d''4.) a''8 }
		{ b' a' b' cis'' d''4. a'8( }
	}

	a'4) fis' a' fis' |
	a'8 b'4 a'8 b'2 |
	a'4. fis'8 a'4 g' |
	e'4. fis'8 e' d' e'4 |
	a'8 fis'4 fis'8 fis' g' a'4 |
	a'8 b'4 cis''8 b'4. a'8( |
	a') b' cis'' d'' e'' fis'' e'' cis'' |
	b' a' b' cis'' d''2 |
	a'8 fis'4 fis'8 fis' g' a'4 |
	a'8 b'4 cis''8 b'4. a'8( |
	a') b' a' fis' g'4 fis' |
	e'4. fis'8 e' d' cis'4 |
	d'8 e' fis' e' fis' g' a'4 |
	a'8 b'4 cis''8 b'4. a'8( |
	a') b' cis'' d'' e'' fis'' e'' cis'' |
	b' a' b' cis'' d''2 \bar "|."
}

NeedleCaseChords = \chordmode {
	\time 2/2
	\partial 4 s4
	\repeat volta 2 {
		d1 g1 d1 g1 d1 g1 a1
	}
        \alternative {
		{ g2 d2 } { g2 d2 }
	}

	d1 g1 d1 a1 d1 g1 a1 g2 d2 s1 g1 d1
	a1 d1 g1 a1 g2 d2
}

%{
\score {
	<<
		\new ChordNames \NeedleCaseChords
		\new Staff { \clef treble \NeedleCase }
	>>
	\header { piece = \markup {\fontsize #4.0 "Needle Case"}
                 opus = \markup {\fontsize #3.0 "Bob Carlin"}}
}
%}
