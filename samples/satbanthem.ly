\version "2.18.1"
\header {
    title="Meditation on Jonah"
    % the Dove Matthew 3:16, 16:4, 16:18-20, 17:5"
    subtitle="Inspired by Rev. Ed Light's Bible studies on Jonah and Matthew"
    poet="Lisa Crow, 2017"
    meter="12.9.6.6.12.9"
    composer="USA Folk Hymn; setting by Phil Crow, 2018"
    arranger="WONDROUS LOVE"
    copyright="Copyright 2018, Lisa Crow Creative Commons Attribution 4.0 International"
}
\paper {
  indent = 0
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \time 4/4
}

pianoTrebleIntro = {
    \partial2 <d'' f'' a''>2\mp | <c'' e''>4\> <c'' f''> <bes' f''> <a' e''> |
    <f' c''>2 <f' c''>2 | <e' bes'>4 <d' a'> <c' g'> <d' a'>\!\pp \bar "||"
    % alto entrance
}

pianoTrebleI = {
    \partial2 <d' a'>2 | <d' a'>2 <e' bes'> | <a' e''> <e' bes'> | <d' c''> <d' c''> | <e' bes'>
          <f' c''>2 | <g' e''>4 <e' bes'> <e' c''> <e' g'>  | <d' c''>4 <g' d''> <g' e''> <g' bes'> | <d' a'>2

    % bass/tenor entrance
              <g' bes'>2 | <c' a'>4 <g' e''> <a' f''> <c'' f''> | <d'' a''>2 <d'' bes''>4 <c'' a''>
                       | <c'' f''>2 <a' e''> | <d' a'> <f' c''>
                       | <a' c''>4 <e' c''> <e' bes'> <a' c'> | <f' a'> <e' bes'> <g' bes'> <d' a'>
                       | <f' a'> <f' c''> <a' c''> <a' e''> | <g' e''>2 <f' c''>4 <g' c''> |
                       | <a' e''> <bes' d''> <f' c''> <e' g'> | <e' c''>2 <e' g'>4 <c' e'> | <d' a'>2
}

pianoTrebleV = {
  \partial2
  <f' c'>2 | <f' a'>4 <bes' d''> <f' c''> <e' a'> | <f' c''>2 <e' c''> | <f' c''> a' | <e' a'>
  <e' g'>  | <c' f'> <bes g'> | <c' a'> <c' a'> | <c' f'> <a' c''> | <g' bes'> <g' c'> | <f' a'> <f' a'> | bes'1 | <f' bes'>2
  <f' c'>  | <d' bes'>2 <e' c''> | <e' c''> <a' e''> | <f' d''>
  <g' c''> | <a' c''>4 <f' d''> <f' c''> <f' d''> | <e' c''>2 bes'4 a' | c'2 a'4 bes' | <c'' f''>2
}

pianoTrebleInterlude = {
    <d' a'>2 <f' bes'> <f' a'> <d' f'>
}

pianoTreble = {
  \key c \minor
  \transpose d c { \pianoTrebleIntro \pianoTrebleI }
  % interlude between verse I and II, key change from c minor to d minor
  %ii^0      III           iv       VI       VII  -> dminor III     iv         v        VI
  <d' aes'>4 <ees' bes'> | <f' c''> <a' e''> <bes' f''> <c'' f''> | <bes' d''> <a' c''> <f' bes'>2 | c'' <d' f'>
  \key d \minor
  \pianoTrebleI \pianoTrebleInterlude
  \pianoTrebleI \pianoTrebleInterlude
  \pianoTrebleI
 % ii0      III        v       VI        VII       i  
  <e' b'>4  <f' c'> | <a' d'> <bes' f''> <c'' e''> <d'' a''> |
 % i         ii0 ->     f major   vii0   IV          V          vi      vii0           I
  <d'' f''> <bes' e''>         <g' e''> <bes' f''> | <c'' e''> <a' d''> <bes' e''>  <f' c''>
  \bar "||" \key f \major
  \pianoTrebleV
  \bar "||"
}

pianoBaseIntro = {
    \partial2 <d g >2 | <f c> <f c> | <bes, f>4 <a, e> <bes, f>  <c f> | <c f>2 <d g > |
}

