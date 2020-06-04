%%
%% This is file `it-olz.cls',
%%
%% This file belongs to the it - Informaion Technology magazine from the 
%% de Gruyter Oldenbourg Publisher, Germany
%%
%% ----------------------------------------------------------
%% 
%% This file is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%% 
%% 
%% IMPORTANT NOTICE:
%% 
%% 
%% You are not allowed to change this file.
%% 
%% You are allowed to distribute this file under the condition that
%% it is distributed together with teh proper docu
%% 
%% 
%% You are NOT ALLOWED to distribute this file alone.  You are NOT
%% ALLOWED to take money for the distribution or use of either this
%% file or a changed version, except for a nominal charge for copying
%% etc.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{at-olz}%
              [2000/02/11
        LaTeX document class for the at magazine from oldenbourg]
%-----------------------------------------------------------------------
\typeout{babel calls german and englisch in  at-cls}
\RequirePackage[german,english]{babel} 
%-----------------------------------------------------------------------

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\ifbelichtung
\belichtungfalse
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@oldtoc
\@oldtocfalse
\newif\if@allcaps
\newif\if@revlabel
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
% Only for the publisher. The option 'belichtung' invokes 
% postscript and pstricks!!!
\DeclareOption{belichtung}{\belichtungtrue\input pstricks}


%
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{oldtoc}{\@oldtoctrue}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{openbib}{%
 \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
     \advance\leftmargin\bibindent
     \itemindent -\bibindent
     \listparindent \itemindent
     \parsep \z@
     }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{twocolumn,twoside,final,openany}
\ProcessOptions
\input{olz.clo}
\input{epsf}

\ifbelichtung
\DeclareFixedFont{\KapitelFont}{T1}{bfr}{ebc}{n}{26}
\DeclareFixedFont{\TitelEnglischFont}{T1}{bfr}{ebc}{n}{13}
\DeclareFixedFont{\WidmungFont}{T1}{bfr}{mc}{it}{10.5}
\DeclareFixedFont{\AutorenFont}{T1}{bfr}{mc}{n}{11}
\DeclareFixedFont{\VorspannFont}{T1}{bfr}{mc}{n}{10.5}
\DeclareFixedFont{\StichwortSpitzmarkeFont}{T1}{bfr}{ebc}{n}{10.5}
\DeclareFixedFont{\TitelErsteOrdnungFont}{T1}{bfr}{ebc}{n}{13}
\DeclareFixedFont{\TitelZweiteOrdnungFont}{T1}{bfr}{ebc}{n}{11}
\DeclareFixedFont{\TitelDritteOrdnungFont}{T1}{bfr}{mc}{n}{11}
\DeclareFixedFont{\TitelVierteOrdnungFont}{T1}{bfr}{m}{it}{11}
\DeclareFixedFont{\LitHeaderFont}{T1}{bfr}{ebc}{n}{9.5}
\DeclareFixedFont{\BildUnterschriftFont}{T1}{bfr}{mc}{n}{9}
\DeclareFixedFont{\BildSpitzmarkeFont}{T1}{bfr}{ebc}{n}{9}
\DeclareFixedFont{\KolumnenAussenFont}{T1}{bfr}{mc}{n}{10.5}
\DeclareFixedFont{\KolumnenCenterFont}{T1}{bfr}{mc}{n}{13}
\else
\DeclareFixedFont{\KapitelFont}{OT1}{cmr}{b}{n}{24.88}
\DeclareFixedFont{\TitelEnglischFont}{OT1}{cmr}{bx}{n}{12}
\DeclareFixedFont{\WidmungFont}{OT1}{cmr}{m}{it}{11}
\DeclareFixedFont{\AutorenFont}{OT1}{cmr}{m}{n}{11}
\DeclareFixedFont{\VorspannFont}{OT1}{cmr}{m}{n}{9}
\DeclareFixedFont{\StichwortSpitzmarkeFont}{OT1}{cmr}{b}{n}{10}
\DeclareFixedFont{\TitelErsteOrdnungFont}{OT1}{cmr}{m}{n}{12}
\DeclareFixedFont{\TitelZweiteOrdnungFont}{OT1}{cmr}{m}{n}{11}
\DeclareFixedFont{\TitelDritteOrdnungFont}{OT1}{cmr}{m}{n}{11}
\DeclareFixedFont{\TitelVierteOrdnungFont}{OT1}{cmr}{m}{it}{11}
\DeclareFixedFont{\LitHeaderFont}{OT1}{cmr}{b}{n}{9}
\DeclareFixedFont{\BildUnterschriftFont}{OT1}{cmr}{m}{n}{9}
\DeclareFixedFont{\BildSpitzmarkeFont}{OT1}{cmr}{b}{n}{9}
\DeclareFixedFont{\KolumnenAussenFont}{OT1}{cmr}{m}{n}{10}
\DeclareFixedFont{\KolumnenCenterFont}{OT1}{cmr}{m}{n}{12}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% declaration of new commands (mostly used in elemente.tex)
% in some cases of a missing entry a message will be shown
%
% var-commands will be used when special typesetting is needed
% idea: if var... not empty, then var... else ... fi
% this way we can keep the original commands without any typesetting 
% specialities, using them e.g. for full text searching
% 
\newcommand{\varTitelenglisch}{}
\newcommand{\varTitel}{}
\newcommand{\varkurztitel}{}
\newcommand{\varsachgebiet}{}
\newcommand{\varverfasser}{}
\newcommand{\varwidmung}{}
%
% normal commands to fill in %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcommand{\journal}{it}
\newcommand{\TitleEnglish}{Title of the contribution is missing!!!}
\newcommand{\Shorttitle}{}
\newcommand{\ACMCCS}{Please classify your contribution using ACM Computing Classification System 
  (e.\,g.\ Applied computing $\rightarrow$ Life and medical sciences $\rightarrow$ Computational biology; 
  Information systems $\rightarrow$ Information retrieval}
\newcommand{\Keywords}{}
\newcommand{\Schlagwoerter}{}
\newcommand{\Sachgebiet}{\KolumnenCenterFont\raisebox{-3pt}[0pt][0pt]{\MakeUppercase{\ACMCCS}}}
\newcommand{\Titelenglisch}{}
\newcommand{\Authors}{The author or the authors are entered by the command $\backslash$Autors\{...\}!}
\newif\ifwidmung
\newcommand{\Dedication}{}
\newcommand{\TestText}{}
%\newcommand{\Testat}{at} %Automatisierungstechnik
%\newcommand{\Testta}{tm} %Technisches Messen
\newcommand{\Testit}{it}
\newcommand{\Abstract}{}
\newcommand{\kurzfassungenglisch}{Text} % wird in it nicht benötigt

\newcommand{\authoronetitle}{Academic title of the first author is missing!}
\newcommand{\authortwotitle}{\relax}
\newcommand{\authorthreetitle}{\relax}
\newcommand{\authorfourtitle}{\relax}
\newcommand{\authorfivetitle}{\relax}
\newcommand{\authorsixtitle}{\relax}
%
\newcommand{\authoronename}{Name of the first author is missing!}
\newcommand{\authortwoname}{}
\newcommand{\authorthreename}{}
\newcommand{\authorfourname}{}
\newcommand{\authorfivename}{}
\newcommand{\authorsixname}{}
%
\newcommand{\authoronecv}{Short bio of the first author is missing!}
\newcommand{\authortwocv}{\relax}
\newcommand{\authorthreecv}{\relax}
\newcommand{\authorfourcv}{\relax}
\newcommand{\authorfivecv}{\relax}
\newcommand{\authorsixcv}{\relax}
%
\newcommand{\authoroneaddress}{Affiliation and address of the first author is missing!}
\newcommand{\authortwoaddress}{\relax}
\newcommand{\authorthreeaddress}{\relax}
\newcommand{\authorfouraddress}{\relax}
\newcommand{\authorfiveaddress}{\relax}
\newcommand{\authorsixaddress}{\relax}
%
\newcommand{\Acknowledgement}{}
\newcommand{\Submissiondate}{\today}
\newcommand{\Issue}{0/00}
%
\newcommand{\authorone}{\noindent\textbf{\ifx\authoronetitle\TestText\else\authoronetitle{} \fi\authoronename}\ \authoronecv\\[+3pt]
Address: \authoroneaddress}
\newcommand{\authortwo}{\noindent\textbf{\ifx\authortwotitle\TestText
\relax\else\authortwotitle{} \fi\authortwoname}\ \authortwocv\\[+3pt]
Address: \authortwoaddress}
\newcommand{\authorthree}{\noindent\textbf{\ifx\authorthreetitle\TestText
\relax\else\authorthreetitle{} \fi\authorthreename}\ \authorthreecv\\[+3pt]
Address: \authorthreeaddress}
\newcommand{\authorfour}{\noindent\textbf{\ifx\authorfourtitle\TestText
\relax\else\authorfourtitle{} \fi\authorfourname}\ \authorfourcv\\[+3pt]
Address: \authorfouraddress}
\newcommand{\authorfive}{\noindent\textbf{\ifx\authorfivetitle\TestText
\relax\else\authorfivetitle{} \fi\authorfivename}\ \authorfivecv\\[+3pt]
Address: \authorfiveaddress}
\newcommand{\authorsix}{\noindent\textbf{\ifx\autorsixtitle\TestText
\relax\else\authorsixtitle{} \fi\authorsixname}\ \authorsixcv\\[+3pt]
Address: \authorsixaddress}


\newskip\AfterChapterskip
\AfterChapterskip=10mm plus 5mm minus 1mm
\typeout{Distance between headings and text is AfterChapterskip = \the\AfterChapterskip}
\newskip\abstractskip
\abstractskip=26dd plus 27.5dd minus 6.5dd 
\newdimen\mathindent
\mathindent5mm


\emergencystretch=10pt


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\newdimen\unitindent
%{\setbox0\hbox{\normalsize\rmfamily 2.2.2\hskip.5em}
% \global\unitindent=\wd0}
\global\unitindent=9mm
\newdimen\othermargin
{\setbox0\hbox{\normalsize (m)\hskip.6em}\global\othermargin=\wd0}
\newif\if@needwriteindent
\newcommand*\@indentset{%
                \global\parindent=0pt
                \global\leftmargini=\unitindent
                \global\@needwriteindentfalse}
\newcommand*\@writeindent[1]{\immediate\write\@mainaux
   {\string\@ifundefined{unitindent}{\string\newdimen\string\unitindent
                                     \let\string\@indentset\relax}{}}
    \immediate\write\@mainaux{\global\string\unitindent=#1\string\relax
                              \string\@indentset \string\relax}}
\AtEndDocument{%
    \if@filesw
      \if@needwriteindent
        \@writeindent{\the\unitindent}
      \fi
    \fi}
\setlength\parskip{1.025mm plus 2pt minus0pt}  %plus wert eingetragen!
\setlength\parindent{0mm}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\let\Thispagestyle\thispagestyle
\newcommand*\@emptypagestyle{empty}
\renewcommand*\pagestyle[1]{\@nameuse{ps@#1}\def\@currentpagestyle{#1}}
\renewcommand*\thispagestyle[1]{%
  \ifx\@currentpagestyle\@emptypagestyle
  \else
    \global\@specialpagetrue
    \gdef\@specialstyle{#1}%
  \fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*\ps@plain{%
    \let\@oddhead\@empty\let\@evenhead\@empty
    \def\@oddfoot{\hfil\PageFont\thepage}%
    \if@twoside
      \def\@evenfoot{\PageFont\thepage\hfil}%
    \else
      \let\@evenfoot\@oddfoot
    \fi
    \let\@mkboth\@gobbletwo}
\if@twoside
    \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{{\PageFont\thepage}\hfil\MarkFont\leftmark}%
      \def\@oddhead{{\MarkFont\rightmark}\hfil\PageFont\thepage}%
      \let\@mkboth\markboth
      \def\chaptermark##1{%
        \markboth {\MakeUppercase{\ifnum \c@secnumdepth >\m@ne
              \@chapapp\ \thechapter. \ %
            \fi
            ##1}}{}}%
      \def\sectionmark##1{%
        \markright {\MakeUppercase{\ifnum \c@secnumdepth >\z@
            \thesection. \ \fi
            ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\MarkFont\rightmark}\hfil\PageFont\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
              \@chapapp\ \thechapter. \ %
          \fi
          ##1}}}}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%producing of the copyright info
%works at the end of the seculum too!
%
\newcounter{Jahrgang}
\newcommand{\NamensErweiterung}{}

%
\gdef\ausgabedaten#1/#2#3{\gdef\NummerDerAusgabe{\small\string #1}\gdef\JahrDerAusgabe{\small\string#2#3}%
\setcounter{Jahrgang}{#2#3}\addtocounter{Jahrgang}{-58}\ifnum\theJahrgang>0\gdef\seculo{19}\else\addtocounter{Jahrgang}{100}\gdef\seculo{20}\fi}

%this is the special variety for head- und footline for the final printout 
%
\def\ps@varplain{%
\setlength\topskip{1pt}
%
% this will produce the copyright entry on the first page of the article
% changed 2.9.98, copyright raisebox{10pt} now raisebox{11.8pt} 
%
\def\@oddfoot{\ifx\Issue\TestText \renewcommand{\Issue}{0/00}\fi\expandafter\ausgabedaten\Issue
\ifx\journal\Testit\relax\else\hfill\fi\raisebox{10pt}{\leavevmode\small\textbf{\journal\NamensErweiterung \typeout{\NamensErweiterung}} --
%
\ifx\journal\Testat %Abfrage, welche Zeitschrift
Automatisierungstechnik\fi
\ifx\journal\Testtm Technisches Messen\fi
\ifx\journal\Testit Information Technology\renewcommand{\ACMCCS}{\relax}\fi\
%
  \theJahrgang{}\enspace (\seculo\JahrDerAusgabe)\enspace \NummerDerAusgabe\ \enspace \copyright\enspace
  de Gruyter Oldenbourg}\ifx\journal\Testit\hfill\else\relax\fi\quad\PageFont\raisebox{10pt}{\thepage}}%
    \if@twoside
      \def\@evenfoot{\ifx\Issue\TestText \renewcommand{\Issue}{0/00}\fi\PageFont\raisebox{10pt}{\thepage}\hfill\quad \expandafter\ausgabedaten\Issue
\raisebox{10pt}{\leavevmode\small\textbf{\journal\NamensErweiterung\typeout{\NamensErweiterung}} -- 
% 
\ifx\journal\Testat %Abfrage, welche Zeitschrift
Automatisierungstechnik\fi
\ifx\journal\Testtm 
Technisches Messen\fi
\ifx\journal\Testit 
Information Technology\fi\
%
  \theJahrgang{}\enspace (\seculo\JahrDerAusgabe)\enspace \NummerDerAusgabe\enspace \copyright\enspace  de Gruyter Oldenbourg}}%
    \else
      \let\@evenfoot\@oddfoot
    \fi
    \def\@evenhead{%
\ifbelichtung
\newgray{ortex-gray}{.8}
%pstricks needed because of gray and white
    \psset{unit=1mm,labelsep=0pt}%
    \pspicture(0,0)(178,0)
    \psframe[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](0,-3)(178,4)
    \setbox0\hbox{\KolumnenAussenFont{\journal\NamensErweiterung} 0/00\enskip}%
%    \rput[l](2,.5){\KolumnenAussenFont{\journal\NamensErweiterung} 
    \rput[l](2,0){\KolumnenAussenFont{\journal\NamensErweiterung} 
        \ifx\ausgabe\TestText  %also keine Angaben
        0/00\else\Issue\fi}%
\rput(2,0){\rput(\wd0,0){%  
        \pscircle[linestyle=none,fillstyle=solid,fillcolor=white](3,.445){3}
    
     \pscircle[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](3,.445){1.5}}}
%        \rput(89,-.25){\ifx\ACMCCS\TestText
\rput(89,0){\ifx\ACMCCS\TestText\ifx\journal\Testit{}\else
        \textbf{noch nicht eingetragen}\fi\else{\black\ACMCCS}\fi}
    \endpspicture
\else
    \hbox to 176mm{\hspace{2mm}\KolumnenAussenFont{\journal\NamensErweiterung}\ 
        \ifx\Issue\TestText %also keine Angaben
        0/00
        \else
        \Issue
        \fi\hfill}
\fi}%
    \def\@oddhead{%
\ifbelichtung
\newgray{ortex-gray}{.8}
%pstricks needed because of gray and white
    \psset{unit=1mm,labelsep=0pt}%
    \pspicture(0,0)(178,0)
    \psframe[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](0,-3)(178,4)
    \rput(89,-.25){\black\ACMCCS}%
%    \rput[r](177,.5){\MarkFont\textbf{\journal\NamensErweiterung} 
    \rput[r](177,0){\KolumnenAussenFont{\journal\NamensErweiterung} 
        \ifx\Issue\TestText %also keine Angaben
        0/00
        \else
        4/\kern-.15em99\enskip\fi} %hh enskip eingefuegt
    \setbox0\hbox{\KolumnenAussenFont{\hspace{1mm}\journal\NamensErweiterung} 0/00\enskip}%
    \rput(177,0){\rput(-\wd0,0){%
    \pscircle[linestyle=none,fillstyle=solid,fillcolor=white](-3,.445){3}
    \pscircle[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](-3,.445){1.5}}}
    %
    \endpspicture
\else
    \hbox to 176mm{\hspace{2mm}\KolumnenAussenFont\rightmark\hfill {\journal\NamensErweiterung}
        \ifx\Issue\TestText %also keine Angaben
        0/00
        \else
        \Issue
        \fi}
\fi}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\ps@myheadings{%  
\setlength\topskip{\NormalesTopskip}%
    \def\@oddfoot{\hfil\PageFont\raisebox{10pt}{\thepage}}%
    \if@twoside %fuer alle Seitenzahlen ausser der ersten des Kapitels
      \def\@evenfoot{\PageFont\raisebox{10pt}{\thepage}\hfil}%
    \else
      \let\@evenfoot\@oddfoot
    \fi
%    \let\@oddfoot\@empty\let\@evenfoot\@empty
\def\@evenhead{%
\ifbelichtung
\newgray{ortex-gray}{.8}
%pstricks needed because of gray and white
    \psset{unit=1mm,labelsep=0pt}%
    \pspicture(0,0)(178,0)
    \psframe[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](0,-3)(178,4)
    \setbox0\hbox{\KolumnenAussenFont{\journal\NamensErweiterung} 0/00\enskip}%
%    \rput[l](2,.5){\KolumnenAussenFont{\journal\NamensErweiterung} 
    \rput[l](2,0){\KolumnenAussenFont{\journal\NamensErweiterung} 
        \ifx\Issue\TestText %also keine Angaben
        0/00\else4/\kern-.15em99\fi}%
\rput(2,0){\rput(\wd0,0){%  
        \pscircle[linestyle=none,fillstyle=solid,fillcolor=white](3,.445){3}
    
     \pscircle[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](3,.445){1.5}}}
        \rput(89,0){\ifx\ACMCCS\TestText\ifx\journal\Testit{}\else
        \textbf{noch nicht eingetragen}\fi\else{\black\ACMCCS}\fi}
    \endpspicture
\else
    \hbox to 176mm{\hspace{2mm}\KolumnenAussenFont{\journal\NamensErweiterung}\ 
        \ifx\Issue\TestText %also keine Angaben
        0/00
        \else
        \Issue
        \fi\hfill}
\fi}%
\def\@oddhead{%
\ifbelichtung
\newgray{ortex-gray}{.8}
%pstricks needed because of gray and white
    \psset{unit=1mm,labelsep=0pt}%
    \pspicture(0,0)(178,0)
    \psframe[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](0,-3)(178,4)
    \rput[r](177,0){\KolumnenAussenFont{\journal\NamensErweiterung} 
        \ifx\Issue\TestText  %also keine Angaben
        0/00
        \else
        4/\kern-.15em99\enskip \fi} %hh eingefuegt
%        \Issue\enskip \fi} %hh eingefuegt
    \setbox0\hbox{\KolumnenAussenFont{\journal\NamensErweiterung} 0/00\enskip}%
    \rput(176,0){\rput(-\wd0,0){%
    \pscircle[linestyle=none,fillstyle=solid,fillcolor=white](-3,.445){3}
    \pscircle[linestyle=none,fillstyle=solid,fillcolor=ortex-gray](-3,.445){1.5}}}
    \rput[l](2,.5){\KolumnenAussenFont\lnullbox{\kurztitel}}
    \endpspicture
\else
    \hbox to 176mm{\hspace{2mm}\KolumnenAussenFont\rightmark\hfill {\journal\NamensErweiterung}
        \ifx\Issue\TestText  %also keine Angaben
        0/00
        \else
        \Issue
        \fi}
\fi}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
\newcommand*\PageFont{\rmfamily\fontsize{12}{12}\selectfont}
\newcommand*\MarkFont{\rmfamily}
\newcommand*\RunningFonts[2]{%
  \renewcommand*\PageFont{#1}\renewcommand*\MarkFont{#2}}
\newcommand*\TitleFont{\thispagestyle{empty}\bfseries}
\if@titlepage
\renewcommand*\TitleFont{\rmfamily}
\newcommand*\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \long\def\@makefntext##1{\parindent\z@
         \def\labelitemi{\textendash}\@revlabeltrue
         \leavevmode\@textsuperscript{\@thefnmark}\ \relax ##1}
    \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
    \if@compatibility\setcounter{page}{0}\fi
    \null\vfil
    \vskip 60\p@
    \begin{center}%
      \TitleFont
      {\LARGE \def\\{\penalty -\@M}
        \if@allcaps
          \expandafter\uc@nothanks\@title\thanks\relax
        \else
          \@title
        \fi\par}%
      \vskip 3em%
      {\large
        \lineskip .75em \parindent\z@
        \begin{tabular}[t]{c}%
          \if@allcaps
            \expandafter\uc@authornothanks\@author\and\relax
          \else
            \@author
          \fi
        \end{tabular}\par}%
      \vskip 1.5em%
      {\large
        \if@allcaps
          \uppercase\expandafter{\@date}%
        \else
          \@date
        \fi\par}%
      \end{center}\par
    \@thanks
    \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@title\@empty
  \global\let\@date\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\uc@nothanks#1\thanks{\uppercase{#1}\futurelet\@tempa\uc@tx}
\def\uc@authornothanks#1\and{\uc@nothanks#1\thanks\relax
    \futurelet\@tempa\uc@ax}
\def\uc@ax{%
  \ifx\@tempa\relax
  \else
    \\ \andname \\ \expandafter\uc@authornothanks
  \fi}
\def\uc@tx{\ifx\@tempa\relax
    \else \expandafter\uc@ty \fi}
\def\uc@ty#1{\thanks{#1}\uc@nothanks}
\else
\newcommand*\maketitle{\par
  \begingroup
    \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{%
      \@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext{\@xmakefntext{%
      \@textsuperscript{\normalfont\@thefnmark}}}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@title\@empty
  \global\let\@date\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
    {\LARGE \TitleFont \@title \par}%
    \vskip 1.5em%
    {\large \TitleFont
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \TitleFont \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\newcommand*\head@style{%
    \interlinepenalty \@M
    \hyphenpenalty=\@M \exhyphenpenalty=\@M
    \rightskip=0cm plus .7\hsize\relax}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \begingroup
      \setbox\@tempboxa=\hbox{#6\relax
                              \csname the#1\endcsname
%hh                              \hskip.5em}
                              }
      \ifdim\wd\@tempboxa>\unitindent
        \global\unitindent=\wd\@tempboxa
        \@indentset
      \fi
    \endgroup
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
    #6{%\@hangfrom{\hskip #3\relax\@svsec}\head@style #8\endgraf}%
\noindent\leavevmode\@svsec\head@style #8\endgraf}%
%Hier wird die eigentliche Ueberschrift abgehandelt
     \endgroup
     \csname #1mark\endcsname{#7}%
     \addcontentsline{toc}{#1}{%
       \ifnum #2>\c@secnumdepth
       \else
         \protect\numberline{\csname the#1\endcsname}%
       \fi
       \toc@font#2 #7}%
     \else
       \def\@svsechd{#6\hskip #3\relax
         \@svsec #8\csname #1mark\endcsname{#7}%
         \addcontentsline{toc}{#1}{%
           \ifnum #2>\c@secnumdepth
           \else
             \protect\numberline{\csname the#1\endcsname}%
           \fi
           \toc@font#2 #7}}%
     \fi
     \@xsect{#5}}
\def\@seccntformat#1{%
%hh  \hb@xt@\unitindent{\csname the#1\endcsname \hfil}%
\hbox{\csname the#1\endcsname\enskip}%  %geandert, nur ein enspace Abstand
  }
\def\@ssect#1#2#3#4#5{\@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}\head@style #5\endgraf}%
    \endgroup
  \else
    \def\@svsechd{#4\hskip #1\relax #5}%
  \fi
  \@xsect{#3}}
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand*\thepart{\@Roman\c@part}
\renewcommand*\thechapter{\@arabic\c@chapter}
\renewcommand*\thesection{\@arabic\c@section}
\renewcommand*\thesubsection{\thesection.\@arabic\c@subsection}
\renewcommand*\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand*\theparagraph{\thesubsubsection.\@arabic\c@paragraph}
\renewcommand*\thesubparagraph{\theparagraph.\@arabic\c@subparagraph}
\newcommand*\@chapapp{\chaptername}
\newcommand*\part{%
  \cleardoublepage
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}
\newcommand*\PartFont{\bfseries}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}\toc@case{#1}}%
    \else
      \addcontentsline{toc}{part}{\toc@case{#1}}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \Large\PartFont
       \edef\@tempa{\noexpand\uppercase{\partname}}\@tempa~\thepart
       \par
       \vskip 20\p@
     \fi
     \Large \PartFont \uppercase{#2}\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Large \PartFont #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand*\chapter{\clearpage
                    \thispagestyle{varplain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
        \refstepcounter{chapter}%
        \typeout{\@chapapp\space\thechapter.}%
        \addcontentsline{toc}{chapter}%
                      {\protect\numberline{\thechapter}\toc@font0 #1}%
    \else
      \addcontentsline{toc}{chapter}{\toc@font0 #1}%
    \fi
      \chaptermark{#1}%
      \addtocontents{lof}{\protect\addvspace{10\p@}}%
      \addtocontents{lot}{\protect\addvspace{10\p@}}%
      \if@twocolumn
        \@topnewpage[\@makechapterhead{#2}]%
      \else
        \@makechapterhead{#2}%
        \@afterheading
      \fi}
\let\ChapFont=\KapitelFont
%Reihenfolge:
% 1. Titel deutsch      (26/29)
% 2. Titel englisch         (13/15.2)
% 3. Widmung, soweit vorhanden  (11/15.2)
% 4. Autoren            (11/15.2)
%
% 5. Linie
% 6. Abstract deutsch       (10.5/12)
% 7. Abstract englisch      (10.5/12)
% 8. Schlagwoerter      (10.5,12)
% 9. Linie 
%
%Beginn des doppelspaltigen Textes
\def\@makechapterhead#1{%
  {\setlength\parindent{\z@}%
   \setlength\parskip  {\z@}%
   \head@style \normalfont
\def\RemoveUnderLength{\setbox0\hbox{g}\vspace{-1\dp0}}
% we look for variations (for typesetting), 
% if they exist, they take precedence
\ifx\varTitelenglisch\TestText\relax\else\let\Titelenglisch\varTitelenglisch\fi
\ifx\varsachgebiet\TestText\relax\else\let\ACMCCS\varsachgebiet\fi
\ifx\varverfasser\TestText\relax\else\let\Authors\varverfasser\fi
\ifx\varwidmung\TestText\relax\else\let\varwidmung\varwidmung\fi


\parindent=0pt
\parskip=0pt
\lineskip=0pt
\lineskiplimit=0pt
\baselineskip=0pt


\begin{minipage}[b]{\textwidth}
\parindent=0pt\raggedright
\baselineskip29pt\KapitelFont#1
\RemoveUnderLength
%\typeout{Abstand zwischen deutscher und englischer Ueberschrift (baseline-baseline) = 11.7mm}

\end{minipage}
%\removelastskip\vspace*{-1.7mm}


%\vrule height.5pt depth 0pt width\textwidth



\baselineskip=11.7mm
%\begin{minipage}[t]{\textwidth}
%\raggedright\allowhyphens
%\parindent=0pt\baselineskip15.2pt\TitelEnglischFont\Titelenglisch\RemoveUnderLength %Englischer Titel
%
%\removelastskip
%\end{minipage}
\removelastskip\vspace*{-1.87mm}

\vspace{10.35mm}

\baselineskip=0mm
\begin{minipage}[t]{\textwidth}
\baselineskip8mm
\parindent=0pt
\parskip=0pt
            \AutorenFont\Authors%  %% Autoren
\ifx\Dedication\TestText
            \RemoveUnderLength
        \else        
          \\  
{\fontfamily{bfr}\fontseries{mc}\selectfont\VorspannFont{\Dedication}} %Widmung
        \fi\RemoveUnderLength  
%\vrule height.5pt depth 0pt width\textwidth
 
\end{minipage}

\vspace{20mm}



\vrule height.5pt depth 0pt width130mm
\vspace{2.825mm}

\baselineskip=0mm
\begin{minipage}[t]{130mm}
\parskip=0pt\parindent=0pt
\baselineskip12pt
\raggedright
\hyphenpenalty=100
\ifx\Keywords\TestText
%\ifx\Schlagwoerter\TestText
{\fontfamily{bfr}{\StichwortSpitzmarkeFont Abstract: }\fontseries{mc}\selectfont\VorspannFont\Abstract}\\[+1\baselineskip]
%\VorspannFont\kurzfassungenglisch
\RemoveUnderLength
\else
{\fontfamily{bfr}{\StichwortSpitzmarkeFont Abstract: }\selectfont\VorspannFont\Abstract}\\[+1\baselineskip]
%{\fontfamily{bfr}\selectfont\VorspannFont\kurzfassungenglisch}\\[+1\baselineskip]
%{\StichwortSpitzmarkeFont Schlagw\"orter: }\VorspannFont\Schlagwoerter \\[+1\baselineskip] % Schlagwoerter
{\StichwortSpitzmarkeFont ACM CCS: }\VorspannFont\ACMCCS \\[+1\baselineskip]
{\StichwortSpitzmarkeFont Keywords: }\VorspannFont\Keywords % Keywords
\RemoveUnderLength
\fi


\rightskip=0pt plus 10cm\raggedright

\end{minipage}

\vspace{3mm}
\vrule height.5pt depth 0pt width130mm
\vskip\AfterChapterskip    \nobreak
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  {\setlength\parindent{\z@}%
    \setlength\parskip{\z@}%
    \head@style
    \normalfont
    \ChapFont\strut#1\par %makeschapterhead
    \nobreak
%  \vskip 40\p@ %%veraenderung hier senkt den Beginn der Zweispaltigkeit
    \vskip\AfterChapterskip  % s.o.
  }}
%baselineskip in at-jornal ist 11.713pt!
\newcommand*\section{%
  \@startsection {section}{1}{\z@}%
   {-17.5dd\@plus -11dd \@minus -0.1dd}% unterster Wert 23.54pt
    {2.05mm \@plus0ex \@minus0ex}%
    {\baselineskip15.2pt\SectFont\setbox0\hbox{\thesection\enskip}\hangindent\wd0\hangafter1}}
\newcommand*\SectFont{\TitelErsteOrdnungFont}
\newcommand*\subsection{%
  \@startsection{subsection}{2}{\z@}%
    {-4.5mm \@plus -5.5dd \@minus -0.1dd}%
    {1.975mm}%
    {\SSectFont\baselineskip11.713pt}}
\newcommand*\SSectFont{\TitelZweiteOrdnungFont}
\newcommand*\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}%
    {-2.5mm \@plus -.1dd \@minus -0.1dd}%
    {.01\baselineskip}%
    {\SSSectFont\baselineskip11.713pt}}
\newcommand*\SSSectFont{\TitelDritteOrdnungFont}
\newcommand*\subsubsubsection{%
  \@startsection{subsubsection}{4}{\z@}%
    {-.015\baselineskip plus -.015\baselineskip minus -.05\baselineskip}%
    {.01\baselineskip}%
    {\SSSSectFont\baselineskip11.713pt}}
\newcommand*\SSSSectFont{\TitelVierteOrdnungFont}
\newcommand*\paragraph{%
  \@startsection{paragraph}{4}{\z@}%
    {1.25\baselineskip\@plus .5\baselineskip \@minus .25\baselineskip}%
    {-.5em}%
    {\ParaFont}}
\newcommand*\ParaFont{\bfseries}
\newcommand*\subparagraph{%
  \@startsection{subparagraph}{5}{\parindent}%
    {3.25ex \@plus1ex \@minus .2ex}%
    {-1em}%
    {\normalfont\normalsize\SParaFont}}
\newcommand*\SParaFont{\slshape}
\newcommand*\HeadingFonts[8]{%
  \renewcommand*\TitleFont{#1}%
  \renewcommand*\PartFont{#2}%
  \renewcommand*\ChapFont{#3}%  %renewcommand
  \renewcommand*\SectFont{#4}%
  \renewcommand*\SSectFont{#5}%
  \renewcommand*\SSSectFont{#6}%
  \renewcommand*\ParaFont{#7}%
  \renewcommand*\SParaFont{#8}}
\setlength\leftmargini  {\unitindent}
\setlength\leftmarginii {\othermargin}
\setlength\leftmarginiii{\othermargin}
\setlength\leftmarginiv {\othermargin}
\setlength\leftmarginv  {\othermargin}
\setlength\leftmarginvi {1em}
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {5\p@}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\partopsep{\z@}
\setlength\topsep{\z@}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listi{% aus 3
            \leftmargin4mm
            \labelsep.25em%
            \labelwidth\leftmargin
            \advance\labelwidth by -\labelsep
            \parsep0pt
%\topsep=7dd plus4dd minus 1.5dd
%\advance\mathindent by -\leftmargin
%\partopsep=-77dd
\partopsep=0pt
\topsep=0pt
\itemsep   0pt plus 1.025mm}
\let\@listI\@listi
\@listi
%\def\@listii {\leftmarginii4mm\leftmargin\leftmarginii
\def\@listii {\leftmarginii0mm\leftmargin\leftmarginii
              \labelsep  .5em%
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
%              \topsep    0pt
%\advance\mathindent by -\leftmarginii
\topsep=7dd plus4dd minus 1.5dd
              \parsep    0pt
              \itemsep   0pt plus 1.025mm}
\def\@listiii{\leftmargin\leftmarginiii
              \labelsep  .5em%
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus\p@
              \parsep    \z@
              \partopsep \z@ \@plus\p@
              \itemsep   \z@ \@plus\p@}
\def\@listiv {\leftmargin\leftmarginiv
              \labelsep  .5em%
              \labelwidth\leftmarginiv%
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus\p@
              \parsep    \z@
              \itemsep   \z@ \@plus\p@}
\def\@listv  {\leftmargin\leftmarginv
              \labelsep  .5em%
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep%
              \topsep    0\p@ \@plus\p@
              \parsep    \z@
              \itemsep   \z@ \@plus\p@}
\def\@listvi {\leftmargin\leftmarginvi
              \labelsep  .5em
              \labelwidth\leftmarginvi
              \advance\labelwidth{-\labelsep}%
              \topsep    0\p@ \@plus\p@
              \parsep    \z@
              \itemsep   \z@ \@plus\p@}
\renewcommand*\theenumi{\@arabic\c@enumi}
\renewcommand*\theenumii{\@alph\c@enumii}
\renewcommand*\theenumiii{\@roman\c@enumiii}
\renewcommand*\theenumiv{\@Alph\c@enumiv}
\newcommand*\labelenumi{\theenumi.}
\newcommand*\labelenumii{(\theenumii)}
\newcommand*\labelenumiii{\theenumiii.}
\newcommand*\labelenumiv{\theenumiv.}
\renewcommand*\p@enumii{\theenumi}
\renewcommand*\p@enumiii{\theenumi(\theenumii)}
\renewcommand*\p@enumiv{\p@enumiii\theenumiii}
\renewenvironment{enumerate}{%
  \ifnum \@enumdepth >3
    \@toodeep
  \else
    \advance\@enumdepth \@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \list{\csname label\@enumctr\endcsname}
         {\usecounter{\@enumctr}%
           \ifnum \@listdepth=1
             \if@revlabel
               \def\makelabel##1{\hskip .5\unitindent{##1\hfil}}%
             \else
               \def\makelabel##1{\hfil##1}
             \fi
           \else
             \def\makelabel##1{##1\hfil}%
           \fi
         }%
  \fi}
 {\global\@ignoretrue \endlist}
\newcommand*{\labelitemi}{\textbullet}  %frueher large
\newcommand*{\labelitemii}{\normalfont\bfseries \textendash}
\newcommand*{\labelitemiii}{\textasteriskcentered}
\newcommand*{\labelitemiv}{\textperiodcentered}
\renewenvironment{itemize}{%
  \ifnum \@itemdepth >3
    \@toodeep
  \else
    \advance\@itemdepth \@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \list{\csname\@itemitem\endcsname}%
         {%
           \ifnum \@listdepth=1\relax
%            \if@revlabel
%              \def\makelabel##1{\hskip .5\unitindent{##1\hfil}}\else
%              \def\makelabel##1{\hfil##1}
              \def\makelabel##1{##1\hfil}
%            \fi
          \else
            \def\makelabel##1{##1\hfil}
          \fi
          }%
  \fi}
 {\global\@ignoretrue \endlist}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep \bfseries #1}
\def\center
   {\topsep=.25\baselineskip \@plus .1\baselineskip
                             \@minus .1\baselineskip
     \trivlist \centering\item[]}
\let\endcenter\endtrivlist
\def\flushleft
   {\topsep=.25\baselineskip \@plus .1\baselineskip
                             \@minus .1\baselineskip
    \trivlist \raggedright\item[]}
\let\endflushleft=\endtrivlist
\def\flushright
   {\topsep=.25\baselineskip \@plus .1\baselineskip
                             \@minus .1\baselineskip
    \trivlist \raggedleft\item[]}
\let\endflushright=\endtrivlist
\def\verbatim{%
  \topsep=.25\baselineskip \@plus .1\baselineskip
                           \@minus .1\baselineskip
   \@verbatim
   \leftskip\unitindent
  \frenchspacing\@vobeyspaces \@xverbatim}
\def\endverbatim{\if@newlist \leavevmode\fi\endtrivlist}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \hbox{\SectFont \abstractname}
      \noindent\ignorespaces}
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \bgroup\rightskip=\unitindent
        \hbox{\SectFont \abstractname}%
        \noindent\ignorespaces
      \fi}
      {\if@twocolumn\else\par\egroup\fi}
\fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep\z@
                        \itemindent-1.5em%
                        \listparindent\itemindent
                        \rightmargin\leftmargin
                        \advance\leftmargin1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{%
                        \listparindent\z@
                        \itemindent\listparindent
                        \rightmargin\leftmargin
                        \parsep\z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\def\@begintheorem#1#2{%
    \vskip\baselineskip \labelsep=.5em%
    \trivlist
    \item[\hskip \labelsep{\bfseries #1\ #2}]\slshape}
\def\@opargbegintheorem#1#2#3{%
    \vskip\baselineskip \labelsep=.5em%
    \trivlist
    \item[\hskip \labelsep{\bfseries #1\ #2\ (#3)}]\slshape}
\def\@endtheorem{\endtrivlist \vskip\baselineskip}
\newenvironment{titlepage}
    {
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \if@compatibility
        \setcounter{page}\z@
      \else
        \setcounter{page}\@ne
      \fi}
     {\if@restonecol\twocolumn \else \newpage \fi
       \setcounter{page}\@ne
       }
\newcommand*\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand*\@chapapp{\appendixname}%
  \renewcommand*\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\def\@minipagerestore{\parindent0mm}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand*\theequation{\@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand*\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure\enspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand*\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{6\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
\def\test{figure}% %find out, if it's table or figure
\ifx\@captype\test % if figure 
    \setlength\abovecaptionskip{5pt}
    \setlength\belowcaptionskip{0pt}
\else  %must be table
    \setlength\abovecaptionskip{0pt}
    \setlength\belowcaptionskip{5pt}
\fi
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\BildSpitzmarkeFont#1:} \baselineskip=9.5pt\lineskip=0pt\BildUnterschriftFont#2}%
  \ifdim \wd\@tempboxa >\hsize\baselineskip=9.5pt\lineskip=0pt
    {\BildSpitzmarkeFont #1:} \BildUnterschriftFont#2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newcommand*\CaptionFonts[2]{%
  \renewcommand*\CaptionLabelFont{#1}%
  \renewcommand*\CaptionTextFont{#2}%
  }
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\relax}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\relax}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\DeclareRobustCommand*\em{%
  \@nomath\em
  \ifdim\fontdimen\@ne\font>\z@
    \upshape
  \else
    \itshape
  \fi}
\newcommand*\@pnumwidth{1.55em}
\newcommand*\@tocrmarg {2.55em}
\newcommand*\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand*\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{\MakeUppercase{\contentsname}}%
                {\MakeUppercase{\contentsname}}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\@regtocline[3]{%
  \ifnum #1>\c@tocdepth
  \else
    \vskip\z@\@plus.2\p@
    {\hangindent\z@ \@afterindenttrue \interlinepenalty\@M
     \leftskip\unitindent
     \rightskip\unitindent\@plus 1fil
     \parfillskip\z@
     \@tempdima\unitindent
     \parindent\z@
     \leavevmode
     \hbox{}\hskip -\leftskip\relax#2\nobreak
     \hskip 1em \nobreak{\slshape #3}\par
     }%
  \fi}
\if@oldtoc
  \newcommand*\toc@font[1]{\relax}
\else
  \newcommand*\toc@font[1]{%
    \ifcase#1\relax
    \bfseries
    \or\slshape
    \or\rmfamily
    \fi}
\fi
\if@oldtoc
  \newcommand*\toc@case{\relax}
\else
  \newcommand*\toc@case{\MakeUppercase}
\fi
\if@oldtoc
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
        \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
        \nobreak
        \global\@nobreaktrue
        \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\else
   \newcommand*\l@part{%
     \ifnum \c@tocdepth >-2\relax
     \addpenalty{-\@highpenalty}%
     \addvspace{2.25em \@plus \p@}%
     \@regtocline{0}%
   \fi}
\fi
\if@oldtoc
\newcommand*\l@chapter[2]{%
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode \bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \penalty\@highpenalty
   \endgroup}
\else
  \newcommand*\l@chapter{\@regtocline{0}}
\fi
\if@oldtoc
  \newcommand*\l@section      {\@dottedtocline{1}{1.5em}{2.3em}}
\else
  \newcommand*\l@section      {\@regtocline{1}}
\fi
\if@oldtoc
  \newcommand*\l@subsection   {\@dottedtocline{2}{3.8em}{3.2em}}
  \newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
  \newcommand*\l@paragraph    {\@dottedtocline{4}{10em}{5em}}
  \newcommand*\l@subparagraph {\@dottedtocline{5}{12em}{6em}}
\else
  \newcommand*\l@subsection   {\@regtocline{2}}
  \newcommand*\l@subsubsection{\@regtocline{3}}
  \newcommand*\l@paragraph    {\@regtocline{4}}
  \newcommand*\l@subparagraph {\@regtocline{5}}
\fi
\newcommand*\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase{\listfigurename}}%
              {\MakeUppercase{\listfigurename}}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\if@oldtoc
  \newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\else
  \newcommand*\l@figure{\@regtocline{1}}
\fi
\newcommand*\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{\MakeUppercase{\listtablename}}%
              {\MakeUppercase{\listtablename}}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newcommand*\newblock{}
\newenvironment{thebibliography}[1]
     {\renewcommand*\subsection{%
  \@startsection{subsection}{2}{\z@}%
    {-4.5mm \@plus -5.5dd \@minus -0.1dd}%
    {.01\baselineskip}%
    {\SSectFont\baselineskip11.713pt}}%
\ifx\Acknowledgement\TestText\relax\else\subsection*{\LitHeaderFont Acknowledgement}\vspace{1.4pt}\small\Acknowledgement\fi
\removelastskip\subsection*{\LitHeaderFont Literature}
\vspace{1.5pt}%
\small
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \itemsep2pt
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand*\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
\endlist\vspace{-4.26mm}\ifx\journal\Testit\relax\else\vspace{8mm}%
Manuskripteingang: \ifx\Submissiondate\TestText\today.\else
\Submissiondate.\fi\fi}
\renewcommand\newblock{\hskip.11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \columnseprule \z@
  \columnsep 35\p@
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase{\indexname}}{\MakeUppercase{\indexname}}%
  \thispagestyle{plain}\parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \let\item\@idxitem
  }{%
  \if@restonecol\onecolumn\else\clearpage\fi}
\newcommand*\@idxitem  {\par\hangindent 40\p@}
\newcommand*\subitem   {\@idxitem\hspace*{20\p@}}
\newcommand*\subsubitem{\@idxitem\hspace*{30\p@}}
\newcommand*\indexspace{\par\vskip10\p@\@plus5\p@\@minus3\p@\relax}
\renewcommand*\footnoterule{%
  \kern-3\p@
  \kern.5\baselineskip
  \hrule\@width18mm
  \kern.4\baselineskip
}
\@addtoreset{footnote}{chapter}
%\newcommand*\@makefntext{\@xmakefntext{\normalfont\@thefnmark.}}
\newcommand*\@makefntext{\@xmakefntext{\normalfont\@thefnmark}}
\newcommand*\@xmakefntext[1]{%
    \parindent\z@
    \def\labelitemi{\textendash}\@revlabeltrue
    {\setbox0\hbox {#1\hskip.5em plus 1fil}
      \dimen0=2\wd0\relax
      \ifdim\dimen0>\unitindent
        \global\unitindent\dimen0\relax
        \@indentset
      \fi}
    \leavevmode\hb@xt@1cc{$^{#1}$\hfill}}
\newcommand*\contentsname{Contents}
\newcommand*\listfigurename{List of Figures}
\newcommand*\listtablename{List of Tables}
\newcommand*\bibname{Literature}
\newcommand*\indexname{Index}
\newcommand*\figurename{Figure}
\newcommand*\tablename{Table}
\newcommand*\partname{Part}
\newcommand*\chaptername{Chapter}
\newcommand*\appendixname{Addendum}
\newcommand*\abstractname{Abstract}
\newcommand*\seename{see}
\newcommand*\andname{and}
\newcommand*\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@outputdblcol{%
  \if@firstcolumn
    \global \@firstcolumnfalse
    \global \setbox\@leftcolumn \box\@outputbox
  \else
    \global \@firstcolumntrue
    \setbox\@outputbox \vbox {%
                         \hb@xt@\textwidth {%
                           \hb@xt@\columnwidth {%
                             \box\@leftcolumn \hss}%
                           \hfil
\setbox0\hbox{g}%
                           \vrule \@width\columnseprule 
%height.8\vsize 
depth-.7mm
% we cut .7mm at the lower end from colseprule!
                           \hfil
                           \hb@xt@\columnwidth {%
                             \box\@outputbox \hss}%
                                             }%
                              }%
    \@combinedblfloats
    \@outputpage
    \begingroup
      \@dblfloatplacement
      \@startdblcolumn
      \@whilesw\if@fcolmade \fi
        {\@outputpage
         \@startdblcolumn}%
    \endgroup
  \fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
\setlength\columnsep{8mm} %Abstand der beiden Spalten
\setlength\columnseprule{0pt}  %Breite vom Mittelstrich
\pagestyle{plain}
\pagenumbering{arabic}      % Arabic page numbers
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\frenchspacing
\parindent0mm
%\parskip=0pt
\newdimen\messdimen
\newdimen\messdimennull
\newdimen\fotohoehe\fotohoehe=35mm
\newskip\Mathskip
\topsep=7dd plus4dd minus 1.5dd
\Mathskip\topsep
\thickmuskip=5mu plus 0mu minus 0mu
%\renewcommand*\CaptionLabelFont{\bfseries\small}
\arraycolsep=1.5pt
\lineskip=0pt
\everymath{\displaystyle}
\maxdepth=0pt
\fboxsep=1mm
\let\sffamily\itshape
\let\sf\it

%%%%%%%%%%%%%%%%%%%%% aus fleqno
%\AtEndOfClass{\mathindent\leftmargini}
\AtEndOfClass{\mathindent5mm}
\renewcommand\[{\relax
                \ifmmode\@badmath
                \else
                  \begin{trivlist}%
                    \@beginparpenalty\predisplaypenalty
                    \@endparpenalty\postdisplaypenalty
                    \item[]\leavevmode
                    \hb@xt@\linewidth\bgroup $\m@th\displaystyle %$
                      \hskip\mathindent\bgroup
                \fi}
\renewcommand\]{\relax
                \ifmmode
                      \egroup $\hfil% $
                    \egroup
                  \end{trivlist}%
                \else \@badmath
                \fi}
\renewenvironment{equation}%
    {\@beginparpenalty\predisplaypenalty
     \@endparpenalty\postdisplaypenalty
     \refstepcounter{equation}%
     \trivlist \item[]\leavevmode
       \hb@xt@\linewidth\bgroup $\m@th% $
         \displaystyle
         \hskip\mathindent}%
        {$\hfil % $
         \displaywidth\linewidth\hbox{\@eqnnum}%
       \egroup
     \endtrivlist}
\renewenvironment{eqnarray}{%
    \stepcounter{equation}%
    \def\@currentlabel{\p@equation\theequation}%
    \global\@eqnswtrue\m@th
    \global\@eqcnt\z@
    \tabskip\mathindent
    \let\\=\@eqncr
    \setlength\abovedisplayskip{\Mathskip}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering
      $\displaystyle\tabskip\z@skip{##}$\@eqnsel&%
      \global\@eqcnt\@ne \hskip \tw@\arraycolsep \hfil${##}$\hfil&%
      \global\@eqcnt\tw@ \hskip \tw@\arraycolsep
        $\displaystyle{##}$\hfil \tabskip\@centering&%
      \global\@eqcnt\thr@@
        \hb@xt@\z@\bgroup\hss##\egroup\tabskip\z@skip\cr}%
      {\@@eqncr
    \egroup
    \global\advance\c@equation\m@ne$$% $$
    \@ignoretrue
    }
%%%%%%%%%%%%%%%%%%%%end fleqno

\selectlanguage{german}
\AtBeginDocument{\typeout{Sollelemente befinden sich in der Datei
            elemente.tex. Die ausgefuellte Datei elemente.tex wird  vom Verlag u.a. fuer Datenbankzwecke  verwendet.}
\selectlanguage{german}}

\newcommand{\Titelei}{\input titelei }

\newbox\messbox           % Hilfsbox zur beliebigen Verwendung 
\def\nullbox#1{\raisebox{0pt}[0pt][0pt]{#1}}  % 
\def\lnullbox#1{\setbox\messbox=\hbox{#1}\raisebox{0pt}[\ht\messbox][0pt]{#1}}
\def\unullbox#1{\setbox\messbox=\hbox{#1}\raisebox{0pt}[0pt][\dp\messbox]{#1}}
% Kann zum Korrigieren eines falschen Zeilenabstandes verwendet werden!
% Beispiel: hohe Exponenten oder tiefe Indices

\typeout{-------------------------------------------------------------------------}

\typeout{Zusatzkommando: nullbox (Hoehe und Tiefe bleiben unberueksichtigt), z.B. um einen falschen Zeilenabstand zu korrigieren}
\typeout{Zusatzkommando: lnullbox (Tiefe bleibt unberueksichtigt)}
\typeout{Zusatzkommando: unullbox (Hoehe bleibt unberueksichtigt)}
\typeout{Syntax: nullbox{$displaystyle frac 1 2 $}}
%Syntax: Eingeklammerter Ausdruck hat weder Hoehe noch Tiefe  
%         \nullbox{$x^3$}

% Eingeklammerter Text soll keine Hoehe, jedoch Tiefe haben 
%         \unullbox{$gx^3$}  %eine upper-nullbox

% Eingeklammerter Text soll keine Tiefe, jedoch Hoehe  haben 
%         \lnullbox{gleich $gx^3$und $l_{x_x}$}  %eine lower-nullbox
\typeout{-------------------------------------------------------------------------}
 

\lineskip=0pt  %9/98

%%%%%%%%%%%%% Bilder in Rahmen %%%%%%%%%%%%%%%%%
\typeout{-------------------------------------------------------------------------}
\typeout{Zusaetzliches Kommando fuer Bildeinrahmung!!!!!!!!!!!!}
\newcommand{\EpsBildGerahmt}[2][1]{\epsfxsize=#1\linewidth\advance\epsfxsize by -2\fboxsep\advance\epsfxsize by -\fboxrule\fbox{\epsfbox{#2}}}
\typeout{syntax: EpsBildGerahmt{xxxx.eps}---------------------------------}
\typeout{Unabdingbar: epsf.tex!, bzw.  bei graphicx  epsfig.sty!}

\typeout{Setzt standardmaessig epsfxsize auf Spaltenbreite bzw. 
 bei figure*-Version auf Satzbreite, beruecksichtigt 
 dabei die Liniendicke des Rahmens sowie den Abstand zum Bild.}
% Ein die Breite limitierendes Argument waere  zulaessig,
% Syntax:  EpsBildGerahmt[.5]{xxxx.eps}}
% In diesem Fall betraegt die Bildbreite (incl. Rahmen) 50 Prozent der Spalten-
% bzw. Satzbreite. Standardmaessig ist der Wert auf 1 gesetzt. Die Unterschrift % sollte dann u.U. zur Nebenschrift werden!} 
\typeout{-------------------------------------------------------------------------}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% semicolon statt komma in multi-cite!
%%%%%%% syntax (Lamport) \cite[1,3,5] %%%%%%%%%%%%%%%%%%%
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\ifbelichtung\pagestyle{myheadings}\fi
% die erste Seite wird auf jeden Fall mit pagestyle{varplain} gesetzt!

\let\sldefault\itdefault
\endinput
%%
%% End of file `olz.cls'.
