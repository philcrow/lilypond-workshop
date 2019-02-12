% a piano solo
\version "2.18.2"
\header {
    title=""
    poet=""
    meter=""
    composer=""
    arranger=""     % consider putting tune name here
}
\paper {
    indent = 0
}

global = {
  \key g \major
}
rightHand = {
  <d g>4
}
leftHand = {
  <g b>
}

verseI = \lyricmode {
    \set stanza = #"1."
    When
}

verseII = \lyricmode {
    \set stanza = #"2."
    When
}

\score {
    % pick on of the next three lines ending with <<, remove the others
    % \new PianoStaff <<      % brace in left margin, bars span staves
    % \new ChoirStaff <<    % square bracket in left margin
    <<                    % simple bar connects staves ala many Hymnal
        \new Staff <<
            \new Voice = "rightHand" {
                \global
                \relative c' { \rightHand }
            }
            \bar "|."
        >>
        \new Lyrics = "verseI"
        \new Lyrics = "verseII"
        \new Staff <<
            \global
            \clef bass
            \leftHand
        >>
    \context Lyrics = "verseI" \lyricsto "rightHand" \verseI
    \context Lyrics = "verseII" \lyricsto "rightHand" \verseII
    >>
    \layout{}
}
