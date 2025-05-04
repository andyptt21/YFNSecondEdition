
\version "2.18.0"

% -------------------------------------------------------------------------

BonaparteRhine = {
  \time 4/4
  \key d \major
  \partial 2 fis'4 (g')
    a'4. b'8 (a'4) fis' |
    a'2( \appoggiatura {a'16 [b' cis'']} d''4) e'' |
    fis'' e'' fis'' (a'') |
    d''2. d''8 cis''( |
    b'4) b'8 cis'' (d''4) \tuplet 3/2 { b'8 (cis'' b' } |
    a'4) fis' d' fis' |
    e'2 e'4. fis'8 |
    e'2 fis'4 (g') |
    a'4. b'8 (a'4) fis' |
    a'2( \appoggiatura {a'16 [b' cis'']} d''4) e'' |
    fis'' e'' fis'' (a'') |
    d''2. d''8 cis''( |
    b'4) b'8 cis'' (d''4) b' |
    a' fis' (e') fis' |
    d'2 d'4. e'8 |
    d'4 a' d'' e''
    fis'' (e'') fis'' (g'') |
    a''2 a''4 a' |
    b'4. a'8 b'4 (cis'') |
    d''2. a'4 |
    b'4. cis''8 (d''4) b' |
    a' fis' d' fis' |
    e'2 e'4. fis'8 |
    e'2 fis'4 (g') |
    a'4. (b'8) a'4 fis' |
    a'2 d''4 e'' |
    fis''4. (e''8) fis''4 (a'') |
    d''2. d''8 cis''( |
    b'4.) cis''8 (d''4) b' |
    a' fis' e' fis'8 e'( |
    d'2) d'4. e'8 |
    \partial 2 d'2 
}

BonaparteRhineChords = \chordmode {
  \time 4/4
  \partial 2 s2
    d1 s1 s1 s1 g1 d1 a1 s1 d1 s1 s1 s1 g1 d2 a2 d1
   s1
    s1 s1 g1 d1 g1 d1 a1 s1 d1 s1 s1 s1 g1 d2 a2 d1
  \partial 2 s2 
}

%{
\score {
  <<
    \new ChordNames \BonaparteRhineChords
    \new Staff { \clef treble \BonaparteRhine }
  >>
  \header { piece = \markup {\fontsize #4.0 "Bonaparte Crossing the Rhine"}}
}
%}