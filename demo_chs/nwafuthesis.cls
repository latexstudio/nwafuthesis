%%
%% This is file `nwafuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nwafuthesis.dtx  (with options: `cls')
%% ----------------------------------------------------------------
%% nwafuthesis --- Thesis Template for Norhtwest A & F University
%% Licensed under the Apache License, Version 2.0
%% See http://www.apache.org/licenses/LICENSE-2.0
%% ----------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nwafuthesis}
[2019/1/22 v1.0 NWAFU Thesis Template]
\InputIfFileExists{nwafuthesis.cfg}{}{}
\AtEndOfClass{
\newcommand\nwafu@label@nwafu{西北农林科技大学}
\newcommand\nwafu@label@worktype@paper{毕业论文}
\newcommand\nwafu@label@worktype@design{毕业设计}
\newcommand\nwafu@label@worktype@master{硕士学位论文}
\newcommand\nwafu@label@worktype@doctor{博士学位论文}
\newcommand\nwafu@label@thesisnum{编号}
\newcommand\nwafu@label@stuno{学号}
\newcommand\nwafu@label@title{题\quad 目}
\newcommand\nwafu@label@teamname{团队名称}
\newcommand\nwafu@label@author{学生姓名}
\newcommand\nwafu@label@studentid{学号}
\newcommand\nwafu@label@college{学院}
\newcommand\nwafu@label@department{系部}
\newcommand\nwafu@label@major{专业}
\newcommand\nwafu@label@classid{班级}
\newcommand\nwafu@label@adviser{指导教师}
\newcommand\nwafu@label@coadviser{协助指导教师}
\newcommand\nwafu@label@applydate{完成日期}
\newcommand\nwafu@label@researchername{研究生姓名}
\newcommand\nwafu@label@majorsubject{学科、专业}
\newcommand\nwafu@label@researchfield{研究方向}
\newcommand\nwafu@label@professionaltype{专业类别}
\newcommand\nwafu@label@professionalfield{专业领域}
\newcommand\nwafu@label@graduateschool{研究生院}
\newcommand\nwafu@labelEn@nwafu{Norhtwest A \& F University}
\newcommand\nwafu@labelEn@graduateschool{The Graduate School}
\newcommand\nwafu@label@abstract{摘要}
\newcommand\nwafu@label@abstractshort{摘要}
\newcommand\nwafu@label@keywords{关键词}
\newcommand\nwafu@label@keywordsep{; }
\newcommand\nwafu@label@abstract@toc{摘要}
\newcommand\nwafu@labelEn@abstract{Abstract}
\newcommand\nwafu@labelEn@ABSTRACT{ABSTRACT}
\newcommand\nwafu@labelEn@KeyWords{Key Words}
\newcommand\nwafu@labelEn@keywords{Keywords}
\newcommand\nwafu@labelEn@keywordsep{; }
\newcommand\nwafu@label@reportpaper{毕业设计（论文）}
\ifnwafu@lang@cn
  \newcommand\listfiguretablename{图表清单}
  \def\equationautorefname{式}
  \def\AMSautorefname{式}
\else\ifnwafu@lang@en
  \newcommand\listfiguretablename{List of Figures and Tables}
\fi\fi
}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=nwafu,
  prefix=nwafu@,
  setkeys=\kvsetkeys
}
\newif\ifnwafu@bachelor \nwafu@bachelorfalse
\newif\ifnwafu@master   \nwafu@masterfalse
\newif\ifnwafu@doctor   \nwafu@doctorfalse
\define@key{nwafu}{degree}{
  \expandafter\csname nwafu@#1true\endcsname}
\DeclareBoolOption[false]{techmaster}
\newif\ifnwafu@lang@cn \nwafu@lang@cnfalse
\newif\ifnwafu@lang@en \nwafu@lang@enfalse
\define@key{nwafu}{lang}{
  \expandafter\csname nwafu@lang@#1true\endcsname}
\newif\ifnwafu@worktype@paper  \nwafu@worktype@paperfalse
\newif\ifnwafu@worktype@design \nwafu@worktype@designfalse
\define@key{nwafu}{type}{
  \expandafter\csname nwafu@worktype@#1true\endcsname}
\DeclareBoolOption[false]{blankleft}
\DeclareBoolOption[false]{abstractopenright}
\DeclareStringOption{fontset}
\DeclareBoolOption[false]{nobold}
\DeclareDefaultOption{}
\kvsetkeys{nwafu}{}
\ProcessKeyvalOptions*
\ifnwafu@bachelor\relax\else
\ifnwafu@master\relax\else
\ifnwafu@doctor\relax\else
  \ClassError{nwafuthesis}{
    Thesis degree must be specified: \MessageBreak
    degree=[bachelor|master|doctor]}
\fi\fi\fi
\ifnwafu@bachelor
  \ifnwafu@worktype@paper\relax\else
    \ifnwafu@worktype@design\relax\else
      \ClassError{nwafuthesis}{
        Thesis type must be specified: \MessageBreak
        type=[paper|design]}
    \fi
  \fi
\else
  \ifnwafu@worktype@design
    \ClassError{nwafuthesis}{Paper should be submit instead of design}
  \else
    \nwafu@worktype@papertrue
  \fi
\fi
\ifnwafu@lang@cn\relax\else
  \ifnwafu@lang@en\relax\else
    \nwafu@lang@cntrue
  \fi
\fi
\iffalse
  \newcommand\nwafu@university{\nwafu@label@college}
  \newcommand\nwafu@universityLogo{logo/cie.png}
\else
  \newcommand\nwafu@university{\nwafu@label@nwafu}
  \newcommand\nwafu@universityLogo{logo/nwafubilogo.png}
\fi
\newcommand\nwafu@worktypecn{%
  \ifnwafu@bachelor%
    \ifnwafu@worktype@paper%
      \nwafu@label@worktype@paper%
    \else%
      \nwafu@label@worktype@design%
    \fi%
  \else%
    \ifnwafu@master%
      \nwafu@label@worktype@master%
    \else%
      \nwafu@label@worktype@doctor%
    \fi%
  \fi%
}
\def\nwafuset{\kvsetkeys{nwafu@value}}
\def\nwafusetEn{\kvsetkeys{nwafu@valueEn}}
\def\nwafu@define #1{
  \define@key{nwafu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{
    \expandafter\gdef\csname nwafu@#1\endcsname{##1}}
  \csname #1\endcsname{}
}
\def\nwafu@define@list#1#2{
  \define@key{nwafu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname nwafu@#1\endcsname{}
  \expandafter\gdef\csname nwafu@#1@pdf\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname nwafu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname nwafu@#1\endcsname{%
          \ignorespaces #2}
        \expandafter\g@addto@macro\csname nwafu@#1@pdf\endcsname{,}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname nwafu@#1\expandafter\endcsname\expandafter{\reserved@a}
    }
    \expandafter\gdef\csname nwafu@#1@pdf\endcsname{##1}
  }
}
\nwafu@define{value@title}
\nwafu@define{value@author}
\nwafu@define{value@college}
\nwafu@define{value@applydate}
\ifnwafu@bachelor
  \nwafu@define@list{value@advisers}{、}
  \nwafu@define@list{value@coadvisers}{、}
\else
  \nwafu@define@list{value@advisers}{\linebreak}
  \nwafu@define@list{value@coadvisers}{\linebreak}
\fi
\nwafu@define{value@major}
\nwafu@define{value@studentid}
\nwafu@define{value@classid}
\nwafu@define{value@libraryclassid}
\nwafu@define{value@subjectclassid}
\nwafu@define{value@thesisid}
\nwafu@define{value@gradyear}
\nwafu@define{value@majorsubject}
\nwafu@define{value@researchfield}
\nwafu@define{valueEn@title}
\ifnwafu@bachelor\relax
\else
\fi
\nwafu@define{valueEn@college}
\nwafu@define{valueEn@majorsubject}
\nwafu@define{valueEn@author}
\nwafu@define{valueEn@advisers}
\nwafu@define{valueEn@degreefull}
\nwafu@define{valueEn@applydate}
\RequirePackage{etoolbox}
\RequirePackage{environ}
\newcommand{\nwafu@@abstract}[1]{\long\gdef\nwafu@abstract{#1}}
\newenvironment{abstract}{\Collect@Body\nwafu@@abstract}{}
\newcommand{\nwafu@@abstractEn}[1]{\long\gdef\nwafu@abstractEn{#1}}
\newenvironment{abstractEn}{\Collect@Body\nwafu@@abstractEn}{}
\nwafu@define@list{keywords}{\nwafu@label@keywordsep}
\nwafu@define@list{keywordsEn}{\nwafu@labelEn@keywordsep}
\ifnwafu@lang@cn
  \newcommand\nwafu@title{\nwafu@value@title}
\else\ifnwafu@lang@en
  \newcommand\nwafu@title{\nwafu@valueEn@title}
\fi\fi
\newcommand\nwafu@font@toc{\normalsize}
\RequirePackage{expl3}
\ExplSyntaxOn
\sys_if_engine_xetex:TF{
  \PassOptionsToPackage{no-math}{fontspec}
}{}
\ExplSyntaxOff
\ifnwafu@lang@cn
  \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
  \ProcessKeyvalOptions*
  \ifnwafu@bachelor
    \PassOptionsToClass{zihao=-4,linespread=1.3889}{ctexbook}
  \else
    \PassOptionsToClass{zihao=5,linespread=1.5873}{ctexbook}
  \fi
  \PassOptionsToClass{a4paper,scheme=chinese,space=auto,UTF8}{ctexbook}
  \ifx\nwafu@fontset\@empty\relax
    \PassOptionsToClass{fontset=\nwafu@fontset}{ctexbook}
  \fi
  \LoadClass{ctexbook}
  \ctexset{chapter = {
    lofskip = 0pt,
    lotskip = 0pt
  }}
  \newcommand\nwafu@font@title{\sffamily\heiti}
  \newcommand\nwafu@indentloft{3.5pc}
  \newcommand\nwafu@chaptername\CTEX@chaptername
  \PassOptionsToPackage{indentafter}{titlesec}
\else\ifnwafu@lang@en
  \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{book}}
  \ProcessKeyvalOptions*
  \PassOptionsToClass{a4paper}{book}
  \LoadClass{book}
  \newcommand\nwafu@font@title{\sffamily}
  \newcommand\nwafu@indentloft{5.0pc}
  \newcommand\nwafu@chaptername{\@chapapp\space \thechapter}
  \PassOptionsToPackage{indentafter}{titlesec}
  \fi
  \ifnwafu@bachelor
    \PassOptionsToPackage{zihao=-4,linespread=1.3889}{ctex}
  \else
    \PassOptionsToPackage{zihao=5,linespread=1.5873}{ctex}
  \fi
  \PassOptionsToPackage{scheme=plain}{ctex}
  \ifx\nwafu@fontset\@empty\relax
    \PassOptionsToPackage{fontset=\nwafu@fontset}{ctex}
  \fi
  \RequirePackage{ctex}
  \typeout{Patching list of figure/table in chapter}
  \patchcmd{\@chapter}
    {\addtocontents{lof}{\protect\addvspace{10\p@}}}
    {}
    {\typeout{lof-ok}}
    {\typeout{lof-FAIL}}
  \patchcmd{\@chapter}
    {\addtocontents{lot}{\protect\addvspace{10\p@}}}
    {}
    {\typeout{lot-ok}}
    {\typeout{lot-FAIL}}
\fi
\ExplSyntaxOn
\sys_if_engine_xetex:TF{}{
  \sys_if_output_dvi:TF{
    \PassOptionsToPackage{dvipdfmx}{graphicx}
    \PassOptionsToPackage{dvipdfmx}{hyperref}
    \def\pgfsysdriver{pgfsys-dvipdfm.def}
  }{}
}
\ExplSyntaxOff
\ifnwafu@nobold
  \newcommand\nwafu@textbf[1]{#1}
\else
  \newcommand\nwafu@textbf[1]{{\bfseries #1}}
\fi
\RequirePackage{geometry}  % 页边距
\RequirePackage{fancyhdr}  % 页眉页脚
\RequirePackage{titlesec}  % 各级标题
\RequirePackage{titletoc}  % 目录
\RequirePackage[backend=biber,
                style=gb7714-2015ay,
                sortlocale=zh__pinyin,
                gbtype=false,
                maxbibnames=99,% 著录所有作者
                maxcitenames=2,% 引用标注中最多显示2个作者
                mincitenames=1,% 3个及3个以上的作者截断为1个作者
                %gbnamefmt=lowercase,% 姓名大小写由输出定
                %gbnamefmt=pinyin,
                gbnamefmt=familyahead,
                %url=false,
                doi=false,
                isbn=false,
                gbfieldtype=true,
                gbpunctin=false,
                ]{biblatex}
\PassOptionsToPackage{normalem}{ulem}
\RequirePackage{ulem}      % 英文下划线
\RequirePackage{graphicx}  % 图
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{booktabs}  % toprule, etc
\RequirePackage{multicol}
\RequirePackage{caption}   % DeclareCaptionFont
\RequirePackage{hyperref}
\RequirePackage{ifxetex}
\RequirePackage{siunitx}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{calc}     % 计算文本长度\widthof{...}
\RequirePackage{aliascnt} % newaliascnt/aliascntresetthe
\RequirePackage[inline]{enumitem} % 更好的列表环境
\RequirePackage{environ}
\RequirePackage{floatrow} % 替代原 float 包
\floatsetup[table]{style=plaintop}
\RequirePackage{CJKfntef}
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\ExplSyntaxOn
\cs_set:Npn \zhcn #1{
  \str_if_eq_x:nnTF{\f@family}{\rmdefault}
  {{\songti#1}}{
  \str_if_eq_x:nnTF{\f@family}{\sfdefault}
  {{\heiti#1}}{
  \str_if_eq_x:nnTF{\f@family}{\ttdefault}
  {{\kaiti#1}}{#1}
  }}}
\ExplSyntaxOff
\ifthenelse{\equal{\nwafu@fontset}{windows}}{
  \ifxetex
    \setCJKsansfont{SimHei}
  \else
    \setCJKsansfont{simhei.ttf}
    \csname ctex_punct_map_family:nn\endcsname{\CJKsfdefault}{zhhei}
  \fi
}{}
\ifthenelse{\equal{\nwafu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}
\def\nwafu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\nwafu@def@fontsize{chuhao}{42bp}
\nwafu@def@fontsize{xiaochu}{36bp}
\nwafu@def@fontsize{yihao}{26bp}
\nwafu@def@fontsize{xiaoyi}{24bp}
\nwafu@def@fontsize{erhao}{22bp}
\nwafu@def@fontsize{xiaoer}{18bp}
\nwafu@def@fontsize{sanhao}{16bp}
\nwafu@def@fontsize{xiaosan}{15bp}
\nwafu@def@fontsize{sihao}{14bp}
\nwafu@def@fontsize{banxiaosi}{13bp}
\nwafu@def@fontsize{xiaosi}{12bp}
\nwafu@def@fontsize{dawu}{11bp}
\nwafu@def@fontsize{wuhao}{10.5bp}
\nwafu@def@fontsize{xiaowu}{9bp}
\nwafu@def@fontsize{liuhao}{7.5bp}
\nwafu@def@fontsize{xiaoliu}{6.5bp}
\nwafu@def@fontsize{qihao}{5.5bp}
\nwafu@def@fontsize{bahao}{5bp}
\newcommand\nwafu@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\nwafu@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\nwafu@setdefaultlanguage{%
  \ifnwafu@lang@cn
    \nwafu@setchinese
  \else
    \nwafu@setenglish
  \fi
}
\newif\if@frontmatter
\newif\if@backmatter
\newif\if@appendix
\newif\if@biblio
\let\nwafu@frontmatter\frontmatter
\let\nwafu@mainmatter\mainmatter
\let\nwafu@appendix\appendix
\let\nwafu@backmatter\backmatter
\renewcommand{\frontmatter}{
  \nwafu@frontmatter
  \@frontmattertrue
  \@backmatterfalse
  \@appendixfalse
  \ifnwafu@bachelor\pagenumbering{roman}\else\pagenumbering{Roman}\fi
  \pagestyle{style@main}
}
\renewcommand{\mainmatter}{
  \nwafu@mainmatter
  \@frontmatterfalse
  \@backmatterfalse
  \@appendixfalse
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{style@main}
  \setlength\leftskip{\nwafuparleft}
}
\newcommand{\bibliomatter}{
  %\if@openright\cleardoublepage\else\clearpage\fi
  \nwafu@backmatter
  \@frontmatterfalse
  \@backmatterfalse
  \@appendixfalse
  \@mainmatterfalse
  \@bibliotrue
  %\pagestyle{style@biblio}
  \titleformat{\chapter}
    {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}%\fontsize{15.75bp}{20.0bp}\selectfont}
    {\nwafu@chaptername}{1em}{}
  \titlespacing*{\chapter}{0pt}{10bp}{10bp}
  \setlength\nwafuparleft{0pt}
  \setlength\leftskip{\nwafuparleft}
}
\renewcommand{\appendix}{
 %\if@openright\cleardoublepage\else\clearpage\fi
 \nwafu@appendix
 \@frontmatterfalse
 \@backmatterfalse
 \@appendixfalse
 \@mainmattertrue
 \@bibliofalse
 \pagestyle{style@appendix}
 \titleformat{\chapter}
   {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}%\fontsize{15.75bp}{20.0bp}\selectfont}
   {\nwafu@chaptername}{1em}{}
 \titlespacing*{\chapter}{0pt}{10bp}{10bp}
 \setlength\nwafuparleft{0pt}
 \setlength\leftskip{\nwafuparleft}
}
\renewcommand{\backmatter}{
  %\if@openright\cleardoublepage\else\clearpage\fi
  \nwafu@backmatter
  \@frontmatterfalse
  \@backmattertrue
  \@appendixfalse
  \@mainmatterfalse
  \@bibliofalse
  %\fancyhead[C]{致谢}%
  %\pagestyle{style@back}
  \titleformat{\chapter}
    {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}%\fontsize{15.75bp}{20.0bp}\selectfont}
    {\nwafu@chaptername}{1em}{}
  \titlespacing*{\chapter}{0pt}{10bp}{10bp}
  \setlength\nwafuparleft{0pt}
  \setlength\leftskip{\nwafuparleft}
}
\newlength\nwafuparleft
\ifnwafu@bachelor
  \setlength\nwafuparleft{0pt}%2\ccwd
\else
  \setlength\nwafuparleft{0pt}
\fi
\newcommand\nwafufontparleft{
  \addtolength\@totalleftmargin{\nwafuparleft}
  \addtolength\linewidth{-\nwafuparleft}
  \parshape 1 \nwafuparleft \linewidth
}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true
}
\ifnwafu@bachelor \geometry{
  top=3.0cm,
  bottom=2.0cm,
  left=2.5cm,
  right=2.5cm,
  headheight=2.0cm,
  headsep=2bp,
  footskip=1.0cm
} \else \geometry{
  top=3.3cm,
  bottom=3.3cm,
  left=3.0cm,
  right=2.8cm,
  headheight=15.6bp,
  headsep=0.15cm,
  footskip=15.6bp
}
\fi
\newcommand\nwafu@footerpagenum@decorate[1]{%
\ifnwafu@bachelor%
  \if@frontmatter{#1}\else{- #1 -}\fi%
\else%
  {#1}%
\fi%
}
\fancypagestyle{style@empty}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{style@main}{
  \fancyhead{}
  \ifnwafu@bachelor
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@title}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\nwafu@university\nwafu@worktypecn}
      }
      \else
      {
        \mbox{\zihao{5}\nwafu@title}
      }
      \fi
    }
  \fi
  \fancyfoot{}
  \if@twoside
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \else
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@biblio}{
  \fancyhead{}
  \ifnwafu@bachelor
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\bibname}
      }
      \else
      {
        \mbox{\songti\zihao{5}\bibname}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\nwafu@university\nwafu@worktypecn}
      }
      \else
      {
        \mbox{\zihao{5}\nwafu@title}
      }
      \fi
    }
  \fi
  \fancyfoot{}
  \if@twoside
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \else
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@appendix}{
  \fancyhead{}
  \ifnwafu@bachelor
    \renewcommand{\chaptermark}[1]{%
      \markboth{\@chapapp}{}}
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\nwafu@university\nwafu@worktypecn}
      }
      \else
      {
        \mbox{\zihao{5}\nwafu@title}
      }
      \fi
    }
  \fi
  \fancyfoot{}
  \if@twoside
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \else
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@back}{
  \fancyhead{}
  \ifnwafu@bachelor
    %\renewcommand{\chaptermark}[1]{%
    % \markboth{##1}{}}
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\nwafu@university\nwafu@worktypecn}
      }
      \else
      {
        \mbox{\zihao{5}\nwafu@title}
      }
      \fi
    }
  \fi
  \fancyfoot{}
  \if@twoside
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \else
    \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\ifnwafu@lang@cn
  \ctexset{%
    appendixname=附录,
    contentsname={目\hspace{\ccwd}录},
    listfigurename=插图索引,
    listtablename=表格索引,
    figurename=图,
    tablename=表,
    bibname=参考文献,
    indexname=索引,
  }
  \newcommand\listequationname{公式索引}
  \newcommand\equationname{式}