pianoBaseI = {
    % alto entrance
    \partial2 <d a>2 | <bes, a>4 <c a>4 <e bes> <bes e> | <c' e'>2 <e c'>4 <a c> | <a, f> <c a> <d a> <e c'> | <g bes>2
              <d a>2 | <c g> <a, g> | <c g> <a, g> | <d a>2

    % bass/tenor entrance
                    <c bes>2 | <d a> <bes f> | d2 <d f> | <a, f> e | <d f a>
              <c f>4 <e a> | <a c'>2 <e bes> | <f a> <e g> | <f c'> <a e> | <e bes> <d f> | g <c f> | <e a> <bes e>4 <c e> | <d a>2
    % interlude between verse I and II, key change from c minor to d minor
}

pianoBaseV = {
  \partial2
  c2 | <c f>4 <g, d> <c f> <a, e> | <c g>2 <bes, d>4 <a, e> | a,2 <c f>4 <d g> | <c f>2
  <c e> | <c f>4 <a, d> <g, e> <g, d> | <g, e>2 <f, bes,>4 <a, e> | <a, c>2 
  <f, d> | <f, c>4 <f, d> a,2 | <c f>2 <c f> | <c g>4 <bes, g> <bes, e>2 | <d bes>
  <c a> | <c a>4 bes <f a> <e g> | <c a>2 <d a>4 <e c'> | <d bes>2
  <e g> | <c a>4 <d a> <c a> <d bes> | <e a>2 <d f>4 <e a> | <f a>2 <f a>4 <e g> | <f c'>2
}

pianoBassInterlude = {
    <d f>2 <d bes> <f c'> <f a>
}

pianoBass = {
  \key c \minor
  \transpose d c { \pianoBaseIntro \pianoBaseI }
  <aes, f>4 <bes g> | <f a> <a c'> <d bes> <f a> | <d g> e <bes d>2 | <e g> <d a>
  \key d \minor
  \pianoBaseI \pianoBassInterlude
  \pianoBaseI \pianoBassInterlude
  \pianoBaseI
  <a, f>2 | <d f>1 | <bes g>2 <d f> | <c g>4 <d f> <e g> <f a>
  \bar "||" \key f \major
  \pianoBaseV
}

% The melody for verses 1-4 is split into A and B with a g'2 in between so that note can have a dynamic mark in the first verse.
melodyA = {
               d'4 c'   e' g'  |  a'2 g'4   e'  |  d'2    d'4    c'  | e'2
      a'2   | c''4 b'   a' g'  |  a'2 g'4   e'  |  d'2
}
melodyB = {
               a'4 g'   a' c'' | d''2 d''       | c''4 a' a'8 g' e'4 | d'2
      c''2  | c''4 a'   b' e'' | c''2 b'4   a'4 |  a'2    a'4    a'4 | b'2
      a'2   | c''4 b'   a' g'  |  a'2 g'4   e'  |  d'2
}
melody = {
    \melodyA g'2 \melodyB
}

vocalTrebleInterlude = {
    b'2\rest b'1\rest b'2\rest
}

altoHarm = {
  \partial2 d'2 | a4  a  b  e' | a'2 e'4 c' | bes2 bes4 a | b2 f' | e'4 e' c' e' | c'2 e'4 c' | d'2
            e'2 | f'4 d' e' f' | a'2 bes'   | f'4 d' d'8 e' c'4 | d'2 f' | f'4 e' e' g' | a'2 g'4 d'
            f'2 e'4 e' | e'2 f' | e'4 g' e' e' | e'2 c'4 c' | d'2
}

sopVerses = {
  \key c \minor \skip1*25 
  \key d \minor \bar "||"
  \partial2 d'2^\markup{\italic{All}}^\mf \melody \vocalTrebleInterlude
  d'2 \melody \vocalTrebleInterlude
  d'2 \melody
  \skip2 \skip1*3
  a'2^\mf
        | c''4 d'' c'' c'' | e''2 bes'4 c'' | c''2  c''4 d'' | e''2
   c''2 |  f'4 a'  c'' d'' | c''2 d''4  c'' | a'2   f'2      | c''4 d'' d'' c'' |  a'2  a'       | e'4 f' f'8 a' d''4 | d''2
   c''2 |  a'4 d'' a'  c'' | c''2 d''4  e'' | bes'2 c''      | f'4  a'  c'' d'' | c''2  d''4 c'' | a'2 c''4 g' | a'2
}

