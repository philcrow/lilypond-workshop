\version "2.18.1"
\header {
    title="Scales"
}
\paper {
  indent = 0
#  top-system-spacing #'basic-distance = #10
#  score-system-spacing #'basic-distance = #20
#  system-system-spacing #'basic-distance = #20
#  last-bottom-spacing #'basic-distance = #10
}

majorScale = {
  \key c \major
  \time 4/4
  \clef bass
  \relative c, { c4 d e f | g a b c | d e f  g | a b c2 }
}

minorScale = {
  \key c \minor
  \time 4/4
  \clef bass
  \relative c, { c4 d ees f | g aes bes c | d ees f  g | aes bes c2 }
}

\book {
    \score {                  { \majorScale } }    \score {                  { \minorScale } }
    \score { \transpose c g   { \majorScale } }    \score { \transpose c g   { \minorScale } }
    \score { \transpose c d   { \majorScale } }    \score { \transpose c d   { \minorScale } }
    \score { \transpose c a   { \majorScale } }    \score { \transpose c a   { \minorScale } }
    \score { \transpose c e   { \majorScale } }    \score { \transpose c e   { \minorScale } }
    \score { \transpose c b   { \majorScale } }    \score { \transpose c b   { \minorScale } }
    \score { \transpose c f   { \majorScale } }    \score { \transpose c f   { \minorScale } }
    \score { \transpose c bes { \majorScale } }    \score { \transpose c bes { \minorScale } }
    \score { \transpose c ees { \majorScale } }    \score { \transpose c ees { \minorScale } }
    \score { \transpose c aes { \majorScale } }    \score { \transpose c aes { \minorScale } }
    \score { \transpose c des { \majorScale } } %  \score { \transpose c des { \minorScale } }
    \score { \transpose c ges { \majorScale } } %  \score { \transpose c ges { \minorScale } }
}

