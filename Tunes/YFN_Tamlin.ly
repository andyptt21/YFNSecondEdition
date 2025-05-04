
\version "2.18.0"

% -------------------------------------------------------------------------

Tamlin = {
  \time 2/2
  \key f \major
  \repeat volta 2 {
    a4 d'8 a f' a d'4 |
    bes d'8 bes f' bes d'4 |
    c' e'8 c' g' c' e'4 |
    f'8 e' d' c' a d' d' c' | \break
    %5
    a4 d'8 a f' a d'4 |
    bes d'8 bes f' bes d'4 |
    c' e'8 c' g' c' e'4 |
    f'8 e' d' c' a d' d'4 |
  } \break
  \repeat volta 2 {
    d''8 c'' a' g' f'4 \turn d' |
    %10
    d''8 c'' a' g' f'4 \turn d' |
    c'8 b c' d' e' d' e' f' |
    g' f' g' a' bes' a' bes' c'' | \break
    d'' c'' a' g' f'4 \turn d' |
    d''8 c'' a' g' f'4 \turn d' |
    %15
    <<
      { bes4. c'8 d'4. e'8 | f' e' d' c' d'2 } \\
      {
        \override NoteHead.font-size = #-2 \stemUp
        bes'4. c''8 d''4. e''8 | f'' e'' d'' c'' d''2
      }
    >>
  }
}
%        	<bes \override NoteHead.font-size = #-4 bes'>4. c'8 d'4. e'8 |

TamlinChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    d1:min bes1 c1 d2:min a2:min
    d1:min bes1 c1 a2:min d2:min
  }
  \repeat volta 2 {
    d1:min s1 c1 s1
    d1:min s1 bes1 a2:min d2:min
  }
}

%{
  \score {
  <<
  \new ChordNames \TamlinChords
  \new Staff { \clef treble \Tamlin }
  >>
  \header { piece = \markup {\fontsize #4.0 "Tamlin"}
  opus = \markup {\fontsize #3.0 "Davey Arhur"}}
  }
%}
