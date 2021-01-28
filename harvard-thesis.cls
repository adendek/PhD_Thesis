% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "harvard-thesis.cls",
%     version         = "0.4",
%     date            = "4 April 2012",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, harvard-thesis",
%     supported       = "send email to suchow@fas.harvard.edu",
%     docstring       = "A thesis class for a Harvard dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{harvard-thesis}[2012/04/05 v0.4 Harvard University Thesis Class]
\LoadClass[12pt, a4paper, openany]{book}

\setcounter{secnumdepth}{4}

% Required packages
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=Crimson,
    filecolor=black,
    linkcolor=black,
    urlcolor=Crimson,
}

\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{upgreek}
\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage{dsfont}
% colors
\RequirePackage{color}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}

\RequirePackage{url}
\RequirePackage[titles]{tocloft}
%\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}

\RequirePackage{pdfsync} %do pdf synchronization [andy]

\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\usepackage{subfig}
\RequirePackage{afterpage} 
\RequirePackage{array, longtable}
\RequirePackage[export]{adjustbox}
\RequirePackage{etoolbox}
\newcolumntype{R}[1]{>{\RaggedRight}p{#1}}
\RequirePackage{multicol}
\RequirePackage{wrapfig}
\RequirePackage{listings}
\RequirePackage{subfig}



 


\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

\RequirePackage{lettrine} % big letter at start of chapter
\RequirePackage[lmargin=3.5cm, rmargin=1.5cm, height=10.0in, a4paper]{geometry}

\RequirePackage{fancyhdr} 
\pagestyle{fancy} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0.6,0,0}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{ragged2e}
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}

\onehalfspacing
%\raggedright

\parindent 12pt
\RequirePackage{mathspec}

% use Arno Pro instead of standard LaTeX fonts
\setmathsfont(Digits,Latin,Greek)[
Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic,
Numbers={Proportional}]{ArnoPro}
\setmathrm
[Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro}

\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
\setromanfont
[Path = fonts/,
Extension = .otf,
Mapping=tex-text, 
%Numbers=OldStyle, 
Ligatures={Common}, 
SizeFeatures={%
	{Size={-10}, Font=*-RegularCaption},
	{Size={10-13.0}, Font=*},
	{Size={13.01-19.9}, Font=*-RegularSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
	{Size={19.91-},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro} %
			
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}


\renewcommand{\maketitle}{
\newgeometry{hmargin={2cm, 2cm}, height=10.0in}     % use whatever margins you want for left, right, top and bottom.

\thispagestyle{empty}
%% ------------------------ NAGLOWEK STRONY ---------------------------------
\includegraphics[height=37.5mm]{figures/agh_nzw_a_en_1w_wbr_rgb_150ppi.jpg}\\
\rule{23.3mm}{0pt}
{\large \bf \sf Faculty of Physics and Applied Computer Science}\\
\rule{\textwidth}{3pt}\\
\rule[2ex]
{\textwidth}{1pt}\\
\vspace{7ex}
\begin{center}
	{\LARGE \bf Doctoral thesis}\\
	\vspace{13ex}
	% --------------------------- IMIE I NAZWISKO -------------------------------
	{\bf \Large Adam Dendek}\\
	\vspace{3ex}
	{\small \mbox{}}\\
	\vspace{1.5ex}
	{\small \mbox{}}\\
	%\vspace{10ex}
	%% ------------------------ TYTUL PRACY --------------------------------------
	{\bf \LARGE Machine learning based long-lived particle reconstruction algorithm for Run 2 and upgrade LHCb trigger}\\
	\vspace{6pt}
	{\bf \LARGE and a flexible software platform for the UT detector read-out chip emulation}\\
	\vspace{6pt}
\end{center}
\vspace{14ex}
%% ------------------------ PROMOTOR PRACY ------------------------------------
{\centering
	\begin{tabbing}
		{\large Supervisor: }{\large\bf dr hab. inż. Tomasz Szumlak}\\[2pt]
	\end{tabbing}
}

\begin{center}
	
	\vspace*{12ex} {\sf \large \bf Cracow, January 2021}
\end{center}
%% =====  STRONA TYTULOWA PRACY doktorskiej====
\afterpage{\blankpage}
\newpage
\thispagestyle{empty}
\newpage

%% =====  TYL STRONY TYTULOWEJ PRACY DOKTORSKIEJ====
\thispagestyle{empty}

\vspace*{4ex}\noindent {\textbf{Declaration of the author of this dissertation:}}\\[2pt]
Aware of legal responsibility for making untrue statements I
hereby declare that I have written this dissertation myself and
all the contents of the dissertation
have been obtained by legal means.\\[8pt]

\vspace*{4ex}



\noindent {\textbf{Declaration of the  thesis
		Supervisor:}}\\[2pt]
This dissertation is ready to be reviewed.
\\[8pt]
\newpage 
\thispagestyle{empty}
\ % The empty page

\newpage
\restoregeometry
}

% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.

\newcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\sc \noindent \copyright~\textit{\@degreeyear \hspace{3pt}~- \theauthor} \\
	\noindent All rights reserved.
	\vspace*{\fill} \newpage \rm
}

\newcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{6}
	\pagestyle{fancy}
	\lhead{Thesis advisor: \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt} 
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{Crimson}{\textit{Machine learning based long-lived particle reconstruction algorithm for Run 2 and upgrade LHCb trigger and a flexible software platform for the UT detector read-out chip emulation }} \normalsize\\
	\vspace*{15pt}
	\sc Streszczenie \\ \rm
	\end{center}
	\doublespace %Harvard registrar requests that abstract is double spaced
	\input{frontmatter/abstract}
	\doublespace %Harvard registrar requests that abstract is double spaced	
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\onehalfspacing
}

