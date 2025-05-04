
\version "2.18.0"

% -------------------------------------------------------------------------

AaronsFavoriteDmin = {
  \time 6/8
  \key c \major
  \repeat volta 2 {
    d'8. d'16 d'8 f' e' d' |
    e' f' g' a'4. |
    d'8. d'16 d'8 f' e' d' |
    e' g' c'' g' e' c' |
    d'8. d'16 d'8 f' e' d' |
    e' f' g' a'4 b'8 |
    c''8. d''16 c''8 g' a' f' |
    e'8. e'16 e'8 g' f' e' |
  }
  \repeat volta 2 {
    f' a' c'' c'' a' c'' |
    d'' a' d'' c'' a' g' |
    f'8. a'16 c''8 c'' a' g' |
    f' d' d' d'4 e'8 |
    f' a' c'' c'' a' c'' |
    d'' a' d'' c'' a' c'' |
  }
  \alternative {
    {
      d'' f'' d'' c'' a' f' |
      e'8. e'16 e'8 g' f' e'
    }
    {
      d'' f'' e'' f'' r f' |
      e'8. e'16 e'8 g' f' e'
    }
  }
}

AaronsFavoriteDminChords = \chordmode {
  \time 6/8
  \repeat volta 2 {
    d2.:min s4. c4. d2.:min c4. a4.:min
    d2.:min s2. f2. c4. a4.:min
  }
  \repeat volta 2 {
    f2. bes4. c4. f2. bes4. c4.
    f2. bes4. f4.
  }
  \alternative {
    { bes4. f4. c2. }
    { bes2. c4. a4.:min }
  }
}

%{
  \score {
  <<
  \new ChordNames \AaronsFavoriteDminChords
  \new Staff  { \clef treble \AaronsFavoriteDmin }
  >>
  \header {
  piece = \markup {\fontsize #4.0 "Aaron's Favorite (D minor)"}
  opus = \markup {\fontsize #3.0 "Andrew Marcus"}
  }
  }
%}