altoVerseI = {
  \key c \minor
  \transpose d c {
    \partial2 cis''2\rest | cis''1\rest | cis''1\rest | cis''1\rest |
    \partial2 d'2\p^\markup{\italic{Altos}} | \melodyA g'2\mp \melodyB

    cis''2\rest| cis''1\rest | cis''1\rest | cis''1\rest 
  }
}
altoVerseII = {
  \key d \minor
  \altoHarm \skip2 \skip1 \skip2
  \altoHarm \skip2 \skip1 \skip2
  \altoHarm
  b'2\rest| b'1\rest | b'1\rest | b'1\rest 
  \bar "||" \key f \major
  f'2 | a'4 g' a' c''  | g'2 g'4 a' | f'2 f'4 g' | a'2
  g'2 | c'4 d' a' bes' | g'2 f'4 e' | f'2 f'2    | f'4 g' f' g'   | c'2 c'     | c'4 d' d'8 e' g'4 | bes'2
  a'2 | f'4 g' f' g'   | g'2 f'4 a' | d'2 e'     | c'4 d' a' bes' | a'2 f'4 e' | f'2    f'4    e'  | f'2
}

melodyMajor = {
    % written in f major
    \partial2
       f2^\markup{\italic{Tenor Melody}}^\f
            |  f4  d  f  a     | c'2 bes4 a | f2 f4 d | a2
       c'2  | f'4  d' c' bes   | c'2 bes4 a | f2
       d2   |  f4  d  f  c'    | f'2 f'     | c'4  bes bes8 a  g4 | f2
       f2   |  f4  d  f  c'    | c'2 d'4  a | f2
       c'2  | f'4  d' c' bes   | c'2 bes4 a | f2  f4    e  | f2
       % originally, I transposed from the minor to the major key (d minor to f major)
       % but, the intervals in the transposition were still too mournful (featureing ii and vii^0 chords)
       % so the above is new, hinting at the original, but with major progressions to fit the mood of verse 5 in the lyrics
                % i2   | i4   vii,   ii iv  | v2  iv4   ii | i2 i4 vii, | ii2
                % f2   | f4   ees    g  bes | c'2 bes4  g  | f2 f4 ees  | g2
                % v2   | vii4 vi+1/2 v  iv  | v2  iv4   ii | i2
                % c'2  | ees'4  d'     c' bes | c'2 bes4  g  | f2
                % iv2  | v4   iv4    v  vii | i'2 i'       | vii4 v   v8  iv ii4 | i2
                % bes2 | c'4  bes4   c' ees'  | f'2 f'       | ees'4  c' c'8 bes  g4 | f2
                % i2   | i4   vii,   ii iv  | v2  iv4   ii | i2       i4      vii, | ii2
                % f2   | f4   ees    g  bes | c'2 bes4   g | f2       f4      e      g2
                % v2   | vii4 vi+1/2 v  iv  | v2  iv4   ii | i2
                % c'2  | ees'4  d'     c' bes | c'2 bes4  g  | f2
}

vocalBassInterlude = {
    d2\rest d1\rest d2\rest
}

tenorLineA = {
  a2 | a4 a b b | c'2 c'4 c' | a2 a4 a | b2 c' | c'4 b4 a g | f2 e4 e | f2
}
tenorLineB = {
             c'4  bes bes  a  |   a2  bes      |  f4 f   a8 bes g4  | a2
      f2   |  a4  a    b   c' |   f2   e4    a | c'2    c'4     a   | g2
      a2   |  g4  b   c'   e' |  a2   bes4   a |  a2
}
tenorLine = {
    \tenorLineA bes2 \tenorLineB
}
tenorVerseIb = {
  \key c \minor
  \skip1*10 d2\rest
  \transpose d c { b2^\p \tenorLineB }
  \skip2 \skip1*3
}
tenorVerseII = {
  \key d \minor
  \tenorLine \vocalBassInterlude
  \tenorLine \vocalBassInterlude
  \tenorLine
}
tenorVerseV = {
  \skip2 \skip1*3
  \melodyMajor
}

