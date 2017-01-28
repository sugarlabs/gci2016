\version "2.18.2"

% ****************************************************************
% 
% WHAT IS THIS? -- This is a LilyPond file generated from Music
% Blocks software (Read about it at www.musicblocks.net).
% 
% DOWNLOAD LILYPOND -- In order to create notation with this file,
% you will need to download and install LilyPond software onto your
% computer (http://lilypond.org/download.html). Frescobaldi
% software is also handy for editing LilyPond files
% (http://frescobaldi.org/download).
% 
% LILYPOND INSTRUCTIONS -- For instructions on how to further
% manipulate musical notation using LilyPond software, please
% read the Introduction (http://lilypond.org/text-input.html) and
% the Manual
% (http://lilypond.org/doc/v2.18/Documentation/learning/index.html).
% 
% GLOSSARY -- A glossary with helpful examples may be found here
% (http://www.lilypond.org/doc/v2.19/Documentation/music-glossary/).
% 
% MUTOPIA -- You may also benefit from studying scores from the
% Mutopia Project website, which has freely sharable music notation
% generated with LilyPond (http://www.mutopiaproject.org/).
% 
% TUNEFL -- You can explore your Lilypond output in a web browser at
% (https://www.tunefl.com/).
% 
% COMMENTS -- Some of the code below is commented out. You can
% enable it by deleting the % that precedes the text or, in the
% case of a commented section, deleting the %{ and %} that surrounds
% the section.
% 
% ****************************************************************

% Please add your own name, the title of your musical creation,
% and the intended copyright below.
% The copyright is great for sharing (and re-sharing)!
% Read more about it here (http://creativecommons.org/licenses/by-sa/4.0/).
% Of course, you can use any copyright you like -- you made it!
\header {
   dedication = \markup {
      \abs-fontsize #8 \sans "Made with LilyPond and Music Blocks" \with-url #"http://walterbender.github.io/musicblocks/" {
         \abs-fontsize #8 \sans "(http://walterbender.github.io/musicblocks/)"
      }
   }
   title = "My Music Blocks Creation"
%   subtitle = "Subtitle"
%   instrument = "Instrument"
   composer = "Mr. Mouse"
%   arranger = "Arranger"
   copyright = "Mr. Mouse (c) 2015 -- CC-BY-SA"
   tagline = "Made from Music Blocks v.0.9"
   footer = \markup {
      \with-url #"http://walterbender.github.io/musicblocks/" "Made with Music Blocks Software v.0.9." Engraved on \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
   }
   currentYear = \markup {
      \simple #(strftime "%Y" (localtime (current-time)))
   }
   copyTag =  " free to distribute, modify, and perform"
   copyType = \markup {
      \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License "
   }
   copyright = \markup {
      \override #'(baseline-skip . 0 ) \right-column {
         \sans \bold \with-url #"http://musicblocks.net" {
            \abs-fontsize #9  "Music " \concat {
               \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Blocks "
            }
         }
      }
      \override #'(baseline-skip . 0 ) \center-column {
         \abs-fontsize #11.9 \with-color #grey \bold {
            \char ##x01C0 \char ##x01C0
         }
      }
      \override #'(baseline-skip . 0 ) \column {
         \abs-fontsize #8 \sans \concat {
            " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond software " \char ##x00A9 " " \currentYear " by " \composer " " \char ##x2014 " " \footer
         }
         \concat {
            \concat {
               \abs-fontsize #8 \sans {
                  " " \copyType \char ##x2014 \copyTag
               }
            }
            \abs-fontsize #13 \with-color #white \char ##x01C0
         }
      }
   }
   tagline = ##f
}

% To change the meter make adjustments in the following section.
% You must also delete the % before \meter everywhere it appears below.
meter = {
   \time 3/4
   \key c \minor
   \numericTimeSignature
   \partial 4 
   \tempo "Andante" 4=90
}

