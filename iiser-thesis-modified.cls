%%
%% This is file `brandeis-dissertation.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% brandeis-dissertation.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from brandeis-dissertation.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file brandeis-dissertation.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% \RCS$Id: brandeis-dissertation.dtx,v 1.9 2004/10/27 00:47:04 turtle Exp $
%% \RCS$Revision: 1.9 $
%% \RCS$Date: 2004/10/27 00:47:04 $
%%
%%  (C) 2000 Andy Garland (aeg@cs.brandeis.edu)
%%  (C) 2001 Pablo Funes (pablo@cs.brandeis.edu)
%%  (C) 2004 Peter M^^f8ller Neergaard
%%
%%   This program may be distributed and/or modified under the
%%   conditions of the LaTeX Project Public License, either version 1.2
%%   of this license or (at your option) any later version.
%%   The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%%   and version 1.2 or later is part of all distributions of LaTeX
%%   version 1999/12/01 or later.

%% Modified for IISER Pune by Anindya Goswami
%% Various aspects slightly modified by Ananda Shikhara Bhat in 2022-23. Most modifications are just cosmetic and/or make some things more convenient for biology/biologist requirements.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiser-thesis-modified}
\usepackage{ragged2e}
\usepackage{pdfpages}

\newif\ifbd@blankclear
\DeclareOption{blankcleared}{\bd@blankcleartrue}
\DeclareOption{numbercleared}{\bd@blankclearfalse}
\newif\ifbd@minmar
\DeclareOption{minmargins}{\bd@minmartrue}
\DeclareOption{15margins}{\bd@minmarfalse}
\newif\ifbd@nochange@small@ftnt
\DeclareOption{12pt}{\def\bd@book@size{12pt}%
  \bd@nochange@small@ftntfalse}
\DeclareOption{11pt}{\def\bd@book@size{11pt}%
  \bd@nochange@small@ftnttrue}
\DeclareOption{10pt}{\def\bd@book@size{10}%
  \bd@nochange@small@ftnttrue}
\DeclareOption{oneside}{\def\bd@book@side{oneside}}
\DeclareOption{twoside}{\def\bd@book@side{twoside}}
\DeclareOption{draft}{\def\bd@book@final{draft}}
\DeclareOption{final}{\def\bd@book@final{final}}
\DeclareOption{openright}{\def\bd@book@openrght{openright}}
\DeclareOption{openany}{\def\bd@book@openrght{openany}}
\DeclareOption{leqno}{\PassOptionsToClass{book}{\currentoption}}
\DeclareOption{fleqno}{\PassOptionsToClass{book}{\currentoption}}
\DeclareOption{openbib}{\PassOptionsToClass{book}{\currentoption}}
\DeclareOption{openbib}{\def\bd@book@openbib{openbib}}
\ExecuteOptions{12pt,openright,final,oneside,%
   minmargins,lot,lof}
\ProcessOptions*
\LoadClass[a4paper,\bd@book@size,\bd@book@side,%
   \bd@book@final,\bd@book@openrght]{book}
\ifbd@nochange@small@ftnt
  \let\small\normalsize
  \let\footnotesize\normalsize
\fi
\let\bd@cleardoublepage@save\cleardoublepage
\newcommand{\bd@cleardoublepageblank}{%
  \clearpage
  \thispagestyle{empty}%
  \bd@cleardoublepage@save}
\ifbd@blankclear
  \AtBeginDocument{\let\cleardoublepage\bd@cleardoublepageblank}
\fi
\RequirePackage[onehalfspacing]{setspace}
\let\bd@thebibliography\thebibliography
\let\bd@endthebibliography\endthebibliography
\renewenvironment{thebibliography}%
    {\begin{singlespace}\bd@thebibliography}%
  {\bd@endthebibliography\end{singlespace}}
\let\bd@theindex\theindex
\let\bd@endtheindex\endtheindex
\renewenvironment{theindex}{%
    \addcontentsline{toc}{chapter}%
      {\protect\numberline{}\indexname}%
    \bd@theindex\begin{singlespace}\small}%
  {\end{singlespace}\bd@endtheindex}
\let\bd@quotation\quotation
\let\bd@endquotation\endquotation
\renewenvironment{quotation}%
    {\begin{singlespace}\bd@quotation}%
  {\bd@endquotation\end{singlespace}}
\everydisplay\expandafter{%
  \the\everydisplay
  \def\baselinestretch{1.2}\selectfont}
\smallskipamount=2pt plus 1.5pt minus 1.5pt
\smallskipamount=4pt plus 3pt minus 3pt
\bigskipamount=8pt plus 6pt minus 6pt
\RequirePackage[letterpaper]{geometry}
\ifbd@minmar
  \geometry{left=1in, top=1in, right=1in, bottom=1in,
    marginparwidth=.5in}
\else
  \geometry{margin=1in,marginparwidth=1in}
\fi
\let\bd@ps@plain@saved\ps@plain
\let\bd@ps@empty@saved\ps@empty
\let\bd@ps@headings@saved\ps@headings
\let\bd@ps@myheadings@saved\ps@myheadings
\def\ps@plain{\geometry{includehead=false,includefoot}%
  \bd@ps@plain@saved}
\def\ps@pempty{\geometry{includehead=false,includefoot=false}%
  \bd@ps@empty@saved}
\def\ps@headings{\geometry{includehead,includefoot=false}%
  \bd@ps@headings@saved}
\def\ps@myheadings{\geometry{includehead,includefoot=false}%
  \bd@ps@myheadings@saved}
\AtBeginDocument{%
  \let\ps@plain\bd@ps@plain@saved
  \let\ps@empty\bd@ps@empty@saved
  \let\ps@headings\bd@ps@heading@saved
  \let\ps@myheadings\bd@ps@myheading@saved
  \let\bd@ps@plain\@undefined
  \let\bd@ps@empty\@undefined
  \let\bd@ps@headings\@undefined
  \let\bd@ps@myheadings\@undefined}
\pagestyle{headings}
\newcommand{\thesisfront}[1][]{%
  \@for\bd@option:=#1\do{%
     \@ifundefined{bd@tf@\bd@option}{%
       \@latex@error{\@backslashchar thesisfront: option `\bd@option'
       unknown}%
       {The option you have specified is unknown.  Check the spelling
and \MessageBreak consult the documentation for the\MessageBreak
iiser-thesis class.}}%
     {\@nameuse{bd@tf@\bd@option}}}%
 \addcontentsline{toc}{part}{Front Matter}
  \frontmatter
  \bgroup
  %Title page
  \pagestyle{empty}
  \thesistitlepage\cleardoublepage
  \if@bd@onlinesubmission{\signaturepage}{\signaturepage*}%
  \cleardoublepage
  %Declaration page
  \declarationpage
  \cleardoublepage
  %Dedication page
    \ifx\@dedication\@empty\else
  \dedicationpage{\@dedication}%
  \cleardoublepage
  \fi
  \cleardoublepage
  \egroup
  %Acknowledgements page
  \compactpage{Acknowledgements}{\@acknowledgments}%
  \cleardoublepage
  %Funding page
  \noncompactpage{Funding \& Financial Support}{\@funding}%
  \cleardoublepage
  %CRediT contributions page
  \contributionspage
  \cleardoublepage
  %Thesis abstract page
  %For some reason the hyperref to the abstract doesnt work correctly unless there is also a \phantomsection just before it
  \phantomsection
  \bd@abstract{\@thesisabstract}%
  \addcontentsline{toc}{chapter}{Abstract}
  \cleardoublepage
  %Table of contents
  \tableofcontents
  \addcontentsline{toc}{chapter}{Contents}
  \cleardoublepage
  %List of tables
  %\if@bd@lot{\listoftables\cleardoublepage}%
  %\listoftables
  %\addcontentsline{toc}{chapter}{List of Tables}
  %\cleardoublepage
  %List of figures
  %\if@bd@lof{\listoffigures\cleardoublepage}%
  %\listoffigures
  %\addcontentsline{toc}{chapter}{List of Figures}
  %\cleardoublepage
  \mainmatter}