bassLineA = {
  f2 | d4 e b e | e2 g4 f | d2 f4 a | e2 f | a4 g e c | a,2 c4 c | d2
}
bassLineB = {
      e2   |  a4  g    g4  f4 |  d2   d        |  a,4 a,  d8 g  e4  | f2
     a,2   |  c4  e    g   g  |  c2   b,4    c |  a2     a4     f   | e2
      d2   |  e4  d    c bes, |  c2   bes,4  c |  d2
}
bassLineVerseV = {
    \partial2
    c2\mf
        | a,4 bes, d e | e2 d4 e    | c2     a,4   a,     | c2    e  | a4  f    e d | e2 d4 c    | c2
    a,2 | a,4 bes, d e | a2 a       | e4 d   d8 c  bes,4  | bes,2 c2 | a,4 bes, d e | g2 f4 c    | bes,2
    e2  | a4  f    e f | e2 d4 c    | c2     a,4   bes,4  | c2
}
bassVerseIb = {
  \key c \minor
  \skip1*10 \skip2
  \transpose d c { \bassLineB }
  fis2\rest| fis1\rest | fis1\rest | fis1\rest 
}
bassVerseII = {
  \key d \minor
  \bassLineA \bassLineB \skip2 \skip1 \skip2
  \bassLineA \bassLineB \skip2 \skip1 \skip2
  \bassLineA \bassLineB
  fis2\rest| fis1\rest | fis1\rest | fis1\rest 
  \bar "||" \key f \major
  \bassLineVerseV
}

verseI = \lyricmode {
    When Jo- nah preach'd the word,
    He spoke soft as a dove.
    Like Jo- nah, we re- sent all God’s love.
    The Spi- rit will come down and turn us all _ a- round,
    And o- pen up our hearts to His love, with His love,
    And teach us how to love as God loves.
}
verseII = \lyricmode {
    The sign of Jo- nah comes
    from a- bove as a dove.
    The sign of Jo- nah comes with God’s Love.
    “This is my Son, I love. Li- sten to what _ he says,
    And o- pen up your hearts to My love, with His love.
    This is my Son, I love, li- sten well.”

    The King- dom of the Lord
    has these keys, these free keys.
    For- give- ness, love, and grace are His keys.
    Let us use these keys to for- give as He _ for- gives,
    To free our cap- tives with the good news of our love.
    Un- lock our hearts with love from a- bove.

    If we would love with God,
    Oh, what joy for our souls!
    What joy our lives on His earth would hold!
    What friend- ship in the Lord! We ne- ver could _ a- fford,
    Like Jo- nah to seek shade all a- lone and groan,
    To nurse a grudge with a curse and a moan.

    With love and ho- li- ness,
    Let us bless, ne- ver curse.
    With love and ho- li- ness, let us bless.
    U- pon this rock we stand, sal- va- tion is _ at hand.
    The church must bless with a ge- ne- rous love and grace,
    For we walk with the Lord as a friend.
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "women" <<
        \new Voice = "sopranos" {
          \voiceOne
          << \global \sopVerses >>
        }
        \new Voice = "altos" {
          \set midiInstrument = #"flute"
          \voiceTwo
          << \global {\altoVerseI \altoVerseII} >>
        }
      >>
      \new Lyrics = "verseI"
      \new Lyrics = "verseII"
%      \new Lyrics = "verseIII"
%      \new Lyrics = "verseIV"
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" {
          \voiceOne
          \set midiInstrument = #"trumpet"
          << \global {\tenorVerseIb \tenorVerseII \tenorVerseV} >>
        }
        \new Voice = "basses" {
          \set midiInstrument = #"trombone"
          \voiceTwo << \global {\bassVerseIb \bassVerseII} >>
        }
      >>
      \context Lyrics = "verseI"   \lyricsto "altos" \verseI
      \context Lyrics = "verseII"  \lyricsto "sopranos" \verseII
%      \context Lyrics = "verseIII" \lyricsto "sopranos" \verseIII
%      \context Lyrics = "verseIV"  \lyricsto "sopranos" \verseIV
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice = "pianotreble" {
          \set midiInstrument = #"acoustic grand"
          << \global \pianoTreble >>
        }
      >>
      \new Staff <<
        \new Voice = "pianobass" {
          \set midiInstrument = #"acoustic grand"
          \clef bass
          \global \pianoBass
        }
      >>
    >>
  >>
  \layout{}
  \midi{
    % http://lilypond.org/doc/v2.18/Documentation/notation/midi-instruments
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    \tempo 4=100
  }
}

% What Wondrous Love is This?

