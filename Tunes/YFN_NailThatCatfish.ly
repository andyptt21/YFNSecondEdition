
\version "2.18.0"

% -------------------------------------------------------------------------

NailThatCatfish = {
	\time 4/4
	\key g \major
		\repeat volta 2 {
		\partial 4 d'8 e'
		g'4 b'8 g' a' g' b' g' |
		c'' g' a' g' <b' g'>4 b'8 b' |
		a' b' a' g' fis' d' a' b' |
		a' g' fis' d' \tuplet 3/2 {e' fis' e'} d'4 | \break
		g' b'8 g' a' g' b' g' |
		c'' g' a' g' <b' g'>4 b'8 b' |
		a' b' a' g' fis' [d' e' fis'] |
		\partial 4*3 g'4 <b' g'>2
	} \break
	\repeat volta 2 {
		\partial 4 d'4 |
		<e' c'>2 <a' d'> |
		<c'' e'>1 |
		a'8 b' a' g' fis' d' a' b' |
		a' g' fis' d' \tuplet 3/2 {e' fis' e'} d'4 |
		<e' c'>2 <a' d'> | \break
		<c'' e'>1 |
	}
        \alternative {
		{ a'8 b' a' g' fis' [d' e' fis'] |
		  \partial 4*3 g'4 <g' b'>2 }
		{ d''4 c'' b' a' |
		  \partial 4*3 <g' b'>2. }
	}
}


NailThatCatfishChords = \chordmode {
	\time 4/4
	\repeat volta 2 {
		\partial 4 s4
		g1 s1 d1 s1 g1 s1 d1
		\partial 4*3 g2.
	}
	\repeat volta 2 {
		\partial 4 s4
		c1 s1 d1 s1 c1 s1
	}
        \alternative {
		{ d1 \partial 4*3 g2. }
		{ d1 \partial 4*3 g2. }
	}
}

%{
\score {
	<<
		\new ChordNames \NailThatCatfishChords
		\new Staff { \clef treble \NailThatCatfish }
	>>
	\header { piece = \markup {\fontsize #4.0 "Nail That Catfish to the Tree"}
                 opus = \markup {\fontsize #3.0 "Steve Rosen"}}
}
%}
