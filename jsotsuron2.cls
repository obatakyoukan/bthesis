% -------------------------------------------------
% jmaster.cls
% -------------------------------------------------
% 1999/02/18 Ver.1.00 : $B$H$j$"$($:40@.(B
% -------------------------------------------------
% $B:n@.<T(B: K.Honda
% -------------------------------------------------
% $B;HMQJ}K!(B
%
% jmaster.cls$B$r(BTeXInputs$B$KCV$$$F!"(B
% $B%/%i%9;XDj$r0J2<$N$h$&$K$7$F2<$5$$!#(B
%
%	\documentclass[12pt]{jmaster}
%
%
% -------------------------------------------------
\ProvidesClass{jsotsuron}[2006/02/01]	%% class name: jmaster
\LoadClassWithOptions{jreport}		%% jreport$B$r%Y!<%9$K$9$k!#(B

% -------------------------------------------------
%  double space setting
% -------------------------------------------------
\def\baselinestretch{1.5}

% -------------------------------------------------
%  title page setting
% -------------------------------------------------
\renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
%  \vskip 2cm
  \begin{center}%
    {\Large \bf \@title \par}%
    %\vskip 4.5cm% not use english name
    \vskip 3.9cm% use english name
    {\Large \bf \@author \par}%
    %\vskip 6cm% not use english name
    \vskip 5.4cm% use english name
    {\Large \bf \@date \par}%
    \vskip 4cm%
  {\Large \bf 
  \baselineskip 14pt
  \parskip 6pt
  \parsep 0pt
  北海道大学工学部 情報エレクトロニクス学科\par
  情報理工学コース\par 
  情報知識ネットワーク研究室\par
  }%
  %  {\Large \bf $B6e=#Bg3XM}3XItJ*M}3X2J(B \par
  % 		$B>pJsM}3X%3!<%9(B \par}%
  %  {\Large \bf $B6e=#Bg3XBg3X1!%7%9%F%`>pJs2J3X8&5f2J(B \par
  %		$B>pJsM}3X@l96!!=$;N2]Dx(B \par}%
  \end{center}\par
  \end{titlepage}%
  \setcounter{page}{0}
  \setcounter{footnote}{0}%
  \let\thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@title\@empty
  \global\let\maketitle\relax
}

% -------------------------------------------------
%  abstract page setting
% -------------------------------------------------
\def\abstract{\titlepage
  \setcounter{page}{0}
  \null\vfil
  \hfil{\large\bf \abstractname\par} %% added by arim on 01FEB06
  \medskip
  \noindent 
}
\def\endabstract{\par\vfil\null\endtitlepage}

% -------------------------------------------------
%  pagestyle setting
% -------------------------------------------------
\topmargin -0.35in
\textwidth 6.25in
\textheight 9.6in
\oddsidemargin 0.14in
\evensidemargin -0.22in
\pagestyle{myheadings}

% -------------------------------------------------
%  bibliography heading setting
% -------------------------------------------------
\def\thebibliography#1{%
  \chapter*{\refname\@mkboth{\refname}{\refname}}%
  \list{[\arabic{enumi}]}{%
    \settowidth\labelwidth{[#1]}%
    \leftmargin\labelwidth%
    \advance\leftmargin\labelsep%
    \usecounter{enumi}%
  }%
  \addcontentsline{toc}{chapter}{\refname}%
  \def\newblock{\hskip .11em plus .33em minus .07em}%
  \sloppy\clubpenalty4000\widowpenalty4000%
  \sfcode`\.=1000\relax%
}

% -------------------------------------------------
%  no numbers set on section/subsection/subsubsection
% -------------------------------------------------
\renewcommand{\thepart		}{\Roman{part}}
\renewcommand{\thechapter	}{\arabic{chapter}}
\renewcommand{\thesection	}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection	}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection	}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph	}{\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph	}{\theparagraph.\arabic{subparagraph}}

\renewcommand{\chapter}{%	$B>O$N3+;O%Z!<%8$N%9%?%$%kJQ99(B
  \clearpage%
  \thispagestyle{myheadings}%
  \global\@topnum\z@%
  \@afterindentfalse%
  \secdef\@chapter\@schapter%
}
\renewcommand{\@makechapterhead}[1]{%	$B8+=P$7$NJQ99(B(\chapter)
  \vspace*{30pt}{%
    \parindent 0pt \raggedright%
    \ifnum%
      \c@secnumdepth >\m@ne \LARGE\bf \@chapapp{\thechapter}$B>O(B \par%
      \vskip 20pt%
    \fi%
    \LARGE\bf #1\par%
    \nobreak \vskip 40pt%
  }%
}
\renewcommand{\@makeschapterhead}[1]{%	$B8+=P$7$NJQ99(B(\chapter*)
  \vspace*{20pt}{%
    \parindent 0pt \raggedright%
    \LARGE \bf #1\par%
    \nobreak \vskip 40pt%
  }%
}
\renewcommand{\section}{%	$B8+=P$7$NJQ99(B
  \@startsection{section}{1}{\z@}%
  {3.5ex plus 1ex minus .2ex}%	$BA0$N6u$-(B
  {2.3ex plus .2ex}%		$B8e$m$N6u$-(B
  {\large\bf}%			$B=q<0(B
}
\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{\z@}%
  {3.25ex plus 1ex minus .2ex}%
  {1.5ex plus .2ex}%
  {\normalsize\bf}%
}
\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{\z@}%
  {3.25ex plus 1ex minus .2ex}%
  {1.5ex plus .2ex}%
  {\normalsize\bf}%
}

% -------------------------------------------------
%  $B:w0z%Z!<%8$N;XDj(B
% -------------------------------------------------
\renewenvironment{theindex}
  {\if@twocolumn\@restonecolfalse\else\@restonecoltrue\fi
   \columnseprule\z@ \columnsep 35\p@
   \twocolumn[\@makeschapterhead{\indexname}]%
   \@mkboth{\indexname}{\indexname}%
%% \thispagestyle{jpl@in}\parindent\z@	%%	<- jreport.cls
   \thispagestyle{myheadings}\parindent\z@%	<- $BJQ99(B
   \parskip\z@ \@plus .3\p@\relax
   \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}

% -------------------------------------------------
%  
% -------------------------------------------------
\def\abstractname{$BMW(B $B;](B}
\def\tablename{$BI=(B }
\def\figurename{$B?^(B }
\def\indexname{$B:w0z(B}
\def\refname{$B;29MJ88%(B} 
\def\listtablename{$BI=0lMw(B}
\def\listfigurename{$B?^0lMw(B}
\def\contentsname{$BL\<!(B}
%\def\@chapapp#1{$BBh(B \lower0.1ex\hbox{#1} $B>O(B}
%\def\@partapp#1{$BBh(B #1 $BIt(B}

% ----------------------------------------------- end of jmaster.cls

