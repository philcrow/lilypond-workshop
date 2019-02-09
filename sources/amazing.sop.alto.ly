sopranoLine = {
    d4 fis8 a d b a4 | b a8 fis e4 d |   fis a b8 d cis b | a gis a2.
}
altoLine = {
    d4 d d d | d8 g fis d cis4 d | d e fis e | e e2.
}
\score{
    \new ChoirStaff <<
        \new Staff = "highVoices" <<
            \new Voice = "sopranos" {
                \voiceOne
                \relative c' {
                    \key d \major
                    \sopranoLine
                    \bar "|."
                }
            }
            \new Voice = "altos" {
                \voiceTwo
                \relative c' {
                    \altoLine
                }
            }
        >>
    >>
    \layout{}
    \midi{}
}
\version "2.18.2"
