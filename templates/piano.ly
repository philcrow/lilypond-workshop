% a piano solo
\version "2.18.2"
\header {
    title="Untitled"
}

global = {
  \key g \major
}

rightHand = {
  <d g>4
  \bar "|."
}
leftHand = {
  <g b>4
}

\score {
    % pick on of the next three lines ending with <<, remove the others
    \new PianoStaff <<      % brace in left margin, bars span staves
    % \new ChoirStaff <<    % square bracket in left margin
    % <<                    % simple bar connects staves ala many Hymnal
        \new Staff <<
            \global
            \relative c' { \rightHand }
        >>
        \new Staff <<
            \clef bass
            \global
            \leftHand
        >>
    >>
}