\let\if@bd@onlinesubmission\@firstoftwo
\newcommand{\bd@tf@onlinesubmission}{%
  \let\if@bd@onlinesubmission\@firstoftwo}
\newcommand{\bd@tf@papersubmission}{%
  \let\if@bd@onlinesubmission\@secondoftwo}
\let\if@bd@lot\@gobble
\newcommand{\bd@tf@lot}{\let\if@bd@lot\@iden}
\newcommand{\bd@tf@nolot}{\let\if@bd@lot\@gobble}
\let\if@bd@lof\@gobble
\newcommand{\bd@tf@lof}{\let\if@bd@lof\@iden}
\newcommand{\bd@tf@nolof}{\let\if@bd@lof\@gobble}
\setcounter{tocdepth}{1}
\let\bd@org@tableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
  \begin{singlespace}
    \bd@org@tableofcontents
  \end{singlespace}}
\let\bd@org@listoftables\listoftables
\renewcommand{\listoftables}{%
  \begin{singlespace}
    \bd@org@listoftables
 \end{singlespace}}
\let\bd@org@listoffigures\listoffigures
\renewcommand{\listoffigures}{%
  \begin{singlespace}
    \bd@org@listoffigures
  \end{singlespace}}
\renewcommand\mainmatter{%
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}}
\gdef\@acknowledgments{}
\gdef\@funding{}
\gdef\@supervisor{}
\gdef\@cosupervisor{}
\gdef\@sdesignation{}
\gdef\@csdesignation{}
\gdef\@coordinator{}
\gdef\@dedication{}
\gdef\@department{}
\gdef\@graduationmonth{April}
\xdef\@graduationyear{\the\year}
\gdef\@academicyear{}
\gdef\@othercopyright{}
\gdef\@preface{}
\gdef\@thesisabstract{}
\newcommand{\acknowledgments}[1]{\gdef\@acknowledgments{#1}}
\newcommand{\funding}[1]{\gdef\@funding{#1}}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand{\cosupervisor}[1]{\gdef\@cosupervisor{#1}}
\newcommand{\sdesignation}[1]{\gdef\@sdesignation{#1}}
\newcommand{\csdesignation}[1]{\gdef\@csdesignation{#1}}
\newcommand{\coordinator}[1]{\gdef\@coordinator{#1}}
\newcommand{\dedication}[1]{\gdef\@dedication{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\graduationmonth}[1]{\gdef\@graduationmonth{#1}}
\newcommand{\graduationyear}[1]{\gdef\@graduationyear{#1}}
\newcommand{\academicyear}[1]{\gdef\@academicyear{#1}}
\newcommand{\othercopyright}[1]{\gdef\@othercopyright{#1}}
\newcommand{\preface}[1]{\gdef\@preface{#1}}
\newcommand{\thesisabstract}[1]{\gdef\@thesisabstract{#1}}
\newcommand{\reader}[1]{%
  \expandafter\gdef
    \expandafter\@committee
       \expandafter{\@committee\do{#1}}}
\gdef\@committee{}

\def\copyrightnotice{\gdef\@copyrightnotice{
   \copyright\ \@author\ \@graduationyear\par  All rights reserved}}


\newcommand{\thesistitlepage}{
  \thispagestyle{empty}%
  \begin{center}
    \vspace*{-1in}%
    {\Huge \bf\baselineskip=.8\baselineskip \@title\\}
    \vskip 1.5em
         {\bf A Thesis}
          \vskip 1em
   \large{submitted to\\
    Indian Institute of Science Education and Research Pune\\
    in partial fulfillment  of the requirements for the \\
    BS-MS Dual Degree Programme\\}
      \vskip 1em
          {by \par}
         \vskip 1em
         \begin{tabular}[t]{c}
            {\large {\bf \@author}}
         \end{tabular}
    \vskip 0.5em
    \includegraphics{backend/iiser-logo.png}
    \end{center}
    \begin{center}
    Indian Institute of Science Education and Research Pune\\
  Dr. Homi Bhabha Road,\\
           Pashan, Pune 411008, INDIA.
           \vskip 1em
     {\@graduationmonth, \@graduationyear}
  \end{center}%
  %\vfil
\begin{center}
{Supervisor: \@supervisor }\\
{Co-supervisor: \@cosupervisor }\\
{\copyright\; \@author\; \@graduationyear\par All rights reserved}
\end{center}
  \clearpage}

\newcommand{\dedicationpage}[1]{%
  \thispagestyle{empty}%
  \vspace*{2.5in}%
  \begin{center}%
    #1
  \end{center}%
  \clearpage}
\newenvironment{abstract}{%
  \begin{singlespace}
    \thispagestyle{plain}
    \begin{center}
      {\Huge\bf Abstract}
    \end{center}
    \end{singlespace}%
    \begin{onehalfspace}
    \noindent}%
  {\end{onehalfspace}%
  \clearpage}
\newcommand{\bd@abstract}[1]{%
 \begin{abstract}#1\end{abstract}}
\let\if@bd@sig@lines\@secondoftwo

%Certificate page
\newcommand{\signaturepage}{%
  \@ifstar{\let\if@bd@sig@lines\@firstoftwo\bd@sig@page}%
    {\let\if@bd@sig@lines\@secondoftwo\bd@sig@page}}

%Actually import the page
\newcommand{\bd@sig@page}{%
    \thispagestyle{empty}%
    %import the (signed) certificate page
    \includepdf[pages={1}]{backend/certificate.pdf}
    \clearpage}

%Declaration page
\newcommand{\declarationpage}{
    \thispagestyle{empty}%
	%import the (signed) certificate page
	\includepdf[pages={1}]{backend/declaration.pdf}
	\clearpage}

%CRediT contributions page
\newcommand{\contributionspage}{
	\thispagestyle{empty}%
	%import the TeX containing the contributions page content
	\input{backend/contributions}
	\clearpage}

\newcommand{\bd@sig@page@item}[1]{%
  \if@bd@sig@lines{%
     \penalty10000\vskip.6in minus 1in%
     \bd@signline{\bd@comm@signline@lngth}}%
   {\par}%
  #1}
\newcommand{\bd@signline}[1]{%
  \rule[.5\baselineskip]{#1}{0.4pt}\hskip-#1\relax\ignorespaces}
\newlength{\bd@comm@signline@lngth}
\setlength{\bd@comm@signline@lngth}{2.5in}
\newcommand{\bd@upd@signline@lngth}[1]{%
  {\setbox0=\hbox{#1}%
  \ifdim \wd0>\bd@comm@signline@lngth
    \global\bd@comm@signline@lngth=\wd0
  \fi}}

%I just made this up
\newenvironment{noncompactpageenv}[1]{%
	\chapter*{\hfill{\centering #1}\hfill}}%
{\clearpage}
\newcommand{\noncompactpage}{%
	\noncompactpage@i{noncompactpageenv}}
\newcommand{\noncompactpage@i}[3]{%
	\ifx\@empty#3
	\expandafter\@gobble
	\else
	\expandafter\@iden
	\fi
	{\vspace{4cm}\begin{#1}{#2}#3\end{#1}}}


%I just made this up for a more compact option
\newenvironment{compactpageenv}[1]{%
	\section*{\centering\Huge#1}}%
{\clearpage}
\newcommand{\compactpage}{%
	\compactpage@i{compactpageenv}}
\newcommand{\compactpage@i}[3]{%
	\ifx\@empty#3
	\expandafter\@gobble
	\else
	\expandafter\@iden
	\fi
  {\vspace{-5.4cm}\begin{#1}{#2}#3\end{#1}}}


\endinput
%%

