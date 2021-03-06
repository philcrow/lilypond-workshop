sopranoLine = {
    d4 fis8 a d b a4 | b a8 fis e4 d |   fis a b8 d cis b | a gis a2.
}
altoLine = {
    d4 d d d | d8 g fis d cis4 d |    d e fis e | e e2.
}
tenorLine = {
    fis4 a8 fis b g fis4 | d' d8 a a g fis4 |    a a a a8 d | cis b cis2.
}
bassLine = {
    d4 d d d | d e a, d |    fis g fis8 g a4 | a, d2.
}
verseI = \lyricmode {
    \set stanza = #"1."
    A- ma- _ zing _ grace! how sweet _ the sound, That saved a _ wretch _ like _ me!
}
verseII = \lyricmode {
    \set stanza = #"2."
    'Twas grace _ that _ taught my heart _ to fear, And grace my _ fears - re- _ lieved;
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
        \new Lyrics = "verseI"
        \new Lyrics = "verseII"
        \new Staff = "lowVoices" <<
            \new Voice = "tenors" {
                \voiceOne
                \relative c {
                    \clef bass
                    \key d \major
                    \tenorLine
                }
            }
            \new Voice = "basses" {
                \voiceTwo
                \relative c {
                    \bassLine
                }
            }
        >>
        \context Lyrics = "verseI"  \lyricsto "sopranos" \verseI
        \context Lyrics = "verseII" \lyricsto "sopranos" \verseII
    >>
    \layout{}
    \midi{}
}
\version "2.18.2"
