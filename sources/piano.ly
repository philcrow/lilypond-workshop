rightHand = {
    \partial2 \mark \default <d' f' a'>2\mp | <c' e'>4\> <c' f'> <bes f'> <a e'> |
    <f c'>2 <f c'>2 | <e bes>4 <d a> <c g> <d a>\!\pp \mark \default \bar "||"
}
leftHand = {
    \partial2 <d g >2 | <f c> <f c> | <bes, f>4 <a, e> <bes, f>  <c f> | <c f>2 <d g > |
}
\score {
    \new PianoStaff <<
        \new Staff <<
            \new Voice = "pianotreble" {
                \key c \minor
                \transpose d c' { \rightHand }
            }
        >>
        \new Staff <<
            \clef bass
            \new Voice = "pianobass" {
                \key c \minor
                \transpose d c { \leftHand }
            }
        >>
    >>
    \layout{}
    \midi{}
}
\version "2.18.2"
