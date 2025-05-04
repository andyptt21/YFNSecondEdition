
\version "2.18.0"

% -------------------------------------------------------------------------

CaseyJones = {
  \time 4/4
  \key d \major
  \repeat volta 2 {
    cis''8 (d'') <fis' d''> <fis' d''> <fis' b'> (<fis' a'>) <e' a'> (<d' a'>) |
    cis'' (d'') <fis' d''> <fis' d''> <d' a'>4 <e' a'>8 (<fis' a'>) |
    cis'' (d'') <d' d''> <d' d''> <d' b'> <d' a'> d' (e') |
    e' (fis' g' fis') <e' cis''>4 <e' cis''>8 (<fis' b'>) |
    cis'' (d'') <fis' d''> <fis' d''> b' a' e' d' |
    cis'' (d'') <fis' d''> <fis' d''> <d' a'>4 <e' a'>8 (<d' a'>) |
  }
  \alternative {
    {
      a'4 a'8 a' a' b' a' g' |
      fis' d' e' cis' d'4 <d' a'>
    }
    {
      d'8 (e' fis' g') a' (b' a' g') |
      fis' d' e' cis' d'4 <d' a'>
    }
  }
  \repeat volta 2 {
    d'8 (fis' a' cis'') <d' a'>4 <d' a'>8 <d' a'> |
    b' (a' b' cis'') d'' e'' <d'' fis''> <d'' fis''> |
    d' (fis' a' cis'') <d' a'>4 <d' a'>8 <d' a'> |
    d'' e'' fis'' g'' <a' e''>4 <a' e''>8 <a' e''> |
    d' fis' a' cis'' <d' a'>4 <d' a'>8 <d' a'> |
    b' a' b' cis'' d'' e'' <d'' fis''> <d'' fis''>
  }
  \alternative {
    {
      <d' a'>4 a'8 a' a' (b' a' g') |
      fis' d' e' cis' d'4 <d' a'>
    }
    {
      a''8 b'' a'' g'' fis'' e'' d'' e'' |
      fis'' g'' fis'' e'' <a' d''>4 <a' d''>
    }
  }
}

CaseyJonesChords = \chordmode {
  \time 4/4
  \repeat volta 2 {
    d1 s1 s1 e2:min a2 d1 s1
  }
  \alternative {
    { a1 s2. d4 } { a1 s2. d4 }
  }
  \repeat volta 2 {
    d1 s1 s1 e2:min a2 d1 s1
  }
  \alternative {
    { a1 s2. d4 } { a1 s2. d4 }
  }
}

%{
  \score {
  <<
  \new ChordNames \CaseyJonesChords
  \new Staff { \clef treble \CaseyJones }
  >>
  \header { piece = \markup {\fontsize #4.0 "Casey Jones"}}
  }
%}