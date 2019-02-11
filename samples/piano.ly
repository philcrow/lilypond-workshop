% a piano solo
\version "2.18.2"
\header {
    title="Tallis Cannon"
}

% This is a cannon, we will use circled number rehearsal marks to indicate
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
  <e c'> <fis a> <g b> <g b> | <e a> <d a> <d b> <b d> |
  <c e> <c fis> <b g> <d b> | <c a> <a, a> <b g> \fermata

  \bar "|."
}
leftHand = {
}

\score {
    \new PianoStaff <<
        \new Staff <<
            \key g \major
            \relative c' { \rightHand }
        >>
    >>
}
