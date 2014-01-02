%%
%% This is file `commalg.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% commalg.dtx 
%% 
%%% ===================================================================
%%%  @LaTeX-file{
%%%     filename = "commalg.dtx",
%%%     version  = "1.0a",
%%%     date     = "1997/02/28",
%%%     time     = "13:42:42 WST",
%%%     checksum = "02650 415 1652 16921"
%%%     author   = "Greg Gamble",
%%%     address  = "Department of Mathematics,
%%%                 University of Western Australia,
%%%                 Nedlands, W.A. 6907,
%%%                 Australia",
%%%     telephone = "+61 9 380 3340,"
%%%     FAX       = "+61 9 380 1028",
%%%     copyright = "Copyright (C) 1996 Greg Gamble,
%%%                  all rights reserved.  Copying of this file is
%%%                  authorised only if either:
%%%                   (1) you make absolutely no changes to your copy,
%%%                       including name; OR
%%%                   (2) if you do make changes, you first rename it
%%%                       to some other name.",
%%%     email     = "gregg@maths.uwa.edu.au (Internet)",
%%%     codetable = "ISO/ASCII",
%%%     keywords  = "latex, amslatex, ams-latex, installation",
%%%     supported = "yes",
%%%     abstract  = "This is class \cls{commalg}. It is built on the
%%%                  standard \latex/ \cls{article} class.
%%%                  It provides a document class for typesetting
%%%                  articles to comply with specifications for
%%%                  the journal Communications in Algebra."
%%%     docstring = "The checksum field above contains a CRC-16
%%%                  checksum as the first value, followed by the
%%%                  equivalent of the standard UNIX wc (word
%%%                  count) utility output of lines, words, and
%%%                  characters.  This is produced by Robert
%%%                  Solovay's checksum utility.",
%%%  }
%%% ===================================================================
\typeout{commalg 1.0a}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{commalg}[1997/02/28 v1.0a]
\newif\if@draft
\DeclareOption{draft}{\@drafttrue}
\DeclareOption{final}{\@draftfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}
\def\calclayout{%
  \oddsidemargin\paperwidth
  \advance\oddsidemargin -\textwidth
  \divide\oddsidemargin\tw@
  \ifdim\oddsidemargin<.5truein \oddsidemargin.5truein \fi
  \advance\oddsidemargin -1truein
  \evensidemargin\oddsidemargin
  \advance\topmargin -\headheight \advance\topmargin -\headsep
  \advance\topmargin -1truein\relax%
  }
\normalsize
\setlength{\textheight}{8.5in}
\setlength{\textwidth}{5.5in}
\setlength{\topmargin}{1in}
\calclayout
\setlength{\marginparsep}{4mm}
\setlength{\marginparwidth}{12mm}
\def\shortdate{\number\day/\number\month/\number\year}
\def\ps@draft{\let\@mkboth\@gobbletwo\let\@oddhead\@empty%
              \def\@oddfoot{\reset@font\rlap{\textsl{Draft: \shortdate}}%
                            \hfil\thepage\hfil}%
              \let\@evenhead\@empty\let\@evenfoot\@oddfoot}
\if@draft%
  \def\ps@headings{%
    \def\@oddfoot{\reset@font\rlap{\textsl{Draft: \shortdate}}\hfil}
    \def\@oddhead{{\slshape\MakeUppercase\shorttitle}\hfil\thepage}}%
\else%
  \let\ps@headings\ps@empty
\fi%
\if@draft\pagestyle{draft}\else\pagestyle{empty}\fi%
\RequirePackage{amsmath}\relax
\ifx\relax\mathfrak \@xp\@gobbletwo \else \let\mathfrak\relax \fi
\RequirePackage{amsfonts}\relax
\RequirePackage{amsthm}\relax
\renewenvironment{proof}[1][\proofname]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
  }{%
  \qed\endtrivlist
  }%
\allowdisplaybreaks[1]
\renewcommand{\title}[2][]{\gdef\shorttitle{#1}\gdef\@title{#2}}
\edef\title{\@nx\@dblarg
  \@xp\@nx\csname\string\title\endcsname}
\renewcommand{\author}[2][]{\gdef\shortauthors{#1}\gdef\authors{#2}}
\edef\author{\@nx\@dblarg
  \@xp\@nx\csname\string\author\endcsname}
\let\shortauthors\@empty   \let\authors\@empty
\def\@setaddress{\def\address##1{\par##1\@addpunct.}\@address}
\newcommand{\address}[1]{\let\@address\@empty
 \g@addto@macro\@address{\address{#1}}}
\renewcommand{\thanks}[1]{\let\thankses\@empty
  \g@addto@macro\thankses{\thanks{#1}}}
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
    \if@draft\thispagestyle{draft}\else\thispagestyle{empty}\fi%
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@address\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 11mm%
  \begin{center}%
  \let \footnote \thanks
  \renewcommand{\baselinestretch}{\normalstretch}
    {\LARGE\MakeUppercase\@title\par}%
    \vskip 2\baselineskip%
    {\normalsize
      \authors
      \vskip \baselineskip%
      {\renewcommand{\baselinestretch}{1}\normalsize%
       \ifx\@empty\@address\else\@setaddress\\\fi}}
  \end{center}%
  \renewcommand{\baselinestretch}{\normalstretch}\normalsize
  \par
  \vskip 4\baselineskip}
\def\ackname{Acknowledgments}
\newenvironment{acknowledgements}%
   {\subsection*{\centering\normalfont\MakeUppercase\ackname}}{}
\renewenvironment{thebibliography}[1]
     {\section*{\centering\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\def\normalstretch{1.24}
\renewcommand{\baselinestretch}{\normalstretch}\normalsize
\newcommand{\singlespacing}{\renewcommand{\baselinestretch}{1}}
\newcommand{\oneandhalfspacing}{\renewcommand{\baselinestretch}{1.24}}
\newcommand{\doublespacing}{\renewcommand{\baselinestretch}{1.66}}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \MakeUppercase#1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newcommand{\numberin}[2]{%
     \@addtoreset{#1}{#2}%
     \@xp\@xp\@xp\renewcommand\@xp{\csname the#1\endcsname}{%
                        \csname the#2\endcsname.\arabic{#1}}}
\endinput
%%
%% End of file `commalg.cls'.
