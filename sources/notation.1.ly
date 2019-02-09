\score{
    \relative c' {
        \key d \minor
        \time 3/4
        d4 \p ees a ~ a r2 \bar "||"
        \time 2/2
        g1 \f
        \compressFullBarRests
        R1*24
        a2 ( bes )

        \key f \major
        \time 9/8
        \repeat volta 2 { a8. b16 c8 \mf  d4. e4. | ees8 d c bes4. a }
    }
    \layout{}
    \midi{}
}
\version "2.18.2"
