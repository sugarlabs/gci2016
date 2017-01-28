%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
% \include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
    indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
    #(define fonts
    (make-pango-font-tree "TeX Gyre Schola"
                          "TeX Gyre Heros"
                          "TeX Gyre Cursor"
                          (/ staff-height pt 20)))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "centered-measure-numbers.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.17.7
\version "2.17.7"

\header {
%% Translation of GIT committish: 4d9770a67176122b9779426cf540ad1694f07f61
  texidoces = "
Con frecuencia, las partituras de obras para conjuntos grandes tienen
los números de compás debajo del sistema y centrados horizontalmente
sobre el ancho del compás.  Este fragmento de código muestra cómo
puede usarse el grabador @code{Measure_counter_engraver} para simular
esta práctica notacional.  Aquí hemos añadido el grabador a un
contexto @code{Dynamics}.

"
  doctitlees = "Números de compás centrados"

  lsrtags = "contexts-and-engravers, repeats, staff-notation"

  texidoc = "
Scores of large ensemble works often have bar numbers placed beneath the
system, centered horizontally on the measure's extent.  This snippet shows
how the @code{Measure_counter_engraver} may be used to simulate this
notational practice.  Here, the engraver has been added to a @code{Dynamics}
context.

"

  doctitle = "Centered measure numbers"
} % begin verbatim


\layout {
  \context {
    \Dynamics
    \consists #Measure_counter_engraver
    \override MeasureCounter.direction = #DOWN
    \override MeasureCounter.font-encoding = #'latin1
    \override MeasureCounter.font-shape = #'italic
    % to control the distance of the Dynamics context from the staff:
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

hidden-quarter-rest = \repeat unfold 11 { s4 }

scalebass = { f, g, a, b, c d e f g a b }
scaletreble = { d' e' f' g' a' b' c'' d'' e'' f'' g'' }

\new StaffGroup <<
  \new Staff {
    \hide Stem
%%{ %this removes the measure bar lines
    \cadenzaOn
%}
%{ %This adds the note names
    \easyHeadsOn
%}
    \hidden-quarter-rest
    c'4
    \scaletreble
  }
  \new Staff {
    \clef "bass"
    \hide Stem
    \cadenzaOn
%{
    \easyHeadsOn
%}
    \scalebass
    \hidden-quarter-rest
    s4
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
