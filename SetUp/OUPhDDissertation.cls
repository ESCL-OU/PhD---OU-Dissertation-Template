%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% OUPhDDissertation.cls
%%% Experimental LaTeX2e version of the University of Oklahoma
%%% thesis and dissertation style.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% @LaTeX-style-file{
%%%    Author     = "David John Gagne, Nathaniel Troutman (NPT), Brain Fiedler, Steven Douglas Cochran (sdc), TLI",
%%%    Version    = "3.1A (Experimental)",
%%%    Date       = "20 December 2014",
%%%    Time       = "15:37:52 EDT",
%%%    Filename   = "OUPhDDissertation.sty",
%%%    Address    = "",
%%%    Telephone  = "",
%%%    FAX        = "",
%%%    Email      = "",
%%%    CodeTable  = "ISO/ASCII",
%%%    Keywords   = "LaTeX, Thesis, Dissertation",
%%%    Supported  = "yes",
%%%    Abstract   = "LaTeX document-style for typesetting Theses or
%%%                  Dissertations in accordance with the University
%%%                  of Oklahoma. It provides some alternative 
%%%                  ``bells and whistles'' such as support for
%%%                  multi-volume documents." 
%%%    SeeAlso    = "techreport.sty"
%%% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%$% $Log:       OUPhDDissertation.sty,v $
%$% OUPhDDissertation.cls was revised by Nathaniel Troutman in 2010.
%$% Previously it was hacked by Brian Fiedler, and is originally 
%$% derived from USCThesis.cls.  
%$%
%$% 2022-2-1 -- Student Affairs Committee updated to current thesis standards
%$%       and added to website for all graduate students to access.
%$%        Added "BY THE COMMITTEE CONSISTING OF" -- Melanie Schroers
%$%
%$% 2014-12-20 -- Made committee member names right aligned. -- DJG
%$% 
%$% 2010-02-18 -- Forced school name to uppercase. -- NPT
%$%            -- Now requires geometry package to fix problems with margins
%$%               not cooperating.
%$%
%$% 2010-02-18 -- Forced author name and title to uppercase where needed. -- NPT
%$%
%$% 2010-02-18 -- Changed \member... to use conditionals, so no need to hack
%$% code anymore for listing more than 3 members. Now, 1-6 members is handled
%$% automatically. -- NPT
%$%
%$% 2010-02-18 -- Updated bibliography to allow renaming of the chapter title
%$% based upon the name used when doing \references[Works Cited]{amermeteorsoc}{library}
%$% previously on the TOC was changed and section was titled "Bibliography", it
%$% is now titled correctly. -- NPT
%$%
%$% 2007-05-19 -- stricter conformance to Grad College standards
%$% Seach forward to OUdoublespace... 
%$%
%$% 2006-7-15 -- changed TOC and Bibliography to single space and to 
%$% avoid use of either setspace.sty or doublespace.sty
%$%
%$% 2004-03-03 -- names printed under signature lines
%$% 
%$% Split off from USC to be OU specific.
%$%
%$%  Revision 3.0A 96/01/10  15:37:52 sdc
%$%  Converted for use with LaTeX2e.
%$%
%$%  Revision 2.3  92/08/13  14:22:21  sdc
%$%  Added \universityname for easy use outside USC.  Also the 
%$%  \if@techreport switch can be used to turn off the one-side-only
%$%  warning message (for better interface with the techreport style
%$%  option).  Placed a check for TeX-3.0 to allow an old TeX to work
%$%  without warnings.  Cleaned-up the code and comments a little.
%$%
%$%  Revision 2.2  92/06/29  10:59:15  sdc
%$%  Added standard file header for style.
%$%  
%$%  Revision 2.1  91/02/09  00:54:08  cochran
%$%  Fixed bug in interaction with techreport.sty.
%$%
%$%  Revision 2.0  91/01/03  16:12:48  cochran
%$%  Merged divergent branches by cochran@iris.usc.edu (1.10) and by
%$%  tli@almaak.usc.edu (1.11); these are common up to revision 1.8.
%$%  Removed fix in 1.11 which added Bibliography to the TOC since
%$%  this is handled by the \references command.
%$%  
%$%    Changes by tli@almaak.usc.edu:
%$%  
%$%      1.11 (90/09/23) Change title font to 12pt.  Change author's
%$%      font to 12pt.  Fix Bibliography so that it shows up in TOC.
%$%      Break the way that appendices show up in TOC.
%$%  
%$%      1.10 (90/07/10) Added a hack to make it work with TeX 3.0.
%$%  
%$%      1.9 (90/01/30) Make subsubsections show up with numbered
%$%      labels and in the TOC.
%$%  
%$%    Changes by cochran@iris.usc.edu:
%$%  
%$%      1.10 (90/12/29) Added commands and modified \title to allow
%$%        multiple volume dissertations.  Fixed bug which caused the
%$%        pagestyle of the TOC to be wrong if there were no
%$%        preceeding prefacesections. 
%$%  
%$%      1.9 (90/12/03)  Corrected title size to correspond to the
%$%        University Publications statement that the "Title must be
%$%        the same size as `FACULTY OF ...' and no bold print.  Also
%$%        added an optional argument to the \pageleft command to
%$%        allow the fine tuning of the gutter margin in the
%$%        techreport style option. 
%$%  
%$%  Revision 1.8  89/09/15  19:39:11  tli
%$%  Change spacing in accordance with University Publications.
%$%
%$%  Revision 1.7  89/01/27  13:56:04  tli
%$%  Too much space after a saying.
%$%
%$%  Revision 1.6  89/01/26  14:01:20  tli
%$%  Added the saying environment.
%$%
%$%  Revision 1.5  88/11/02  10:42:47  cochran
%$%  Minor corrections and removal of unnecessary \makeatletter and
%$%  \makeatother. 
%$%  
%$%  Revision 1.4  88/10/20  11:58:38  cochran
%$%  Updated to allow the user more control over spacing to the "blue
%$%  lines," and to be in accordance with the USC Regulations for
%$%  Format and Presentation of Theses and Dissertations, published
%$%  March 1987.  
%$%  
%$%  Revision 1.3  88/03/16  10:49:19  cochran
%$%  Several small updates to \committee as suggested by peng@USC-IRIS.
%$%  
%$%  Revision 1.1  88/03/05  20:04:51  cochran
%$%  Set penalties, and new margin and page sizes.  Fixed bug which
%$%  caused a wrong contents page for long lists of figures or tables. 
%$%  
%$%  Revision 1.0  87/03/05  18:29:34  cochran
%$%  Created by combining the best (?) features of the dissertation
%$%  styles written by Herb Barad @ USC-SIPI and Howard Trickey @
%$%  Stanford University. 
%$%  
%$% NOTE:  This style assumes the existance of `geometry' package
%$%        in addition to the standard LaTeX `report' style.  
%%%
%%% Example:
%%%  
%%%    \documentclass[12pt,thesis]{OUPhDDissertation}
%%%    \begin{document}
%%%    \title{Thesis Title}
%%%    \majorfield{School of Computer Science}
%%%    \depositdate{2010}
%%%    \author{Full Name}
%%%    \memberone{Member One Name}
%%%    \membertwo{Member Two Name}
%%%    \memberthree{Member Three Name} % up to 6 members supported
%%%    \begin{preface}
%%%      \prefacesection{Dedication}
%%%        This dissertation is dedicated to . . .
%%%      \prefacesection{Acknowledgements}
%%%        I would like to thank . . .
%%%      \tableofcontents
%%%      \listoftables
%%%      \listoffigures
%%%      \prefacesection{Abstract}
%%%      \input{abstract}
%%%    \end{preface}
%%%    \chapter{Introduction}
%%%    \label{chap:intro}
%%%    \input{introduction}
%%%    . . .
%%%    \chapter{Conclusions}
%%%    \label{chap:conclusion}
%%%    \input{conclusion}
%%%    \references{amermeteorsoc}{bibliography}
%%%    \end{document}
%%%
%%% Documentation:
%%%
%%%  This style file modifies the standard report style to follow the
%%%  University of Oklahoma's Masters Thesis formatting guidelines 
%%%  as of July 2010. They can be found in:
%%%  http://gradweb.ou.edu/Current/Masters/ThesisPacket.doc
%%%
%%%  The following options are available for use in the \documentstyle
%%%  (other options also available as report.sty options or as
%%%  option.sty files). 
%%%
%%%     `10pt' (default) `11pt' or `12pt' base typesize.
%%%
%%%     `dissertation' (default), or `thesis' title page.
%%%
%%%     `final' (default) or `proposal' layout.
%%%
%%%     `copyright' (default) or `nocopyright' message on title page.
%%%       This affects the `final' layout only. 
%%%
%%%     `fussy' (default) or `sloppy' word spacing.  This affects the
%%%       alignment at the right margin.  Fussy will sometimes write
%%%       over the blue line but is very useful for finding problem
%%%       areas during the development of the thesis.  Sloppy will
%%%       insure that no line passes the right margin, but may need
%%%       to over stretch the line and thus generate an underfilled
%%%       hbox message.
%%%
%%%     `clref' (default) or `opref' to set the open or closed format
%%%       of the entries in the references section. 
%%%
%%%  The following may be set PRIOR to the \begin{document} in order
%%%  to make adjustments to fit the text in the "blue lines".
%%%
%%%     \pagetop{1.01 true in}    % 1 inch plus allowance
%%%     \pageleft{1.51 true in}   % 1.5 inches plus allowance
%%%     \pageheight{8.73 true in} % 9 inches minus allowance
%%%     \pagewidth{5.92 true in}  % 6 inches minus allowance
%%%     \pagemargin{2.0}          % Number of (unstretched) lines
%%%                               %   between text and page number  
%%%     \setstretch{1.3}          % Set the "double" spacing
%%%
%%%  These values vary according to the printer being used (even
%%%  different instances of the same brand will transfer the paper
%%%  just a little differently).  The best way to adjust them is to
%%%  run three or four pages of the "blue line" paper through the
%%%  printer that will be used.  Choose pages with full amount of
%%%  text.  Then adjust the \pageleft (and \pagewidth if necessary) by
%%%  the average amount necessary over the pages.  Next do the same
%%%  for \pagetop and \pageheight.  Leave enough allowance to allow
%%%  for the paper to shift a little, usually a little more in the
%%%  direction of travel.  Set the \pagemargin and \setstretch to
%%%  values that look good and will pass the reviewer.
%%%
%%%  The following commands control what goes on the title page.
%%%    
%%%     \title[volume]{thesis title}
%%%             - The thesis title is set using the \title command.
%%%               The optional volume parameter allows the
%%%               specification of the volume on the title page for
%%%               long papers which are divided.
%%%
%%%     \author{author's full name}
%%%             - Authors name.
%%%
%%%     \universityname{UNIVERSITY OF SOUTHERN CALIFORNIA}
%%%             - The university's name (the above is the default).
%%%
%%%     \schoolname{name of the school granting the degree}
%%%             - "GRADUATE SCHOOL" is the default.  Changing this
%%%               also has the effect of turning off the \majorfield
%%%               entry.  This affects the `final' layout only. 
%%%
%%%     \degrees{degree name}
%%%             - defaults to "Master of Science" or "Doctor of
%%%               Philosophy" depending on whether the `thesis' or
%%%               `dissertation' option is in effect.  This affects
%%%               the `final' layout only.
%%%
%%%     \majorfield{author's major}
%%%             - "Electrical Engineering" if omitted.  Changing the
%%%               \schoolname has the effect of turning off the
%%%               display of the major field.  If you specify this
%%%               command after changing the \schoolname, both will be
%%%               shown on the titlepage.  This affects the `final'
%%%               layout only.
%%%
%%%     \committee{name1\\* name2\\* name3}
%%%             - Currently this in only used on with the `proposal'
%%%               option, since the signature page MUST be the one
%%%               supplied by the University.  This affects the
%%%               `proposal' layout only.
%%%
%%%     \submitdate{month & year in which submitted to Graduate School} 
%%%             - current month & year if omitted.
%%%
%%%     \copyrightyear{year degree conferred (next year if submitted in Dec.)} 
%%%             - current year (or next year, in December) if omitted.
%%%               This affects only the `final' layout and only when
%%%               the `copyright' option is in effect. 
%%%
%%%  The PREFACE environment prints the titlepage and sets up the page
%%%  formatting for the preface pages.  To create a preface section
%%%  use the command:  
%%%
%%%     \prefacesection[optional TOC name]{name}
%%%    
%%%  To generate the Table of Contents, and the Lists of Tables and
%%%  Figures, use the commands: 
%%%
%%%     \tableofcontents[CONTENTS]
%%%     \listoftables*[LIST OF TABLES]
%%%     \listoffigures*[LIST OF FIGURES]
%%%
%%%  the bracketed names are used at the top of the sections and in
%%%  the Table of Contents for the tables and figures.  The optional
%%%  `*' in the latter commands suppresses their entry into the Table
%%%  of Contents.
%%%
%%%  When multiple volumes are present (as indicated by the use of the
%%%  optional argument of the \title command), the Table of Contents
%%%  may be augmented by specifying the name of the other parts of the
%%%  document with the command:
%%%
%%%     \addvolumecontents[toc]{volumename}
%%%
%%%  This command should be placed right after the \begin{document}
%%%  command to include prior volumes, and just before the
%%%  \end{document} command to include the contents of later volumes.
%%%  By default (if the optional [] section is ommited) it reads in
%%%  the volumename.toc file (if present).  Using [lof] or [lot] work
%%%  in the same way for the lists of figures and tables respectively.
%%%
%%%  To start the document at a page other than 1 (for later volumes)
%%%  you can use the command: 
%%%
%%%     \startingpagenumber{1}{1}
%%%
%%%  prior to the \begin{preface} command.  The first argument is the
%%%  page number of the titlepage and subsequent pages numbered with
%%%  roman numerals and the second is the number of the first page
%%%  after the preface section. The defaults are shown above. 
%%%
%%%  To include a reference section, use the following command:
%%%
%%%     \references*[Bibliography]{style}{bibfile(s)}
%%%
%%%  where the `*' is optional and indicates that you DO NOT want this
%%%  section to appear in the Table-of-Contents.  "Bibliography" is
%%%  the default name if the optional `[]' section of the command is
%%%  not specified (the USC Regulations suggest either `Reference
%%%  List' or `Bibliography').  Both of the remaining entries MUST be
%%%  specified.  {Style} is any of "plain", "unsrt", "alpha", "abbrv"
%%%  (or other *.bst format file).  The {bibfile(s)} are a list of one
%%%  or more *.bib filenames from which the references are to be taken. 
%%%
%%%  The `saying' environment is used to set a cutesy little quotation
%%%  at the start of the chapter, just after the chapter head.  To use:
%%%
%%%     \begin{saying}
%%%         If this exercise isn't just a joke, the title of \\
%%%         this appendix is a lie.
%%%     \end{saying}
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Imported/OUPhDDissertation}[1996/01/10 v3.0A 
  adapted from  USC Thesis and Dissertation Style]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\if@thesis
\DeclareOption{dissertation}{\@thesisfalse}
\DeclareOption{thesis}{\@thesistrue}

%\newif\if@dissertation
%\DeclareOption{dissertation}{\@dissertationtrue}
%\DeclareOption{thesis}{\@dissertationfalse}

\newif\if@proposal
\DeclareOption{final}{\@proposalfalse}
\DeclareOption{proposal}{\@proposaltrue}

\newif\if@copyright
\DeclareOption{nocopyright}{\@copyrightfalse}
\DeclareOption{copyright}{\@copyrighttrue}

\DeclareOption{fussy}{\fussy}
\DeclareOption{sloppy}{\sloppy}

\newif\if@openbib
\DeclareOption{clref}{\@openbibfalse}
\DeclareOption{opref}{\@openbibtrue}
\DeclareOption{openbib}{\@openbibtrue}

\newif\if@techreport
\DeclareOption{techreport}{\@techreporttrue}

\newcommand{\addreportoption}[1]{%
  \@ifundefined{@reportoptions}%
    {\edef\@reportoptions{#1}}%
    {\edef\@reportoptions{\@reportoptions,#1}}}

\DeclareOption{letterpaper}{\addreportoption{letterpaper}}
\DeclareOption{10pt}{\addreportoption{10pt}}
\DeclareOption{11pt}{\addreportoption{11pt}}
\DeclareOption{12pt}{\addreportoption{12pt}}
\DeclareOption{oneside}{\addreportoption{oneside}}
\DeclareOption{twoside}{\addreportoption{twoside}}
\DeclareOption{onecolumn}{\addreportoption{onecolumn}}
\DeclareOption{leqno}{\addreportoption{leqno}}
\DeclareOption{fleqn}{\addreportoption{fleqn}}
\DeclareOption{luluhardbackpaper}{\def\@luluhardbackpaper}

\DeclareOption*{\ClassWarning{OUPhDDissertation}{The option `\CurrentOption' not used}}

\ExecuteOptions{dissertation,final,nocopyright,fussy,clref}
\ProcessOptions

\@ifundefined{@reportoptions}%
  {\ClassWarning{OUPhDDissertation}{Nothing in report options}}%
  {\PassOptionsToClass{\@reportoptions}{report}}

\LoadClass{report}

% needed for margins, old method was being cantankerous
\RequirePackage{geometry}
\RequirePackage[compact]{titlesec}

% Brian uses method in 4.1 of book "Guide to LaTeX" to change spacing.  Note
% the "\small\normalsize" is a "trick" needed to trigger the change, except for
% that, it does nothing.
% Note the 1.3 is not the standard double space, but Grad College might accept it.
% The standard double space is 1.66, I believe.
\newcommand{\OUdoublespace}{\renewcommand{\baselinestretch}{1.3} \small\normalsize} %LMK 1.66
\newcommand{\mydoublespace}{\renewcommand{\baselinestretch}{1.66} \small\normalsize} %LMK 1.66
\newcommand{\OUsinglespace}{\renewcommand{\baselinestretch}{1.0} \small\normalsize}
\mydoublespace

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\newcommand{\pagetop}[1]{%
%  \global \topmargin #1
%  \global\advance \topmargin -1.0 true in}

%\newcommand{\pageleft}[2][0pt]{%
%  \if@twoside
%    \global \oddsidemargin #2
%    \global\advance \oddsidemargin -1.0 true in 
%    \global \evensidemargin #2
%    \global\advance \evensidemargin -1.5 true in 
%    \global\advance \evensidemargin #1
%    \flushbottom
%    \if@proposal\else\if@techreport\else
%       \typeout{Warning: Thesis/Dissertation should be
%                           printed on one side only.}
%    \fi\fi
%  \else
%    \global \oddsidemargin #2
%    \global\advance \oddsidemargin -1.0 true in 
%    \global \evensidemargin \oddsidemargin
%    \raggedbottom
%  \fi}

%\newdimen\footheight
%\newcommand{\pageheight}[2][\baselineskip]{%
%  \global \footheight #1%
%  \global \textheight #2%
%  \global\advance \textheight -\footheight}

%\newcommand{\pagewidth}[1]{\global \textwidth #1}
%\newcommand{\pagemargin}[1]{\global \footskip #1\baselineskip}

\brokenpenalty       10000
\clubpenalty         10000
\displaywidowpenalty 10000
\widowpenalty        10000
\lefthyphenmin           2
\righthyphenmin          3

\@addtoreset{equation}{chapter}
\headheight 0.0 true pt
\headsep    0.0 true pt
\topskip   10.0 true pt
\itemsep    0.0 true pt

%\pagetop{1.00 true in}
%\pageleft{1.51 true in}
%\pageheight{9.45 true in}
%\pagewidth{6.00 true in}
%\pagemargin{1.5}

% Setup the page using the geometry package
%\@if{@luluhardbackpaper}%
%	{\geometry{paperwidth=8.25in,paperheight=10.75in,left=1.37,right=0.87in,top=0.87in,bottom=0.87in}}%
%	{\geometry{left=1.5in,right=1in,top=1in,bottom=1in}}
%
\geometry{left=1.2in,right=1.2in,top=1.2in,bottom=1.2in}
\let\LARGE=\Large
\let\huge=\Large
\let\Huge=\Large

\def\ps@plain{%
    \def\@oddhead{}%
    \def\@oddfoot{\hfil\rm\thepage}%
    \def\@evenhead{}
    \let\@evenfoot\@oddfoot}%

\renewcommand{\title}[2][\@empty]{%
  \def\@volume{#1}%
  \def\@title{{\protect\uppercase{#2}}}%
  }


\newcommand{\thesisinput}[1]{%
  \if@filesw 
    \begingroup
      \let\thesisinput=\@gobble
      \@input{#1}%
    \endgroup
  \fi}

\newcommand{\addvolumecontents}[2][toc]{%
  \if@filesw 
    \begingroup
      \let\label\@gobble
      \let\index\@gobble
      \let\glossary\@gobble
      \def\protect##1{\string\string\string##1\string\space \space}%
      \edef\@tempa{%
        \immediate\write\@auxout{%
          \string\@writefile{#1}{\protect \thesisinput{#2.#1}}}}%
      \@tempa
      \if@nobreak
        \ifvmode
          \nobreak
        \fi
      \fi
    \endgroup
  \fi
  \relax}

\newcommand{\@startpageA}{1}
\newcommand{\@startpageB}{1}

\newcommand{\startingpagenumber}[2]{%
  \gdef\@startpageA{#1}%
  \gdef\@startpageB{#2}}

\newif\if@showmajorfield
\@showmajorfieldtrue

\newcommand{\universityname}[1]{%
  \gdef\@university{\uppercase{#1}}}
\newcommand{\@university}{UNIVERSITY OF OKLAHOMA}

\newcommand{\schoolname}[1]{%
  \gdef\@schoolname{#1}%
  \@showmajorfieldfalse}
\newcommand{\@schoolname}{GRADUATE COLLEGE}

\newcommand{\degrees}[1]{%
  \if@thesis 
    \gdef\@mastersdegree{#1}%
  \else 
    \gdef\@doctorsdegree{#1}}
\newcommand{\@mastersdegree}{MASTER OF SCIENCE} 
%in metr added LMK 9 May 2007
%in metr removed MJH 24 July 2024
\newcommand{\@doctorsdegree}{Doctor of Philosophy}

\newcommand{\majorfield}[1]{%
  \gdef\@majorfield{\uppercase{#1}}%
  \@showmajorfieldtrue}
\newcommand{\@majorfield}{}

\newcommand{\committee}[1]{\gdef\@committee{#1}}
\newcommand{\@committee}{}

\newcommand{\depositdate}[1]{\gdef\@depositdate{#1}}
\newcommand{\@depositdate}{}


% Committee members

\newcommand{\memberone}[1]{\def\@memberone{#1}}
\memberone{}
\newcommand{\membertwo}[1]{\gdef\@membertwo{#1}}
\membertwo{}
\newcommand{\memberthree}[1]{\gdef\@memberthree{#1}}
\memberthree{}
\newcommand{\memberfour}[1]{\gdef\@memberfour{#1}}
\memberfour{}
\newcommand{\memberfive}[1]{\gdef\@memberfive{#1}}
\memberfive{}
\newcommand{\membersix}[1]{\gdef\@membersix{#1}}
\membersix{}

\newcommand{\submitdate}[1]{\gdef\@submitdate{#1}}
\newcommand{\@submitdate}{%
  \ifcase \the\month
    \or January%
    \or February%
    \or March%
    \or April%
    \or May%
    \or June%
    \or July%
    \or August%
    \or September%
    \or October%
    \or November%
    \or December%
  \fi
  \space 
  \number \the\year}

\newcommand{\copyrightyear}[1]{\gdef\@copyrightyear{#1}}
\ifnum \month=12
  \@tempcnta=\year
  \advance\@tempcnta by 1
  \edef\@copyrightyear{\number \the\@tempcnta}
\else
  \def\@copyrightyear{\number \the\year}
\fi

\newenvironment{preface}%
  {\newpage
   \pagenumbering{roman}%
   \pagestyle{empty}%
   \OUdoublespace
     \if@proposal
       \setcounter{page}{1}%
       \addtocounter{page}{\@startpageA}%
     \else
       \maketitle
       \makesignature
       \makecopyright
       \setcounter{page}{3}%
       \addtocounter{page}{\@startpageA}%
     \fi
   \newpage
     \ifx\@volume\@empty\else
       \addtocontents{toc}{\protect\contentsline{part}{\@volume}{}}%
     \fi
   \pagestyle{plain}}
%
  {\newpage
   \pagenumbering{arabic}%
   \pagestyle{plain}%
   \setcounter{page}{\@startpageB}}
   
\newcommand{\makecopyright}{%
 \begin{titlepage}%   
    \begin{center}
    \ \\
    %changed 7.0 to 8.5 LMK 10 May 2007
    %changed 8.5 to 8.4 NPT 13 July 2010
    \vskip 8.0 true in 
    \OUsinglespace %added LMK 10 May 2007
    \copyright \ Copyright by \MakeUppercase{\@author} \@depositdate \\
    All Rights Reserved.
    \end{center}
  \end{titlepage}
  }
  
\newcommand{\makesignature}{%
  \begin{titlepage}%
  \OUsinglespace
    \null
    \vskip .7 true in%
    \begin{center}
      \@title %remains single space here (but double space on title page)
      \par
      \vskip 2em%
      \if@thesis
        {A THESIS APPROVED FOR THE}%
      \else
        {A DISSERTATION APPROVED FOR THE}%
      \fi\\*%
      { \@majorfield \par}%
	  \vskip 9em%
      {{BY THE COMMITTEE CONSISTING OF} \vskip 7em \par}
    \end{center}%
    
%%% NPT -- changed these to conditionals so there is no
%%% need to uncomment stuff with man authors
\ifx\@memberone\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill \@memberone
    \vskip .2in
\fi%

\ifx\@membertwo\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill \@membertwo 
    \vskip .2in
\fi%

\ifx\@memberthree\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill \@memberthree 
    \vskip .2in
\fi%

\ifx\@memberfour\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill\@memberfour 
    \vskip .2in
\fi%

\ifx\@memberfive\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill \@memberfive 
    \vskip .2in
\fi%

\ifx\@membersix\@empty
    \relax
\else
    \noindent
    %\hspace*{3in}\hrulefill
    \vskip .0in
    \hfill \@membersix 
\fi%

    \par
    \vfil
    \end{titlepage}}

\renewcommand{\maketitle}{%
 \begin{titlepage}%
\OUsinglespace
    \setcounter{page}{0}%
    \null
    %\vfill
    \begin{center}%
      UNIVERSITY OF OKLAHOMA\\*[0.1 true in]%
     GRADUATE COLLEGE\\*[0.1 true in]%
%  
      \vfill
      \vfill
%      
 	\mydoublespace %title is double space on title page only
      {\@title \par} %strict conformance to Grad College, April 19, 2007
 	
    \OUsinglespace
      \ifx\@volume\@empty\else
        \vskip 0.16 true in
        \@volume
      \fi
      \vskip 0.16 true in
      \vskip 1.0 true in
      \if@thesis
        A THESIS %
      \else
        A DISSERTATION%
      \fi\\*[0.1 true in]%
     SUBMITTED TO THE GRADUATE FACULTY\\*[0.1 true in]%
      in partial fulfillment of the requirements for the\\*[0.1 true in]%
      \if@thesis
     Degree of\\*[0.1 true in]% %little d 9 May 2007 LMK % not needed APB
        \@mastersdegree
      \else
     degree of\\*[0.1 true in]%
        \@doctorsdegree
      \fi\\*[0.1 true in]%
      \vfill
      \vfill
      \vfill
\OUsinglespace
      By\\
      \vskip 0.16 true in
      \MakeUppercase{\@author}\\
      Norman, Oklahoma\\
      {\reset@font\small \@depositdate \par}%
    \end{center}%
    \par
    \vfill
    \if@copyright
      \begin{center}%
        {\reset@font\normalsize\ Copyright~ \@copyrightyear\ ~\@author}%
      \end{center}%
    \fi
  \end{titlepage}
  }


  
\newdimen\prefacetopspace
\prefacetopspace=1.0 true in
\newlength{\mylength}
\setlength{\mylength}{\baselineskip}
\newcommand\prefacesection{\@dblarg{\@prefacesection}}

\def\@prefacesection[#1]#2{%
  \newpage
  \OUdoublespace %leave next line blank to avoid a bug!

  \pagestyle{plain}%
  \null
  \vskip\prefacetopspace
  \begin{flushleft}% %replaced center with flushleft LMK 10 May 2007
    \section*{#2}%
  \end{flushleft}%
  \addtocontents{toc}{\protect{}}
  \addcontentsline{toc}{chapter}{#1}
  }

\newcommand\prefacesectionX{\@dblarg{\@prefacesectionX}}
\def\@prefacesectionX[#1]#2{%
  \newpage
  \OUdoublespace %leave next line blank to avoid a bug!

  \pagestyle{empty}%
  \null
  \vskip\prefacetopspace
  \begin{flushleft}% %replaced center with flushleft LMK 10 May 2007
    \section*{#2}%
  \end{flushleft}%
}
%  \addcontentsline{toc}{chapter}{#1}}

\renewcommand{\tableofcontents}{%
    \OUsinglespace
    % \titlespacing{\chapter}{0pt}{-12pt}{-12pt}
    \@ifnextchar [%
        {\@starspeciallist{toc}}%
        {\@starspeciallist{toc}[Table of Contents]} 
}

\renewcommand{\listoftables}{%
\OUsinglespace
  \@ifstar
    {\@ifnextchar [%
       {\@starspeciallist{lot}}%
       {\@starspeciallist{lot}[List Of Tables]}}%
    {\@ifnextchar [%
       {\@speciallist{lot}}%
       {\@speciallist{lot}[List Of Tables]}}}

\renewcommand{\listoffigures}{%
\OUsinglespace
  \@ifstar
    {\@ifnextchar [%
       {\@starspeciallist{lof}}%
       {\@starspeciallist{lof}[List Of Figures]}}%
    {\@ifnextchar [%
       {\@speciallist{lof}}%
       {\@speciallist{lof}[List Of Figures]}}}

\def\@starspeciallist#1[#2]{%
  \newpage
  \@restonecolfalse
  \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \fi
  \chapter*{#2}%
  \@starttoc{#1}%
  \if@restonecol\twocolumn\fi}
  
\def\@speciallist#1[#2]{%
  \newpage
  \@restonecolfalse
  \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \fi  
  \chapter*{#2}%
  \addcontentsline{toc}{chapter}{#2}
  \@starttoc{#1}%
  \if@restonecol\twocolumn\fi}
  
\renewcommand{\@makechapterhead}[1]{%
  \vspace*{10pt}%
  {\parindent 0pt 
   \raggedright
   \hyphenpenalty 10000%
   \ifnum \c@secnumdepth > \m@ne
     \reset@font\Large\bfseries \@chapapp{} \thechapter\par
     \vskip 5pt
   \fi
   \reset@font\Large\bfseries #1\par
   \nobreak
   \vskip 40pt}
  \hyphenpenalty 50}

\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{10pt}%
  {\parindent 0pt 
   \raggedright
   \hyphenpenalty 10000%
   \reset@font\Large\bfseries #1\par
   \nobreak
   \vskip 10pt}
  \hyphenpenalty 50}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\section}%
             {\@startsection{section}%
             {1}%
             {\z@}%
             {-3.5ex plus -1ex minus -.2ex}%
             {2.3ex plus .2ex}%
             {\reset@font\Large\bfseries\hyphenpenalty 10000}}%

\renewcommand{\subsection}%
             {\@startsection{subsection}%
             {2}%
             {\z@}%
             {-3.5ex plus -1ex minus -.2ex}%
             {1.5ex plus .2ex}%
             {\reset@font\large\bfseries\hyphenpenalty 10000}}%

\renewcommand{\subsubsection}%
             {\@startsection{subsubsection}%
             {3}%
             {\z@}%
             {-3.5ex plus -1ex minus -.2ex}%
             {1.5ex plus .2ex}%
             {\reset@font\normalsize\bfseries\hyphenpenalty 10000}}%

\renewcommand{\paragraph}%
             {\@startsection{paragraph}%
             {4}%
             {\z@}%
             {3.25ex plus 1ex minus .2ex}%
             {-1em}%
             {\reset@font\normalsize\bfseries\hyphenpenalty 10000}}%

\renewcommand{\subparagraph}%
             {\@startsection{subparagraph}%
             {4}%
             {\parindent}%
             {3.25ex plus 1ex minus .2ex}%
             {-1em}%
             {\reset@font\normalsize\bfseries\hyphenpenalty 10000}}%

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\bibliographystyle}[1]{%
  \@latexerr{\string\bibliographystyle\space is undefined.
             Use \string\references{#1}{bibfile list}}\@eha}
\renewcommand{\bibliography}[1]{%
  \@latexerr{\string\bibliography\space is undefined.
             Use \string\references{bibstyle}{#1}}\@eha}

\newcommand{\references}{%
%  \renewcommand{\baselinestretch}{1.0} %Brian sets singlespace
% % Brian adds trick to activate above command, from Section 4.1 of "Guide to LaTeX",
% % change fontsize, and change it back to normal:
    \small\normalsize
    \@ifstar
        {\@referencesA}%
        {\@referencesB}}

\newcommand{\@referencesA}{%
  \@ifnextchar [%
    {\@referencesAA}%
    {\@referencesAA[Bibliography]}}%

\def\@referencesAA[#1]#2#3{
  \gdef\@referencesname{#1}
  \if@filesw
    \immediate\write\@auxout{\string\bibstyle{#2}}%
    \immediate\write\@auxout{\string\bibdata{#3}}%
  \fi
  \cleardoublepage
  \addcontentsline{toc}{chapter}{\@referencesname}
  \@input{\jobname.bbl}}

\newcommand{\@referencesB}{%
  \@ifnextchar [
    {\@referencesBB}
    {\@referencesBB[Bibliography]}}

\def\@referencesBB[#1]#2#3{%
    \gdef\@referencesname{#1}    
    \cleardoublepage
    \if@filesw
        \immediate\write\@auxout{\string\bibstyle{#2}}%
        \immediate\write\@auxout{\string\bibdata{#3}}%
    \fi
    \renewcommand\bibname{\@referencesname} % NPT - change the name of the section to match TOC    

    % this is a horrendous hack to get the page numbering correct
    \newcounter{refpagenum}
    \setcounter{refpagenum}{\value{page}}
    \addtocounter{refpagenum}{1}
    \addtocontents{toc}{
        \protect\contentsline{chapter}{\@referencesname\protect\numberline}{\therefpagenum}
    }
    \@input{\jobname.bbl}  
}

\newcommand{\@referencesname}{Bibliography}

%
{\let\endthebibliography=\endlist}

\renewcommand{\appendix}{%
    \par
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \refstepcounter{chapter}
    %\renewcommand*\thesection{\arabic{section}}
    \def\thesection{\arabic{section}}
    \def\thechapter{\Alph{chapter}}
    \addtocontents{toc}{\protect\baselineskip}
    \addcontentsline{toc}{chapter}{Appendix}
    \def\@seccntformat##1{\csname the##1\endcsname\quad}
    % 
    % Redefine what happens at a chapter
%    \def\@chapter*[##1]##2{
%        \refstepcounter{chapter}
%        \typeout{\@chapapp\space\thechapter.}
%        \addtocontents{toc}{
%            \protect\contentsline{chapter}{Appendix \thechapter}{\relax}
%            }
%        \addcontentsline{toc}{section}{##1}
%        \chaptermark{##1}
%        \addtocontents{lof}{\protect\addvspace{10pt}}% Adds between-chapter space
%       \addtocontents{lot}{\protect\addvspace{10pt}}% to lists of figs & tables.
%        \@makechapterhead{##2}
%       \@afterheading
%    }
  }
    

\newenvironment{saying}%
  {\trivlist
   \raggedleft
   \item[]\em}%
%
  {\endtrivlist
   \vspace{20pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{plain}

\if@techreport
  \input{techreport.sty}
\fi
\endinput
%% 
%% End of file `USCthesis.cls'