\else
  \newcommand\listequationname{List of Equations}
  \newcommand\equationname{Equation}
\fi
\ifnwafu@bachelor
  \newcommand{\cabstractname}{摘要}
  \newcommand{\eabstractname}{Abstract}
\else
  \newcommand{\cabstractname}{摘\hspace{\ccwd}要}
  \newcommand{\eabstractname}{Abstract}
\fi
\let\CJK@todaysave=\today
\def\CJK@todaysmall@short{\the\year 年 \the\month 月}
\def\CJK@todaysmall{\the\year 年 \the\month 月 \the\day 日}
\def\CJK@todaybig@short{\zhdigits{\the\year}年\zhnumber{\the\month}月}
\def\CJK@todaybig{\zhdigits{\the\year}年\zhnumber{\the\month}月\zhnumber{\the\day}日}
\def\CJK@today{\CJK@todaysmall}
\renewcommand\today{\CJK@today}
\newcommand\CJKtoday[1][1]{%
  \ifcase#1\def\CJK@today{\CJK@todaysave}
    \or\def\CJK@today{\CJK@todaysmall}
    \or\def\CJK@today{\CJK@todaybig}
  \fi}
\AtBeginDocument{%
  \pagestyle{style@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\nwafu@chapter@titleformat[1]{%
  \ifnwafu@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    name={第,章},
    number=\arabic{chapter},
    afterindent=true,
    pagestyle={style@main},
    beforeskip   = {0.5\baselineskip}, %defalut 2\baselineskip
    afterskip    = {0.5\baselineskip},
    %fixskip = true,
    %beforeskip={\ifnwafu@bachelor 20bp\else 20bp\fi},
    %aftername=\hskip\ccwd,
    %afterskip={\ifnwafu@bachelor 20bp\else 20bp\fi},
    format={\centering\sffamily\nwafu@font@title\ifnwafu@bachelor\zihao{3}\else\zihao{3}\fi},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\nwafu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifnwafu@bachelor 8bp\else 20bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifnwafu@bachelor 8bp\else 20bp\fi\@plus 1ex \@minus .2ex},
    format={\sffamily\nwafu@font@title\ifnwafu@bachelor\zihao{4}\else\zhihao{4}\fi},
    %indent=2\ccwd,
  },
  subsection={
    afterindent=true,
    beforeskip={\ifnwafu@bachelor 8bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifnwafu@bachelor 8bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    format={\sffamily\nwafu@font@title\ifnwafu@bachelor\zihao{-4}\else\zihao{-4}\fi},
    %numberformat={\sffamily\ifnwafu@bachelor\banxiaosi[1.154]\else\banxiaosi[1.538]\fi},
    indent=2\ccwd,
  },
  subsubsection={
    name={（,）},
    number= \arabic{subsubsection},
    afterindent=true,
    beforeskip={\ifnwafu@bachelor 8bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={8bp \@plus .2ex},
    format={\sffamily\songti\ifnwafu@bachelor\zihao{-4}\else\zihao{-4}\fi},
    indent=2\ccwd,
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true
}
\newcounter{nwafu@bookmark}
\NewDocumentCommand\nwafu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{nwafuthesis}{You have to use the star form: \string\nwafu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{nwafu@bookmark}\@ne
      \pdfbookmark[0]{#3}{nwafuchapter.\thenwafu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \ifnwafu@bachelor \ctexset{chapter/beforeskip=25bp} \fi
  \chapter*{#3}%
  \ifnwafu@bachelor \ctexset{chapter/beforeskip=15bp} \fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
}
\setcounter{secnumdepth}{3}
\ifnwafu@lang@en
  \titlecontents{chapter}[5pc]
    {\nwafu@font@toc}
    {\contentslabel[\chaptername~\thecontentslabel]{5pc}}
    {\renewcommand\thecontentslabel{\relax}\hspace*{-5pc}}
    {\titlerule*[1ex]{.}\contentspage}
\else
  \titlecontents{chapter}[3.5pc]
    {\nwafu@font@toc}
    {\contentslabel[\thecontentslabel]{3.5pc}}
    {\hspace*{-3.5pc}}
    {\titlerule*[1ex]{.}\contentspage}
\fi
\titlecontents{section}[3pc]
  {\nwafu@font@toc}
  {\contentslabel[\thecontentslabel]{2pc}}
  {}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{subsection}[5pc]
  {\nwafu@font@toc}
  {\contentslabel[\thecontentslabel]{3pc}}
  {}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{figure}[\nwafu@indentloft]
  {\nwafu@font@toc}
  {\contentslabel[\figurename~\thecontentslabel]{\nwafu@indentloft}}
  {\figurename}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{table}[\nwafu@indentloft]
  {\nwafu@font@toc}
  {\contentslabel[\tablename~\thecontentslabel]{\nwafu@indentloft}}
  {\tablename}
  {\titlerule*[1ex]{.}\contentspage}
\DefineBibliographyExtras{english}{\renewcommand*{\bibrangedash}{$\sim$}}
\newcommand\nwafu@font@bib{\zihao{-5}}%\linespread{1.0}
\renewcommand{\bibfont}{\nwafu@font@bib}%\fangsong
\DeclareFieldFormat[article]{journaltitle}{\iffieldequalstr{userd}{chinese}{#1}{\textit{#1}}\isdot}%
\renewcommand{\postnotedelim}{\addcolon\space}
\DeclareFieldFormat{postnote}{#1}
\renewcommand*{\nameyeardelim}{\space}
\DeclareDelimFormat[bib,biblist]{nameyeardelim}{\addperiod\space}
\DefineBibliographyStrings{english}{
    %and         = {\addcomma},%将第2和3人名见的and符号改成 逗号，用\finalnamedelim命令也可以定义，参见3.9.1节
    %andcn       = {\addcomma},%\str@andcn\ and本地化字符串的中文对应词
    andincitecn = {和},%将标注中的分开，便于与文献表中的区分
    andincite   = {and},
    mathesiscn={[硕士学位论文]},
    phdthesiscn={[博士学位论文]},
    in={In:\addspace},
    incn={见:\addspace},
}
\DeclareDelimFormat{finalnamedelim}{%
  \ifnumgreater{\value{liststop}}{2}{\finalandcomma}{}%
  %\addspace%
  \edef\userfieldabcde{userd}%
  \ifcurrentname{translator}{\edef\userfieldabcde{usere}}{}%
  \ifcurrentname{editor}{\edef\userfieldabcde{userc}}{}%
  \ifcurrentname{author}{\edef\userfieldabcde{userf}}{}%
  \ifcurrentname{bookauthor}{\edef\userfieldabcde{userb}}{}%
  \ifcase\value{gbcitelocalcase}%
    \iffieldequalstr{\userfieldabcde}{chinese}{\bibstring{andincitecn}}{}%
    \iffieldequalstr{\userfieldabcde}{korean}{\bibstring{andkr}}{}%
    \iffieldequalstr{\userfieldabcde}{japnese}{\bibstring{andjp}}{}%
    \iffieldequalstr{\userfieldabcde}{english}{\addspace\bibstring{andincite}\addspace}{}%
    \iffieldequalstr{\userfieldabcde}{french}{\addspace\bibstring{and}\addspace}{}%
    \iffieldequalstr{\userfieldabcde}{russian}{\addspace\bibstring{and}\addspace}{}%
  \or%
  \bibstring{andincitecn}%
  \or%
  \addspace\bibstring{andincite}\addspace%
  \fi
}
\DeclareDelimFormat{strandothersdelim}{%
  \ifnumgreater{\value{liststop}}{2}{\finalandcomma}{}%
  %\addspace%
  \edef\userfieldabcde{userd}%
  \ifcurrentname{translator}{\edef\userfieldabcde{usere}}{}%
  \ifcurrentname{editor}{\edef\userfieldabcde{userc}}{}%
  \ifcurrentname{author}{\edef\userfieldabcde{userf}}{}%
  \ifcurrentname{bookauthor}{\edef\userfieldabcde{userb}}{}%
  \ifcase\value{gbcitelocalcase}%
    \iffieldequalstr{\userfieldabcde}{chinese}{\bibstring{andothersincitecn}}{}%中文已经通过english本地化字符串定义
    \iffieldequalstr{\userfieldabcde}{korean}{\bibstring{andotherskr}}{}%韩语未定义，所以与bib中一致
    \iffieldequalstr{\userfieldabcde}{japnese}{\bibstring{andothersjp}}{}%日与同韩语
    \iffieldequalstr{\userfieldabcde}{english}{\bibstring{andothersincite}}{}%英语已定义
    \iffieldequalstr{\userfieldabcde}{french}{\bibstring{andothers}}{}%法语未定义，若要定义需要针对french本地化字符串定义
    \iffieldequalstr{\userfieldabcde}{russian}{\bibstring{andothers}}{}%俄语未定义，若要定义需要针对russian本地化字符串定义
  \or%
  \bibstring{andothersincitecn}%
  \or%
  \bibstring{andothersincite}%
  \fi
}
\AtEveryCitekey{%
  \iffieldequalstr{userf}{chinese}{\renewcommand*{\andothersdelim}{}}%\addthinspace
  {\renewcommand*{\andothersdelim}{\addspace}}%
}
\newbibmacro*{cite:extradate}{%
  \iffieldundef{extradate} {}
  {\printtext[bibhyperref]{\printlabeldateextra}}%\printfield{extradate}
}
\renewbibmacro*{date+extradate}{%
  \iffieldundef{labelyear}{}%
  {\ifboolexpr{%
      test {\ifentrytype{patent}}
      or
      (test {\ifentrytype{newspaper}})%
    }%
    {\printtext{\blx@isodate{}{}}}%
    {\printtext{%
        \iflabeldateisdate {\printdateextra} {\printlabeldateextra}}}%
  }%
}
\renewbibmacro*{url+urldate}{%
  % \usebibmacro{url}%%更换url的位置，放到下面
  \usebibmacro{url}%
  \iffieldundef{urlyear}%
  {}
  {%\setunit*{\addspace}%
    \usebibmacro{urldate}
  }
}
\DeclareFieldFormat{addnumflag}{%
  \ifentrytype{newspaper}
  {\setunit{\addcomma\addspace}\printtext{#1}}
  {\nobreak\printtext{(}\nobreak #1\nobreak\printtext{)}}
}
\newbibmacro*{patenttitle}{%原输出来自biblatex.def文件
  \ifboolexpr{%
    test{\iffieldundef{title}}%
    and%
    test{\iffieldundef{subtitle}}%
  }%
  {}%
  {
    \printtext[title]{\bibtitlefont%
    \printfield[titlecase]{title}%
    \ifboolexpr{test {\iffieldundef{subtitle}}}%这里增加了对子标题的判断，解决不判断多一个点的问题
    {}
    {
      \setunit{\subtitlepunct}%
      \printfield[titlecase]{subtitle}}%
      \iffieldundef{titleaddon}{}%判断一下titleaddon，否则直接加可能多一个空格
      {\setunit{\subtitlepunct}\printfield{titleaddon}}%
      \setunit{\adddot\addspace}\printfield{number}%写专利号
      \iftoggle{bbx:gbtype}{\printfield[gbtypeflag]{usera}}{}%
     %\iffieldundef{booktitle}{\newunit}{}%当title是析出时，不要标点
     %\newunit
    }%
  }%
}
\DeclareBibliographyDriver{online}{%源来自standard.BBX
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/editor+others/translator+others}%
  \ifnameundef{author}{}{\setunit{\labelnamepunct}\newblock}%这一段用于去除作者不存在时多出的标点
  \usebibmacro{title}%
  \iftoggle{bbx:gbstrict}{}{%
    \newunit%
    \printlist{language}%
    \newunit\newblock
    \usebibmacro{byauthor}%
    \newunit\newblock
    \usebibmacro{byeditor+others}%
    \newunit\newblock
    \printfield{note}
  }%
  \newunit
  \printfield{version}%
  \newunit\newblock
  % \printlist{organization}%
  \printlist{institution}%
  \newunit\newblock
  \ifboolexpr{%
    test{\iffieldundef{day}}
    and
    test{\iffieldundef{endday}}
    and
    test{\iffieldundef{eventday}}%
  }{\usebibmacro{date}}%
  %{\usebibmacro{modifydate}}%修改或更新日期，为带括号的时间
  \usebibmacro{url+urldate}%从下面移上来
  \newunit\newblock
  \iftoggle{bbx:eprint}
    {\usebibmacro{eprint}}
    {}%
  \newunit\newblock
  %\usebibmacro{url+urldate}%
  %\newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \newunit\newblock
  \iftoggle{bbx:related}
  {
    \usebibmacro{related:init}%
    \usebibmacro{related}
  }
  {}%
  \usebibmacro{finentry}
}
\DeclareBibliographyDriver{patent}{%源来自standard.BBX
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author}%
  \ifnameundef{author}{}{\setunit{\labelnamepunct}\newblock}%这一段用于去除作者不存在时多出的标点
  %\usebibmacro{title}%
  \usebibmacro{patenttitle}%给出专利专用的标题输出
  \iftoggle{bbx:gbstrict}{}{%
    \newunit%
    \printlist{language}%
    \newunit\newblock
    \usebibmacro{byauthor}
  }%
  \newunit\newblock
  \printfield{type}%
  \setunit*{\addspace}%
  %\printfield{number}%已放到patenttitle中处理
  \iflistundef{location}
  {}
  {
    \setunit*{\addspace}%
    \printtext{%[parens]
      \printlist[][-\value{listtotal}]{location}
    }
  }%
  \newunit\newblock
  \usebibmacro{byholder}%
  \newunit\newblock
  \printfield{note}%
  \newunit\newblock
  %\usebibmacro{newsdate}%
  %\newunit\newblock
  \usebibmacro{doi+eprint+url}%
  \newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \newunit\newblock
  \iftoggle{bbx:related}
  {
    \usebibmacro{related:init}%
    \usebibmacro{related}
  }
  {}%
  \usebibmacro{finentry}
}
\setlength{\bibitemsep}{2pt}
\setlength{\bibnamesep}{0ex}
\setlength{\bibinitsep}{0ex}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\hypersetup{
  hidelinks,
  bookmarksnumbered=true,
}
\ifxetex
\RequirePackage{upgreek}
\sisetup{
  math-micro = {\upmu},
  text-micro = {\textmu},
}
\fi
\ifnwafu@lang@cn
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand\figureautorefname\figurename
\renewcommand\tableautorefname\tablename
\newcommand\subfigureautorefname\figureautorefname
\renewenvironment{proof}[1][\proofname]{
  \pushQED{\qed}%
  \normalfont
  \topsep0pt \partopsep0pt % no space before
  \trivlist
  \nwafufontparleft
  \item[\hskip\labelsep\hskip\parindent
        \nwafu@font@title\selectfont
    #1\@addpunct{:}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\ifnwafu@lang@cn
  \renewenvironment{proof}[1][\proofname]{
    \pushQED{\qed}%
    \normalfont
    \topsep0pt \partopsep0pt % no space before
    \trivlist
    \nwafufontparleft
    \item[\hskip\labelsep\hskip\parindent
          \nwafu@font@title\selectfont
      #1\@addpunct{:}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft}{\parindent}
    {}{：}
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{#2}\thmnote{（#3）}}
\else\ifnwafu@lang@en
  \renewenvironment{proof}[1][\proofname]{
    \pushQED{\qed}%
    \normalfont
    \topsep0pt \partopsep0pt % no space before
    \trivlist
    \nwafufontparleft
    \item[\hskip\labelsep\hskip\parindent
          \itshape\selectfont
      #1\@addpunct{:}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft\itshape\selectfont}{\parindent}
    {}{:~}
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
\else
  \popQED\endtrivlist\@endpefalse
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft}{\parindent}
    {}{: }
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{#2}\thmnote{(#3)}}
\fi\fi
\newcommand\nwafutheoremg[3][\@empty]{
  \newtheorem{#2}{#3}
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newcommand\nwafutheoremchap[3][\@empty]{
  \newtheorem{#2}{#3}[chapter]
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newcommand\nwafutheoremchapu[3][\@empty]{
  \newaliascnt{#2}{dummytheorem}
  \newtheorem{#2}[#2]{#3}
  \aliascntresetthe{#2}
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newtheorem{dummytheorem}{Dummy}[chapter]
\newcommand\nwafufontcaption{
  \ifnwafu@bachelor
    \nwafu@font@title\zihao{5}
  \else
    \normalfont
  \fi
}
\setlength{\floatsep}{12bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{12bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{12bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifnwafu@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\nwafu@tabular{\zihao{5}\old@tabular}
\DeclareCaptionLabelFormat{nwafu}{{\zihao{5}\nwafufontcaption #1~#2}}
\DeclareCaptionLabelSeparator{nwafu}{\hspace{1em}}
\DeclareCaptionFont{nwafu}{\nwafufontcaption}
\captionsetup{labelformat=nwafu,labelsep=nwafu,font=nwafu,skip=12bp}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}
\captionsetup[sub]{font=nwafu}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\captionsetup{justification=centerlast}
\setlength\heavyrulewidth{0.5bp}
\setlength\lightrulewidth{0.5bp}
\setlength\cmidrulewidth{0.5bp}
\ifnwafu@bachelor
  \DeclareFloatFont{bachelor}{\linespread{1.3}\fontsize{10.5bp}{15.6bp}\selectfont}
  \floatsetup[table]{font=bachelor}
\fi
\setlist{nosep}
\setlist*{leftmargin=*}
\setlist[1]{labelindent=\dimexpr\parindent+\nwafuparleft\relax} %% Only the level 1
\newcommand{\nwafu@dateCn}{
  \the\year 年\the\month 月
}
\newcommand{\nwafu@dateEn}{
  \ifcase\the\month
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
  \fi, \the\year
}
\ifnwafu@blankleft
  \let\nwafu@cleardoublepage\cleardoublepage
  \renewcommand{\cleardoublepage}{
    \clearpage
    {
    \pagestyle{style@empty}
    \nwafu@cleardoublepage
    }
  }
\fi
\newbox\nwafu@kw
\newcommand{\nwafu@put@kw}[2]{%
  \begingroup
  \setbox\nwafu@kw=\hbox{#1}
  \noindent\hangindent\wd\nwafu@kw\hangafter1
  \box\nwafu@kw#2\par
  \endgroup}
\def\makecover{
  \ifnwafu@lang@cn
    \hypersetup{
      pdftitle = {\nwafu@value@title},
      pdfauthor = {\nwafu@value@author},
      pdfkeywords = {\nwafu@keywords@pdf}
    }
  \else\ifnwafu@lang@en
    \hypersetup{
      pdftitle = {\nwafu@valueEn@title},
      pdfauthor = {\nwafu@valueEn@author},
      pdfkeywords = {\nwafu@keywordsEn@pdf}
    }
  \fi\fi
  \pagestyle{style@empty}
  \pagenumbering{Alph}
  \cleardoublepage

  \ifnwafu@bachelor
    \nwafu@make@cover@bachelor
  \else
    \nwafu@make@cover@master@cn
    \nwafu@make@cover@master@en
  \fi
}
\newcommand\makedeclare{
  \ifnwafu@bachelor
    \nwafu@make@declare@bachelor
  \else
    \nwafu@make@declare@master
  \fi
}
\newcommand\makeabstract{
  %\pagestyle{style@empty}
  \cleardoublepage

  \ifnwafu@bachelor
    \nwafu@make@abstract@bachelor@cn
    \nwafu@make@abstract@bachelor@en
  \else
    \nwafu@make@abstract@master@cn
    \nwafu@make@abstract@master@en
  \fi
}
\newcommand\nwafutableofcontents{
  \cleardoublepage
  \chapter*{
    \ifnwafu@bachelor
      \linespread{1.5}\fontsize{16bp}{15.6bp}\selectfont
    \fi
    \contentsname}
  \@starttoc{toc}
}
\newcommand\nwafulistoffigurestables{
  \clearpage
  \chapter*{\listfiguretablename}
  \@starttoc{lof}
  \bigskip
  \@starttoc{lot}
}
\newcommand\nwafu@make@cover@bachelor{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begin{flushright}
    \linespread{1.25}\sihao\bfseries%\sffamily\heiti\fontsize{14bp}{16.8bp}\selectfont
    \nwafu@label@stuno ： \underline{\nwafu@value@studentid}\hspace*{1.3cm}
    \vspace{\stretch{2}}
  \end{flushright}

  \begin{center}
    \includegraphics[width=0.7\linewidth]{logo/nwafubilogo.png}
    \vspace{\stretch{1.5}}

    \linespread{1}\heiti\yihao%\fontsize{35bp}{35bp}\selectfont%\zihaoxiaochu
    {\makebox[0.8\linewidth][s]{\nwafu@value@gradyear 届本科生\nwafu@worktypecn}}
    %{\nwafu@value@gradyear 届本科生\nwafu@worktypecn}
    \vspace{\stretch{1.5}}
  \end{center}

  \begin{center}
    \linespread{1.212}\heiti\erhao%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    \begin{tabular}{C{4em}C{4.0in}}
    {\nwafu@label@title ：} &
    \ifnwafu@lang@en
      {\expandafter\uline\expandafter{\nwafu@valueEn@title} \par}
    \fi
    {\expandafter\uline\expandafter{\nwafu@value@title}}
    \end{tabular}
    \vspace{\stretch{5}}

    \linespread{1}\sffamily\songti\fontsize{15.75bp}{37.6bp}\selectfont%\bfseries
    \begin{tabular} {cc}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@college} ： & \nwafu@value@college \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@major \nwafu@label@classid} ：& \nwafu@value@major \nwafu@value@classid 班 \\ \cline{2-2}
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@author} ：& \nwafu@value@author \\ \cline{2-2}
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@adviser} ：& \nwafu@value@advisers \\ \cline{2-2}
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@coadviser} ：& \nwafu@value@coadvisers \\ \cline{2-2}
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@applydate} ：& \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate} \\ \cline{2-2}
    \end{tabular}
    %\begin{tabular} {cc}
    %  \nwafu@label@college ： & \nwafu@value@college \\ \cline{2-2}
    %  \nwafu@label@major\hfill  \nwafu@label@classid ： & \nwafu@value@major \nwafu@value@classid 班 \\ \cline{2-2}
    %  \nwafu@label@author ： & \nwafu@value@author \\ \cline{2-2}
    %  \nwafu@label@adviser ： & \nwafu@value@advisers \\ \cline{2-2}
    %  \nwafu@label@coadviser ： & \nwafu@value@coadvisers \\ \cline{2-2}
    %  \nwafu@label@applydate ： & \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate} \\ \cline{2-2}
    %\end{tabular}
  \end{center}
  \restoregeometry
}
\newcommand\nwafu@make@declare@bachelor{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begin{center}
    \linespread{1.5}\bfseries\sffamily\songti\sanhao%\fontsize{18bp}{31.2bp}\selectfont
    本科生\nwafu@worktypecn{}的独创性声明
  \end{center}

  \begingroup
    \linespread{1.5}\kaishu\xiaosi%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本人声明：所呈交的\nwafu@worktypecn{}是我个人在导师指导下独立进行的研究工作及取得的研究结果。
    尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究结果，
    也不包含其他人和自己本人已获得\nwafu@label@nwafu{}或其它教育机构的学位或证书而使用过的材料。
    与我一同工作的同事对本研究所做的任何贡献均已在论文的致谢中作了明确的说明并表示了谢意。
    如违反此声明，一切后果与法律责任均由本人承担。

    \vspace{15.6bp}

    \begin{flushleft}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
      本\hfill{}科\hfill{}生\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日 \\
      \end{tabular}
    \end{flushleft}
  \endgroup

  \vspace{26.2bp}

  \begin{center}
    \linespread{1.5}\bfseries\sffamily\songti\sanhao%\fontsize{18bp}{31.2bp}\selectfont
    关于本科生\nwafu@worktypecn{}知识产权的说明
  \end{center}

  \begingroup
    \linespread{1.5}\kaishu\xiaosi%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本\nwafu@worktypecn{}的知识产权归属\nwafu@label@nwafu{}。本人同意\nwafu@label@nwafu{}保存
    或向国家有关部门或机构送交论文的纸质版和电子版，允许论文被查阅和借阅。

    本人保证，在毕业离开\nwafu@label@nwafu{}后，发表或者使用本\nwafu@worktypecn{}及其相关的工作成果时，
    将以\nwafu@label@nwafu{}为第一署名单位，否则，愿意按《中华人民共和国著作权法》等有关规定接受处理并承担法律责任。

    任何收存和保管本论文各种版本的其他单位和个人(包括作者本人)未经本论文作者的导师同意，
    不得有对本论文进行复制、修改、发行、出租、改编等侵犯著作权的行为，
    否则，按违背《中华人民共和国著作权法》等有关规定处理并追究法律责任。

    \vspace{15.6bp}

    \begin{flushleft}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
        本\hfill{}科\hfill{}生\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日 \\[2ex]
        指\hfill{}导\hfill{}教\hfill{}师\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日
      \end{tabular}
    \end{flushleft}
  \endgroup

  \restoregeometry
}
\newcommand\nwafu@make@abstract@bachelor@cn{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  %\pagestyle{empty}

  \begin{center}
    \vspace*{-4.3pt}
    \sffamily\heiti\zihao{3}
    \nwafu@value@title
  \end{center}

  %\begin{center}
  %  \sffamily\heiti\zihao{-3}\vspace{1em}
  %  \nwafu@label@abstract
  %\end{center}

  \begingroup
    \setlength\parindent{2\ccwd}\songti\indent
    {\heiti\zihao{-4} \makebox[\widthof{\nwafu@label@keywords}][s]{\nwafu@label@abstract}：}
    {\songti\zihao{5}\nwafu@abstract}
  \endgroup

  \vspace{2ex}

  \begingroup
    \setlength\parindent{2\ccwd}\songti\indent
    \nwafu@put@kw{\heiti\zihao{-4}\nwafu@label@keywords{}：}{\songti\zihao{5}\nwafu@keywords}
  \endgroup

}
\newcommand\nwafu@make@abstract@bachelor@en{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \begin{center}
    \vspace*{-4.3pt}
    \sffamily\heiti\zihao{3}
    %\phantomsection
    %\addcontentsline{toc}{chapter}{\nwafu@labelEn@abstract}
    \textsc{\nwafu@valueEn@title}
  \end{center}

  %\begin{center}
  %  \sffamily\heiti\zihao{-3}\vspace{18pt}
  %  \nwafu@labelEn@abstract
  %  \vspace{10pt}
  %\end{center}

  \begingroup
    \setlength\parindent{2\ccwd}\rmfamily\indent
    {\bfseries \zihao{-4} \nwafu@labelEn@abstract: }
    {\zihao{5}\nwafu@abstractEn}
  \endgroup

  \vspace{2ex}

  \begingroup
    \setlength\parindent{2\ccwd}\rmfamily\indent
    \nwafu@put@kw{\nwafu@textbf{\zihao{-4}\nwafu@labelEn@keywords: } }{\nwafu@keywordsEn}
  \endgroup
}
\newcommand\nwafu@make@cover@master@cn{
  \cleardoublepage

  \begin{multicols}{2}
    \linespread{1}\songti\fontsize{10.5bp}{15.6bp}\selectfont
    \begin{flushleft}
      中图分类号：\nwafu@value@libraryclassid \par
      学科分类号：\nwafu@value@subjectclassid
    \end{flushleft}
    \columnbreak
    \begin{flushright}
      论文编号：\nwafu@value@thesisid
    \end{flushright}
  \end{multicols}
  \vspace{\stretch{2}}

  \begin{center}
    \linespread{1}\songti\fontsize{42bp}{62.4bp}\selectfont\nwafu@worktypecn
    \vspace{\stretch{2}}

    \linespread{1}\sffamily\heiti\fontsize{26bp}{46.8bp}\selectfont\nwafu@value@title
  \end{center}
  \vspace{\stretch{3}}

  \begin{center}
  \linespread{1}\rmfamily\songti\fontsize{16bp}{31.2bp}\selectfont
  \renewcommand\linebreak{\par}
  \begin{tabular} {@{\hskip 1.125in}c@{\hskip .6389in}p{3.1115in}}
    \nwafu@label@researchername & \nwafu@value@author \\
\ifnwafu@techmaster
    \nwafu@label@professionaltype & \nwafu@value@majorsubject \\
    \nwafu@label@professionalfield & \nwafu@value@researchfield \\
\else
    \nwafu@label@majorsubject & \nwafu@value@majorsubject \\
    \nwafu@label@researchfield & \nwafu@value@researchfield \\
\fi
    \nwafu@label@adviser & \nwafu@value@advisers \\
  \end{tabular}
  \end{center}
  \vspace{\stretch{3}}

  \begin{center}
    \linespread{1}
    \includegraphics{nwafu-jianqi.pdf}

    \kaishu\fontsize{18bp}{31.2bp}\selectfont
    \nwafu@label@graduateschool\quad \nwafu@value@college

    \kaishu\fontsize{16bp}{31.2bp}\selectfont
    \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate}

  \end{center}
}
\newcommand\nwafu@make@cover@master@en{
  \cleardoublepage

  \begin{center}
    \linespread{1.5}\fontsize{14bp}{14bp}\rmfamily\selectfont
    \nwafu@labelEn@nwafu \par
    \nwafu@labelEn@graduateschool \par
    \nwafu@valueEn@college \vspace{\stretch{1}}

    \linespread{1}\fontsize{22bp}{31.2bp}\rmfamily\selectfont
    \nwafu@textbf{\nwafu@valueEn@title}
    \par \vspace{\stretch{1}}

    \linespread{1.75}\fontsize{14bp}{16.8bp}\rmfamily\selectfont
    A Thesis in \\
    \nwafu@valueEn@majorsubject \\
    by \\
    \nwafu@valueEn@author \\
    Advised by \\
    \nwafu@valueEn@advisers \par \bigskip

    Submitted in Partial Fulfillment \\
    of the Requirements \\
    for the Degree of \\
    \nwafu@valueEn@degreefull \par\bigskip

    \ifdefempty{\nwafu@valueEn@applydate}{\nwafu@dateEn}{\nwafu@valueEn@applydate}
  \end{center}
}
\newcommand\nwafu@make@declare@master{
  \cleardoublepage

  \begin{center}
  \linespread{1.0}\songti\fontsize{22bp}{62.4bp}\selectfont
  \vspace*{25.5bp} \vspace{-\parskip}\vspace{-\baselineskip}
  承诺书 \par
  \end{center}

  \begingroup
  \vspace*{31.4bp} \vspace{-\parskip}\vspace{-\baselineskip}
  \linespread{1.0}\rmfamily\songti\fontsize{16bp}{30bp}\selectfont
  \setlength\parindent{2\ccwd}

  本人声明所呈交的\nwafu@worktypecn 是本人在导师指导下进行的研究工作及取得的研究成果。
  除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，
  也不包含为获得\nwafu@label@nwafu 或其他教育机构的学位或证书而使用过的材料。

  本人授权\nwafu@label@nwafu 可以将学位论文的全部或部分内容编入有关数据库进行检索，
  可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。

  （保密的学位论文在解密后适用本承诺书）

  \endgroup

  \vfill
  \begin{flushright}
  \linespread{1.0}\songti\fontsize{14bp}{25bp}\selectfont
  \makebox[5\ccwd][c]{作者签名：} \underline{\hspace{7em}} \par
  \makebox[5\ccwd][c]{日 \hfill 期：} \underline{\hspace{7em}} \par
  \end{flushright}
  \vfill
}
\newcommand\nwafu@make@abstract@master@cn{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \chapter*{\heiti\nwafu@label@abstract}

  \begingroup
    \setlength\parindent{2\ccwd}
    \rmfamily\songti\indent

    \nwafu@abstract
  \endgroup
  \vskip 2\baselineskip minus 1.5\baselineskip

  \nwafu@put@kw{\nwafu@textbf{\songti\nwafu@label@keywords}}{\songti\nwafu@keywords}
}
\newcommand\nwafu@make@abstract@master@en{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \chapter*{\textrm{\nwafu@textbf{\nwafu@labelEn@ABSTRACT}}}

  \begingroup
    \setlength\parindent{1em}
    \nwafu@abstractEn
  \endgroup
  \vskip 2\baselineskip minus 1.5\baselineskip

  \nwafu@put@kw{\nwafu@textbf{\nwafu@labelEn@keywords}}{\nwafu@keywordsEn}
}

\newcommand{\nwafuthesis}{%
  \makebox{\rmfamily%
    N\hspace{-0.2ex}\raisebox{-0.5ex}{W}\raisebox{0.5ex}{\hspace{-0.2ex}\textsc{afu}}\hspace{0.3ex}%
    \textsc{Thesis}}}
\newcommand{\oldnwafuthesis}{%
  N\raisebox{0.5ex}{U}\hspace{-0.3ex}AA%
  \textsc{Thesis}
}
\newcommand{\seuthesix}{%
  \makebox{S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
  \textsc{Thesix}}
}
\newcommand\nuaathesis{\textsc{Nuaa}\-\textsc{Thesis}}
%% 
%% Copyright (C) 2019 by nangeng
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%% 
%%     http://www.apache.org/licenses/LICENSE-2.0
%% 
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% 
%% This work consists of the file  nwafuthesis.dtx
%% and the derived files           nwafuthesis.ins,
%%                                 nwafuthesis.cls,
%%                                 nwafuthesis.cfg and
%%                                 nwafuthesis.pdf
%% 
%%
%% End of file `nwafuthesis.cls'.
