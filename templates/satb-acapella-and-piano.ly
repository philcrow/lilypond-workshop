% use this for stems up stems down
% includes piano reduction for rehearsals

\version "2.18.1"
\header {
    title=""     % large and centered once at the top
    poet=""      % left side top
    meter=""     % left side under poet
    composer=""  % right side top
    arranger=""  % right side under poet, consider placing tune name here
}
\paper {
  indent = 0
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

% adjust key and time per song, but just do it here
global = {
  \key g \major
  \time 3/4
}

sopMusic = {
}

altoMusic = {
}

tenorMusic = {
}

bassMusic = {
}

verseI = \lyricmode {
    \set stanza = #"1."
}
verseII = \lyricmode {
    \set stanza = #"2."
}

verseIII = \lyricmode {
    \set stanza = #"3."
}

verseIV = \lyricmode {
    \set stanza = #"4."
}

verseV = \lyricmode {
    \set stanza = #"5."
}

\score {
  \new ChoirStaff <<
    \new Staff = "highVoices" <<
      \new Voice = "sopranos" {
        \voiceOne << \global \sopMusic  \bar "|." >>
      }
      \new Voice = "altos" {
        \voiceTwo << \global \altoMusic >>
      }
    >>
    \new Lyrics = "verseI"
    \new Lyrics = "verseII"
    \new Lyrics = "verseIII"
    \new Lyrics = "verseIV"
    \new Lyrics = "verseV"
    \new Staff = "lowVoices" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "verseI"   \lyricsto "sopranos" \verseI
    \context Lyrics = "verseII"  \lyricsto "sopranos" \verseII
    \context Lyrics = "verseIII" \lyricsto "sopranos" \verseIII
    \context Lyrics = "verseIV"  \lyricsto "sopranos" \verseIV
    \context Lyrics = "verseV"   \lyricsto "sopranos" \verseV
  >>
  \new PianoStaff <<
    \new Staff <<
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \global \sopMusic  \bar "|." >>
      << \global \altoMusic >>
    >>
    \new Staff <<
      \clef bass
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \global \tenorMusic >>
      << \global \bassMusic >>
    >>
  >>

}

%

