
\version "2.18.0"

% -------------------------------------------------------------------------

FrenchiesReel = {
  \time 2/2
  \key bes \major
  \repeat volta 2 {
    \partial 4 f'8 ees'
    d'8 (f') bes' c'' d''4 f'8 ees' |
    d' (f') bes' c'' d'' (bes') c'' bes' |
    a' f' c'' f' ees'' (f') c'' f' |
    a' (f') c'' f' ees''4 f'8 ees' |
    d' (f') bes' c'' d''4 f'8 ees' |
    d' (f') bes' c'' d'' (bes') c'' bes' |
    a' (f') c'' f' ees'' [(c'') a' c''] |
  }
  \alternative {
    { \partial 4*3 bes' [(a') bes' c''] bes'4 }
    { bes'8 a' bes' c'' bes' g' f' ees' ( }
  }
  \repeat volta 2 {
    d'4) bes'8 d' f' bes' d' f' |
    bes' d' f' bes' d' f' bes' d' ( |
    ees'4) bes'8 ees' g' bes' ees' g' |
    bes' ees' g' bes' ees' g' bes' ees' ( |
    f'4) c''8 f' f' d'' f' f' |
    ees'' f' f' d'' f' f' c'' f' |
    bes' (a') bes' d'' c'' (bes') a' c'' |
    bes' (a') bes' c'' bes' (g') f' ees'
  }
}

FrenchiesReelChords = \chordmode {
  \time 2/2
  \repeat volta 2 {
    \partial 4 s4
    bes1 s1 f1 s1 bes1 s1 f1:7
  }
  \alternative {
    { \partial 4*3 bes2. } { bes1 }
  }
  \repeat volta 2 {
    bes1 s1 ees1:7 s1 f1:7 s1 bes2 f2:7 bes1
  }
}

%{
  \score {
  <<
  \new ChordNames \FrenchiesReelChords
  \new Staff { \clef treble \FrenchiesReel }
  >>
  \header { piece = \markup {\fontsize #4.0 "Frenchie's Reel"}
  opus = \markup {\fontsize #3.0 "Ward Allen and Mel Lavigne"}}
  }
%}