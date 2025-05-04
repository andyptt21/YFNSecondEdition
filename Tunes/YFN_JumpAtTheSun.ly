
\version "2.18.0"

% -------------------------------------------------------------------------

JumpAt = {
  \time 6/8
  \key g \major
  \repeat volta 2 {
    e'8 g' b' bes'4 b'8 |
    e' g' b' bes'4 b'8 |
    e'' b' b' e'' b' b' |
    b' c'' b' a' g' fis' |
    e' g' b' bes'4 b'8 |
    \break
    e' g' b' bes'4 b'8 |
    e'' b' b' c'' b' a' |
    g' a' fis' e'4. |
  }
  \repeat volta 2 {
    e''8 b' <e'' b'> g'' fis'' e'' |
    fis'' b' <fis'' b'> a'' g'' fis'' |
    \break
    e'' b' <e'' b'> g'' fis'' e'' |
    fis'' bes' b' c''4 b'8 |
    e'' b' <e'' b'> g'' fis'' e'' |
    fis'' b' <fis'' b'> a'' g'' fis'' |
    e'' b' b' c'' b' a' |
    g' a' fis' e'4. \bar "|."
  }
}

JumpChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    e2.:min b2.:7 e2.:min b2.:7
    e2.:min b2.:7 e4.:min a4.:min b4.:7 e4.:min
  }
  \repeat volta 2 {
    e2.:min b2.:min e2.:min b2.:min
    e2.:min b2.:min e4.:min a4.:min b4.:7 e4.:min
  }
}


  \score {
  <<
  \new ChordNames \JumpChords
  \new Staff { \clef treble \JumpAt }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jump At The Sun"}
  opus =  \markup {\fontsize #3.0 "John Kirkpatrick"}}
  }
%}