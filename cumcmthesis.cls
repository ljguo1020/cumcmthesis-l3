\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cumcmthesis}[2022/03/11 v1.0 Standard LaTeX Template for CUMCM]
\LoadClass[a4paper,UTF8,zihao=-4]{ctexart}

\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{mcmthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

%载入必要宏包
\RequirePackage{
  geometry    ,    graphicx   ,   xeCJKfntef ,
  calc        ,    makecell   ,   tikz       ,
  listings    ,    caption    ,   subcaption ,
  amsmath     ,    amsfonts   ,   amssymb    ,
  float       ,    booktabs   ,   multirow   ,
  url         ,    enumitem   ,   etoolbox   ,
  hyperref    ,    amsthm     ,   multicol   ,
}
%设置页边距
\geometry{margin=2.5cm}
%配置字体
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\renewcommand*{\songti}{\CJKfamily{song}}
\setCJKfamilyfont{kai}[AutoFakeBold]{KaiTi}
\renewcommand*{\kaishu}{\CJKfamily{kai}}
\setmainfont{Times New Roman}
\setsansfont{Arial}
%添加图片路径
\graphicspath{{figures/}}

\def\pbox#1{\tikz\node[anchor = south,align=center]{#1};}

\ExplSyntaxOn
  \cs_new:Npn \cumcm_commit: {
    \titlepage 
    \linespread{1.5}\selectfont
    \noindent 赛区评阅编号（由赛区组委会填写）：\\[-8pt] 
    \noindent\rule[5pt]{\textwidth}{1pt}\par\vspace*{-3ex} 

    \begin{center}
    {\zihao{-3}\heiti{\bfseries\int_use:N \c_sys_year_int}年高教社杯全国大学生数学建模竞赛} \par \vspace*{2ex}
    {\zihao{3}\bfseries\songti\makebox[5em]{承\hfill 诺\hfill 书} \par}
    \end{center}\par

    {\songti\zihao{-4} 
      我们仔细阅读了《全国大学生数学建模竞赛章程》和《全国大学生数学建模竞赛参赛规则》（以下简称 “竞赛章程和参赛规则”，可从\,\url{http://www.mcm.edu.cn}{}下载）。\par 
      我们完全清楚，在竞赛开始后参赛队员不能以任何方式，包括电话、电子邮件、“贴吧”、QQ群、微信群等，与队外的任何人（包括指导教师）交流、讨论与赛题有关的问题；无论主动参与讨论还是被动接收讨论信息都是严重违反竞赛纪律的行为。\par 
      我们完全清楚，在竞赛中必须合法合规地使用文献资料和软件工具，不能有任何侵犯知识产权的行为。否则我们将失去评奖资格，并可能受到严肃处理。
    }\par 

    {\songti\zihao{-4}\bfseries
      我们以中国大学生名誉和诚信郑重承诺，严格遵守竞赛章程和参赛规则，以保证竞赛的公正、公平性。如有违反竞赛章程和参赛规则的行为，我们将受到严肃处理。
    }\par 

    {\songti\zihao{-4}
      我们授权全国大学生数学建模竞赛组委会，可将我们的论文以任何形式进行公开展示（包括进行网上公示，在书籍、期刊和其他媒体进行正式或非正式发表等）。
    }\par\vspace*{5ex}

    {\zihao{-4}
    我们参赛选择的题号（从A/B/C/D/E中选择一项填写）：
    \CJKunderline{\hspace*{1em}\tl_use:N \l_cumcm_tihao_tl\hfill\makebox[0.66em]{}}\par
    我们的报名参赛队号（12位数字全国统一编号）：
    \CJKunderline{\hspace*{1em}\tl_use:N \l_cumcm_baominghao_tl\hfill\makebox[0.66em]{}}\par
    参赛学校（完整的学校全称，不含院系名）：
    \CJKunderline{\hspace*{1em}\tl_use:N \l_cumcm_school_tl\hfill\makebox[0.66em]{}}
    }\par\vspace*{2ex}
    
    {\zihao{-4}\songti\hbox_set:Nn \l_tmpa_box{参赛队员（打印并签名）：\mbox{\hspace{1em}}1.}
      参赛队员（打印并签名）：
      \begin{minipage}[t]{\textwidth - \box_wd:N \l_tmpa_box-0.06cm}
        1.\CJKunderline{\hspace*{1em}\clist_item:Nn \l_cumcm_member_clist{1}\hfill\makebox[0.46em]{}}\par
        2.\CJKunderline{\hspace*{1em}\clist_item:Nn \l_cumcm_member_clist{2}\hfill\makebox[0.46em]{}}\par
        3.\CJKunderline{\hspace*{1em}\clist_item:Nn \l_cumcm_member_clist{3}\hfill\makebox[0.46em]{}}
      \end{minipage}
    }\par\vspace*{3ex}

    {\zihao{-4}\songti
    指导教师或指导教师组负责人（打印并签名）：
    \CJKunderline{\hspace*{1em}\tl_use:N\l_cumcm_supervisor_tl\hfill\makebox[0.66em]{}}
    }\par\vspace*{2ex}
    
    {\kaishu\zihao{-4}
    \hspace*{0.1em} （指导教师签名意味着对参赛队的行为和论文的真实性负责） 
    }\par\vspace*{5ex}

    {\zihao{-4}\songti
      \hfill 日期：\CJKunderline{\hspace*{.5em}\clist_item:Nn \l_cumcm_date_clist{1}\hspace*{.5em}}年 \CJKunderline{\hspace*{.5em}\clist_item:Nn \l_cumcm_date_clist{2}\hspace*{.5em}}月\CJKunderline{\hspace*{.5em}\clist_item:Nn \l_cumcm_date_clist{3}\hspace*{.5em}}日
    }\par\vspace*{5ex}

    {\kaishu\zihao{-4}\bfseries\noindent
      （请勿改动此页内容和格式。此承诺书打印签名后作为纸质论文的封面，注意电子版论文中不得出现此页。以上内容请仔细核对，如填写错误，论文可能被取消评奖资格。）
    }
    \endtitlepage
  }

  \cs_new:Npn \cumcm_numberpage: {
    \titlepage 
    \vspace*{1ex}\noindent
    {\songti\zihao{-4}
      \pbox{赛区评阅编号：\\[-5pt]（由赛区填写）}\rule[0pt]{4.726cm}{0.5pt}
      \pbox{全国评阅编号：\\[-5pt]（全国组委会填写）}\rule[0pt]{4.726cm}{0.5pt}
    }\par 

    \noindent\rule[0pt]{\textwidth}{1pt} 

    \begin{center}
    {\zihao{-3}\heiti{\bfseries\int_use:N \c_sys_year_int}年高教社杯全国大学生数学建模竞赛} \par \vspace*{2ex}
    {\zihao{3}\bfseries\songti\makebox[9em]{编\hfill 号\hfill 专\hfill 用\hfill 页} \par}
    \end{center}\par\vspace*{5ex}

    \begin{center}\songti\zihao{4}
    \hspace*{-7.7em}赛区评阅记录（可供赛区评阅时使用）：\par\vspace*{-.05ex}
    % \begin{tblr}{|Q[c,1.8em]|Q[m,2.8em]|Q[m,2.8em]|Q[m,2.8em]|Q[m,2.8em]|Q[m,2.8em]|Q[m,2.8em]|}
      \begin{tabular}{|p{1.8em}|*{6}{p{2.8em}|}}
      \hline 
       \makecell[c]{评\\[-4pt]阅\\[-2pt]人} & & & & & & \\
       \hline 
       \makecell[c]{备\\[-4pt]注} & & & & & & \\
       \hline
      \end{tabular}
    % \end{tblr}   
    \end{center}

    \vspace*{7ex}\hspace*{5em}
    {\songti\zihao{4}
      \pbox{送全国评阅统一编号:\\[-5pt]（赛区组委会填写）}
    }\par\vspace*{5cm} 

    {\kaishu\zihao{-4}\bfseries
    （请勿改动此页内容和格式。此编号专用页仅供赛区和全国评阅使用，参赛队打印后装订到纸质论文的第二页上。注意电子版论文中不得出现此页。）
    }
    \endtitlepage
  } 









\keys_define:nn { cumcm }
{ 
  info.meta:nn = { cumcm / info } {#1},
  titlepage.bool_set:N       =      \l_cumcm_titlepage_bool       ,
}

\keys_define:nn{ cumcm / info}
{
  tihao.tl_set:N        =      \l_cumcm_tihao_tl        , 
  baominghao.tl_set:N   =      \l_cumcm_baominghao_tl   ,
  school.tl_set:N       =      \l_cumcm_school_tl       ,
  member.clist_set:N    =      \l_cumcm_member_clist    ,
  supervisor.tl_set:N   =      \l_cumcm_supervisor_tl   ,
  date.clist_set:N      =      \l_cumcm_date_clist      ,
  title.tl_set:N        =      \l_cumcm_title_tl        ,
}
\keys_set:nn{cumcm}
{
  info={
    date = {\int_use:N\c_sys_year_int,\int_use:N\c_sys_month_int,\int_use:N\c_sys_day_int},
    title = {全国大学生数学建模竞赛 \LaTeX{} 论文模板},
  },
  titlepage  = true
}


\RenewDocumentCommand{\maketitle}{}
{
  \bool_if:NT \l_cumcm_titlepage_bool 
  {
    \cumcm_commit: 
    \cumcm_numberpage: 
  }
  \pagestyle{plain}
  \begin{center}\zihao{3}\heiti
    \tl_use:N \l_cumcm_title_tl
  \end{center}
}

\NewDocumentCommand{\cumcmsetup}{+m}
{
  \keys_set:nn{cumcm}{#1}
}
\@onlypreamble\cumcmsetup
\ExplSyntaxOff

\NewDocumentCommand{\keywords}{+m}
{
  \par
	\vspace*{1ex}
  {\noindent\zihao{-4}\heiti 关键词：}~{#1}
}

\RenewDocumentEnvironment{abstract}{+b}
{\par 
  \begin{center}
    \heiti\zihao{-4} 摘\quad 要
  \end{center}
  \par
  #1
}
{
  \par 
}

\ctexset{
	section={
		format={\zihao{4}\heiti\centering},
		name={,、},
		aftername={\hspace{0pt}},
		number=\chinese{section},
	},
	subsection={
		format={\zihao{-4}\bfseries\raggedright},
		name={},
		aftername={\hspace{5bp}},
		number={\arabic{section}.\arabic{subsection}},
	},
	subsubsection={
		format={\zihao{-4}\bfseries\raggedright},
		name={},
		aftername={\hspace{5bp}},
		number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}},
	},
	appendix={
		name={附录,：},
		number=\arabic{section},
	}
}


% 载入代码宏包

% 设置代码的默认样式
\lstset{
	frame=none,% 取消边框
	breaklines=true,% 允许自动断行
	% breakatwhitespace=true,% 使用此命令仅允许在空格处自动断行
	showstringspaces=false,% 不显示字符串中的空格
	basicstyle=\small\ttfamily,% 设置代码基本样式
	flexiblecolumns=true,% 改善字母间距
	keywordstyle=\color{blue},% 设置关键词样式
	stringstyle=\color[rgb]{0.75,0,0.75},% 设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},% 设置注释样式
	tabsize=2,% 设置制表符缩进
}

% 设置matlab代码环境
\lstnewenvironment{matlab}[1][]{
	\lstset{
		language=Matlab,	
		keywordstyle=\color{blue},% 设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},% 设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},% 设置注释样式
		#1
	}
}{}

% 设置python代码环境
\lstnewenvironment{python}[1][]{
	\lstset{
		language=Python,
		keywordstyle=\color[RGB]{255,119,0},% 设置Keywords样式
		morekeywords={as},% 将特定单词加入Kewords中
		deletekeywords={print},%从 keywords中去除特定单词
		keywordstyle=[2]\color[RGB]{144,0,144},% 设置Builtins样式
		morekeywords=[2]{print},% 将特定单词加入Builtins中
		stringstyle=\color[RGB]{0,170,0},% 设置字符串样式
		commentstyle=\songti\color[RGB]{221,0,0},% 设置注释样式	
		#1
	}
}{}


\renewcommand\thesubfigure{(\alph{subfigure})}
\captionsetup[sub]{labelformat=simple}
\captionsetup{format=hang}
\DeclareCaptionLabelSeparator*{sspace}{\ \ }
\captionsetup[figure]{labelsep=sspace}
\captionsetup[table]{labelsep=sspace}
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{size-five}{\zihao{5}}
\captionsetup{labelfont={heiti,size-five},textfont={heiti,size-five}}% 设置图表标题为5号、黑体










