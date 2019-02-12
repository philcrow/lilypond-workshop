% a piano solo
\version "2.18.2"
\header {
    title="Tallis Canon"
    poet="Lisa Crow, 2016"
    meter="8.8.8.8"
    composer="Tomas Tallis, 1560s"
    arranger="TALLIS' CANON"
}
\paper {
    indent = 0
}

% This is a canon, we will use circled number rehearsal marks to indicate
% the entrances.

rightHand = {
  \set Score.markFormatter = #format-mark-circle-numbers

  \mark \default
  \partial4 <d g>4 | <d g> <d fis> <b g'>

  \mark \default
  <d g> | <e a> <d a'> <d b'>

  \mark \default
  g | <g c> <fis c'> <g b>

  \mark \default
  <d b'> | <e a> <d a'> <d g> <g d'> |

  % line two (pickup is the <g d'> chord above)
  <e c'> <fis a> <g b> <g b>  | <e a> <d a'> <d g> <b d> |
  <c e> <c fis> <b g'> <d b'> | <c a'> <a a'> <b g'> \fermata

  \bar "|."
}
leftHand = {
    \partial4 <g b> | <d a> <d a> <e g> <b, g> |
    <c a> <d fis> <a, g> <b, g> | <a, a> <a, a> <g, b> g |
    <g c'> <fis c'> <g b> <b, b>

    % line two
    <c a> <d a> <g, g> <g d'> | <a c'> <fis a> <g b> <g, b> |
    <c a> <a, a> <e g> <b, d> | <c e> <d fis> <g, g>
}

verseI = \lyricmode {
    \set stanza = #"1."
    When we be- lieve that God is Love
    Then all the earth and heav'n a- bove
    Are wrapp'd in his su- blime em- brace
    And we are drown'd with- in his grace.
}

verseII = \lyricmode {
    \set stanza = #"2."
    When we be- lieve that God is Good
    All the things that we wish God would
    Are lost in our de- sire for Him
    To bend us to his e- v'ry whim.
}

\score {
    % pick on of the next three lines ending with <<, remove the others
    % \new PianoStaff <<      % brace in left margin, bars span staves
    % \new ChoirStaff <<    % square bracket in left margin
    <<                    % simple bar connects staves ala many Hymnal
        \new Staff <<
            \key g \major
            \new Voice = "rightHand" {
                \relative c' { \rightHand }
            }
        >>
        \new Lyrics = "verseI"
        \new Lyrics = "verseII"
        \new Staff <<
            \key g \major
            \clef bass
            \leftHand
        >>
    \context Lyrics = "verseI" \lyricsto "rightHand" \verseI
    \context Lyrics = "verseII" \lyricsto "rightHand" \verseII
    >>
    \layout{}
}