% You can change the MIDI instruments below to anything on logo list:
% (http://lilypond.org/doc/v2.18/documentation/notation/midi-instruments)

 = {
% \meter
ges'4 ges'4 ges'4 bes'4 ees''4 ees''4 ees''4 des''4 
bes'4 bes'4 bes'4 bes'4 f'4 f'4 f'4 ees'4 
}

Voice = \new Staff \with {
   \clef "treble"
   instrumentName = ""
   shortInstrumentName = ""
   midiInstrument = "acoustic grand"

   \remove "Note_heads_engraver"
   \consists "Completion_heads_engraver"
   \remove "Rest_engraver"
   \consists "Completion_rest_engraver"
} { \clef "treble" \ }

 = {
% \meter
bes2 bes2 ees2 ees2 ges2 ges2 f2 f2  \bar "%7C."
}

Voice = \new Staff \with {
   \clef "bass"
   instrumentName = ""
   shortInstrumentName = ""
   midiInstrument = "acoustic grand"

   \remove "Note_heads_engraver"
   \consists "Completion_heads_engraver"
   \remove "Rest_engraver"
   \consists "Completion_rest_engraver"
} { \clef "bass" \ }


\score {
   <<
      \Voice
      \Voice


% GUITAR TAB SECTION
% Delete the %{ and %} below to include guitar tablature output.
%{
      \new TabStaff = "guitar tab" 
      <<
         \clef moderntab
         \context TabVoice = "" \
         \context TabVoice = "" \
      >>
%}

   >>
   \layout {}

% MIDI SECTION
% Delete the %{ and %} below to include MIDI output.
%{
\midi {
   \tempo 4=90
}
%}

}

% MUSIC BLOCKS CODE
% Below is the code for the Music Blocks project that generated logo Lilypond file.
%{

[[0,["start",{"collapsed":false,"xcor":0,"ycor":0,"heading":0,"color":30,"shade":50,"pensize":5,"grey":100}],698,-93,[null,76,null]],
[1,["newnote",{}],842,933.5,[28,2,5,9]],
[2,["divide",{}],947,933.5,[1,3,4]],
[3,["number",{"value":1}],1032.5,933.5,[2]],
[4,["number",{"value":4}],1032.5,965,[2]],
[5,["vspace",{}],855.5,965,[1,6]],
[6,["pitch",{}],855.5,996.5,[5,7,8,null]],
[7,["solfege",{"value":"fa"}],929,996.5,[6]],
[8,["number",{"value":4}],929,1028,[6]],
[9,["hidden",{}],842,1091,[1,null]],
[10,["newnote",{}],828.5,524,[39,11,14,18]],
[11,["divide",{}],933.5,524,[10,12,13]],
[12,["number",{"value":1}],1019,524,[11]],
[13,["number",{"value":4}],1019,555.5,[11]],
[14,["vspace",{}],842,555.5,[10,15]],
[15,["pitch",{}],842,587,[14,16,17,null]],
[16,["solfege",{"value":"re♭"}],915.5,587,[15]],
[17,["number",{"value":5}],915.5,618.5,[15]],
[18,["hidden",{}],828.5,681.5,[10,61]],
[19,["newnote",{}],828.5,1122.5,[28,20,23,27]],
[20,["divide",{}],933.5,1122.5,[19,21,22]],
[21,["number",{"value":1}],1019,1122.5,[20]],
[22,["number",{"value":4}],1019,1154,[20]],
[23,["vspace",{}],842,1154,[19,24]],
[24,["pitch",{}],842,1185.5,[23,25,26,null]],
[25,["solfege",{"value":"mi♭"}],915.5,1185.5,[24]],
[26,["number",{"value":4}],915.5,1217,[24]],
[27,["hidden",{}],828.5,1280,[19,null]],
[28,["repeat",{}],828.5,902,[61,29,1,19]],
[29,["number",{"value":3}],903.5,902,[28]],
[30,["newnote",{}],842,335,[39,31,34,38]],
[31,["divide",{}],947,335,[30,32,33]],
[32,["number",{"value":1}],1032.5,335,[31]],
[33,["number",{"value":4}],1032.5,366.5,[31]],
[34,["vspace",{}],855.5,366.5,[30,35]],
[35,["pitch",{}],855.5,398,[34,36,37,null]],
[36,["solfege",{"value":"mi♭"}],929,398,[35]],
[37,["number",{"value":5}],929,429.5,[35]],
[38,["hidden",{}],842,492.5,[30,null]],
[39,["repeat",{}],828.5,303.5,[49,40,30,10]],
[40,["number",{"value":3}],903.5,303.5,[39]],
[41,["newnote",{}],828.5,146,[59,42,45,49]],
[42,["divide",{}],933.5,146,[41,43,44]],
[43,["number",{"value":1}],1019,146,[42]],
[44,["number",{"value":4}],1019,177.5,[42]],
[45,["vspace",{}],842,177.5,[41,46]],
[46,["pitch",{}],842,209,[45,47,48,null]],
[47,["solfege",{"value":"ti♭"}],915.5,209,[46]],
[48,["number",{"value":4}],915.5,240.5,[46]],
[49,["hidden",{}],828.5,303.5,[41,39]],
[50,["newnote",{}],842,-43,[59,51,54,58]],
[51,["divide",{}],947,-43,[50,52,53]],
[52,["number",{"value":1}],1032.5,-43,[51]],
[53,["number",{"value":4}],1032.5,-11.5,[51]],
[54,["vspace",{}],855.5,-11.5,[50,55]],
[55,["pitch",{}],855.5,20,[54,56,57,null]],
[56,["solfege",{"value":"sol♭"}],929,20,[55]],
[57,["number",{"value":4}],929,51.5,[55]],
[58,["hidden",{}],842,114.5,[50,null]],
[59,["repeat",{}],828.5,-74.5,[72,60,50,41]],
[60,["number",{"value":3}],903.5,-74.5,[59]],
[61,["repeat",{}],828.5,681.5,[18,62,63,28]],
[62,["number",{"value":4}],903.5,681.5,[61]],
[63,["newnote",{}],842,713,[61,64,67,71]],
[64,["divide",{}],947,713,[63,65,66]],
[65,["number",{"value":1}],1032.5,713,[64]],
[66,["number",{"value":4}],1032.5,744.5,[64]],
[67,["vspace",{}],855.5,744.5,[63,68]],
[68,["pitch",{}],855.5,776,[67,69,70,null]],
[69,["solfege",{"value":"ti♭"}],929,776,[68]],
[70,["number",{"value":4}],929,807.5,[68]],
[71,["hidden",{}],842,870.5,[63,null]],
[72,["action",{"collapsed":false}],815,-115,[null,73,59,null]],
[73,["text",{"value":"Intro RH"}],911,-106,[72]],
[74,["action",{"collapsed":false}],366,-123,[null,75,88,null]],
[75,["text",{"value":"Intro LH"}],462,-114,[74]],
[76,["nameddo",{"value":"Intro RH"}],711.5,-52.5,[0,null]],
[77,["start",{"collapsed":false,"xcor":0,"ycor":0,"heading":0,"color":40,"shade":50,"pensize":5,"grey":100}],207,19,[null,118,null]],
[78,["nameddo",{"value":"Intro LH"}],247.5,122.5,[115,null]],
[79,["newnote",{}],379.5,75,[96,80,83,87]],
[80,["divide",{}],484.5,75,[79,81,82]],
[81,["number",{"value":1}],570,75,[80]],
[82,["number",{"value":1}],570,106.5,[80]],
[83,["vspace",{}],393,106.5,[79,84]],
[84,["pitch",{}],393,138,[83,85,86,null]],
[85,["solfege",{"value":"mi♭"}],466.5,138,[84]],
[86,["number",{"value":3}],466.5,169.5,[84]],
[87,["hidden",{}],379.5,232.5,[79,97]],
[88,["newnote",{}],379.5,-82.5,[74,89,92,96]],
[89,["divide",{}],484.5,-82.5,[88,90,91]],
[90,["number",{"value":1}],570,-82.5,[89]],
[91,["number",{"value":1}],570,-51,[89]],
[92,["vspace",{}],393,-51,[88,93]],
[93,["pitch",{}],393,-19.5,[92,94,95,null]],
[94,["solfege",{"value":"ti♭"}],466.5,-19.5,[93]],
[95,["number",{"value":3}],466.5,12,[93]],
[96,["hidden",{}],379.5,75,[88,79]],
[97,["newnote",{}],379.5,232.5,[87,98,101,105]],
[98,["divide",{}],484.5,232.5,[97,99,100]],
[99,["number",{"value":1}],570,232.5,[98]],
[100,["number",{"value":1}],570,264,[98]],
[101,["vspace",{}],393,264,[97,102]],
[102,["pitch",{}],393,295.5,[101,103,104,null]],
[103,["solfege",{"value":"sol♭"}],466.5,295.5,[102]],
[104,["number",{"value":3}],466.5,327,[102]],
[105,["hidden",{}],379.5,390,[97,106]],
[106,["newnote",{}],379.5,390,[105,107,110,114]],
[107,["divide",{}],484.5,390,[106,108,109]],
[108,["number",{"value":1}],570,390,[107]],
[109,["number",{"value":1}],570,421.5,[107]],
[110,["vspace",{}],393,421.5,[106,111]],
[111,["pitch",{}],393,453,[110,112,113,null]],
[112,["solfege",{"value":"fa"}],466.5,453,[111]],
[113,["number",{"value":3}],466.5,484.5,[111]],
[114,["hidden",{}],379.5,547.5,[106,null]],
[115,["multiplybeatfactor",{}],234,91,[118,116,78,117]],
[116,["number",{"value":2}],405,91,[115]],
[117,["hidden",{}],234,185.5,[115,null]],
[118,["duplicatenotes",{}],220.5,59.5,[77,119,115,120]],
[119,["number",{"value":2}],361.5,59.5,[118]],
[120,["hidden",{}],220.5,217,[118,null]]]
%}

