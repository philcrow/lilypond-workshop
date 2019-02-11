\version "2.18.1"
\header {
    title="Chords"
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
  \clef treble
  \relative c' {
    <c e g>1^\markup{I}
    <d f a>1^\markup{ii}
    <e g b>1^\markup{iii}
    <f a c>1^\markup{IV}
    <g b d>1^\markup{V}
    <a c e>1^\markup{vi}
    <b d f>1^\markup{viio}
  }
}

minorScale = {
  \key a \minor
  \time 4/4
  \clef treble
  \relative c' {
    <a c e>1^\markup{i}
    <b d f>1^\markup{iio}
    <c e g>1^\markup{III}
    <d f a>1^\markup{iv}
    <e g b>1^\markup{v}
    <f a c>1^\markup{VI}
    <g b d>1^\markup{VII}
  }
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