\newcommand{\dedicationpage}{
	\pagenumbering{roman}
	\setcounter{page}{5}
	\pagestyle{fancy}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\sc \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	}

% the list of authors
\newcommand{\authorlist}{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\chapter*{Author's Contribution}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
	}

% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}


% code snippet 

\usepackage{listings}
\usepackage{xcolor}
 
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
 
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
 
\lstset{style=mystyle}

% algorithm 
\newcounter{nalg}[chapter] % defines algorithm counter for chapter-level
\renewcommand{\thenalg}{\thechapter .\arabic{nalg}} %defines appearance of the algorithm counter
\DeclareCaptionLabelFormat{algocaption}{Algorithm \thenalg} % defines a new caption label as Algorithm x.y

\lstnewenvironment{algorithm}[1][] %defines the algorithm listing environment
{   
    \refstepcounter{nalg} %increments algorithm number
    \captionsetup{labelformat=algocaption,labelsep=colon} %defines the caption setup for: it ises label format as the declared caption label above and makes label and caption text to be separated by a ':'
    \lstset{ %this is the stype
        mathescape=true,
        frame=tB,
        numbers=left, 
        numberstyle=\tiny,
        basicstyle=\scriptsize, 
        keywordstyle=\color{black}\bfseries\em,
        keywords={,input, output, return, datatype, function, in, if, else, foreach, while, begin, end, for, 
        Data, Result, 
        } %add the keywords you want, or load a language as Rubens explains in his comment above.
        numbers=left,
        xleftmargin=.04\textwidth,
        #1 % this is to add specific settings to an usage of this environment (for instnce, the caption and referable label)
    }
}
{}

\usepackage{mathtools}
\DeclarePairedDelimiter\bra{\langle}{\rvert}
\DeclarePairedDelimiter\ket{\lvert}{\rangle}
\DeclarePairedDelimiterX\braket[2]{\langle}{\rangle}{#1 \delimsize\vert #2}

\usepackage{subcaption}
\captionsetup{compatibility=false}

\usepackage{multirow}

