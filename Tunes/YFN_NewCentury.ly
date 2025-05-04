
\version "2.18.0"

% -------------------------------------------------------------------------

NewCentury = {
	\time 2/2
	\key d \major
		\repeat volta 2 {
		fis'4 d' d' e'8 fis' |
		g'4 e' e' a'8 g' |
		fis' d' fis' g' a' b' a' g' |
		fis' g' a' fis' e'4 a'8 g' | \break
		fis'4 d' d' e'8 fis' |
		g'4 e' e' a' |
		b'8 a' b' d'' cis'' a' cis'' e'' |
		d''4 d'' d''2 |
	} \break
	\repeat volta 2 {
		fis''8 d'' fis'' a'' fis'' d'' fis'' g'' |
		e'' cis'' e'' g'' e'' cis'' e'' g'' |
		fis'' d'' fis'' a'' fis'' d'' fis'' d'' |
		e'' fis'' g'' fis'' e''4 a''8 g'' | \break
		fis'' d'' fis'' a'' fis'' d'' fis'' g'' |
		e'' cis'' e'' g'' e'' cis'' a' cis'' |
		b' d'' cis'' b' a' g' fis' e' |
		d'4 d' d'2 \bar "|."
	}
}

NewCenturyChords = \chordmode {
	\time 2/2
	\repeat volta 2 {
		d1 a1:7 d2 b2:min e2:min a2:7
		d1 a1:7 g2 a2:7 d1
	}
	\repeat volta 2 {
		d1 a1:7 d1 e2:min a2:7
		d1 a1:7 g2 a2:7 d1
	}
}

%{
\score {
        <<
                \new ChordNames \NewCenturyChords
                \new Staff { \clef treble \NewCentury }
        >>
        \header { piece = \markup {\fontsize #4.0 "New Century Hornpile"}
                 opus = \markup {\fontsize #3.0 "Taggart"}}
}
%}
