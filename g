%
% Modelo para relat￳rio da disciplina de Projecto de Engenharia Informatica
% do MEI.
%
% Incorpora elementos impostos pelo Regulamento de Estudos Pos-Graduados da
% Universidade de Lisboa (Deliberacao 1506/2006 - Diario da Rep￺blica, 2.a s￩rie 
% - n.o 209 - 30 de Outubro de 2006)
%
\documentclass[12pt,openright,twoside]{report}
\usepackage[show]{chato-notes}
\usepackage[utf8]{inputenc}
% Quem tiver problemas com os acentos, trocar utf8 por latin1

\usepackage[portuguese,english]{babel}
\usepackage{times}
\usepackage{url}
\usepackage{graphicx}
\usepackage{mdwlist}
\usepackage[nottoc]{tocbibind}
\usepackage{csquotes}
\usepackage[table,hyperref,x11names]{xcolor}
\usepackage{array,booktabs}
\usepackage{multirow}

\usepackage{dialogue}
%To get figures and tables side by side
\usepackage{floatrow}
\newfloatcommand{capbtabbox}{table}[][\FBwidth]
% end figures and tables side by side

%footnote in tables 
\usepackage{threeparttable}
%end footnote in tables

% Indice remissivo
\usepackage{makeidx}
\makeindex

%quotes
\usepackage{epigraph}
\usepackage{attrib}
\usepackage{titlesec}

%\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
\titleformat{\subsubsection}[runin]{\normalfont\bfseries}{\thesubsection.}{3pt}{}


\usepackage[nomain,acronym,xindy,nonumberlist]{glossaries}
\include{./tex/acronimos}
\makeglossary  

% Links
\usepackage{hyperref}

% Package para cabecalhos
\usepackage{fancyhdr}
\usepackage{lastpage}

\usepackage[font={small}]{caption}
\usepackage{subcaption}
\usepackage[sortcites=true, firstinits=true, isbn=false,
url=false, doi=false, eprint=false]{biblatex}

\bibliography{bibliografia,web}
\fancyhf{} %
\lhead{\nouppercase {\leftmark}} %
\rhead{\nouppercase {\bf \thepage}}
\renewcommand{\headrulewidth}{0.1pt}

% Comando para inserir pagina em branco (inserida na numeracao, mas sem
% numero impresso) para quando e' preciso obrigar um capitulo a comecar
% do lado direito (pagina impar)
\newcommand{\LIMPA}{
\newpage
\mbox{}
\thispagestyle{empty}
}

% Igual, mas insere pagina com numero impresso (normalmente nao se usa)
\newcommand{\LIMPAC}{
\newpage
\mbox{}
\thispagestyle{plain}
}


%%%%%%% PERSONAL COMMANDS %%%%%%%%%%%
\newcommand{\distcontrollers}{\cite{:vn, Tootoonchian:2010vy,Koponen:2010th,Yeganeh:2012jm}}
\newcommand{\distcontrollerspaper}{\cite{Tootoonchian:2010vy, Koponen:2010th,Yeganeh:2012jm}}
%END 

\newcommand{\tbl}[2]{\begin{tabular}{#1}#2\end{tabular}}
\newcommand{\ml}[2]{#1 $\pm$ #2} 

%
% ALTERAR AQUI AS INFORMACOES RELATIVAS AO PROJECTO
%
\newcommand{\PEITITULO}{A Consistent and Fault-Tolerant Network
  Information Base for Scalable Software Defined Networks}
\newcommand{\PEIAutor}{Fábio Andrade Botelho}
\newcommand{\PEIAutorNumAluno}{41625}

%Orientador e CoOrientador *sem* titulos (e.g. Prof. Doutor)
\newcommand{\PEIOrientador}{Alysson Neves Bessani}
\newcommand{\PEICoOrientador}{Fernando Manuel Valente Ramos} %se nao se aplicar, nao importa o que aqui esteja

%Se aplicavel, o supervisor pode ter um titulo (Dr., Eng.) colocado aqui
\newcommand{\PEISupervisorInstituicao}{Nome Completo do Supervisor}  %se nao se aplicar, nao importa o que aqui esteja

\newcommand{\PEIAnoLectivo}{2012/2013}
\newcommand{\PEIAno}{2013}

% Comentar/descomentar conforme conveniente
\newcommand{\PEITIPO}{DISSERTA\c{C}\~{A}O }
%\newcommand{\PEITIPO}{PROJECTO }

% Comentar/descomentar conforme conveniente
%\newcommand{\PEIIdiomaTese}{\selectlanguage{portuguese}}
\newcommand{\PEIIdiomaTese}{\selectlanguage{english}}

% Comentar/descomentar conforme conveniente
%\newcommand{\MEIEspecializacao}{Segurança Informática}
%\newcommand{\MEIEspecializacao}{Arquitectura, Sistemas e Redes de Computadores}
%\newcommand{\MEIEspecializacao}{Interac��o e Conhecimento}
%\newcommand{\MEIEspecializacao}{Engenharia de Software }

\usepackage{ifpdf}
\ifpdf
\pdfinfo {
	/Author (\PEIAutor)
	/Title (Projecto em Segurança Informatica)
	/Subject (Segurança Informatica)
	/Keywords (state machine replication, software defined networks)
	/CreationDate (D:20100510104905)
}
\fi

\usepackage[dvips]{geometry}
\geometry{a4paper=true,portrait=true,left=3cm,right=3cm,top=2.5cm,bottom=3.5cm}

\title{\PEITITULO}
\author{\PEIAutor}
%\date{\today}

\begin{document}

%Capa e pagina de rosto
\include{./tex/capa}

% Agradecimentos
\include{./tex/agradecimentos}

% Pagina do resumo em portugues
\include{./tex/resumo_pt}

% Pagina do resumo em ingles
\include{./tex/resumo_ing}

\pagestyle{plain}

\PEIIdiomaTese

% Indice
\tableofcontents

\LIMPA

%Lista de figuras
\listoffigures

%\addcontentsline {toc} {chapter} {Lista de Figuras}
\newpage
\thispagestyle{empty}
\mbox{}
\newpage

%Lista de tabelas
\listoftables

%\addcontentsline {toc} {chapter} {Lista de Tabelas}
\newpage
\thispagestyle{empty} \mbox{}
\newpage

% ----------------------------------------------------------------------
% Inicio conteudo
\pagestyle{fancy}
\cleardoublepage

\setcounter{page}{1}
\pagenumbering{arabic}

\chapter{Introduction}
\glsresetall
% contexto do trabalho
% se resume o trabalho desenvolvido
% se identificam  contribuicoes 
% estrutura do relatorio 
% sucintamente o enquadramento instituicional 

%Outro capitulo? 
% pormenor os objectivos do trabalho
% contexto subjacente 
% metodologia  utilizado no desenvolvimento como o planeamento efectuado para o concretizar 
% Apresentar uma confrontacao com o plano de trabalho inicial  analisando as razoes de eventuais desvios occorridos


\include{./tex/intro}
\LIMPA

\chapter{Related Work}
\glsresetall
\include{./tex/relatedwork}

\LIMPA
\chapter{Distributed Controller}
\glsresetall
\include{./tex/heimdall}fe
\LIMPA
\setlength{\epigraphwidth}{.95\textwidth}
\chapter{Feasibility Study}
%%%% quote 

%%%%

\glsresetall
\include{./tex/feasibility} 
\LIMPA

\chapter{Conclusions}
\glsresetall
% sumario de trabalho realizado

% comentario critico
% possibility of future work 
§
\include{./tex/conclusion}
\LIMPA

% Inicio apendices
\appendix

\include{./tex/apendices}




% Fim do conteudo
% ----------------------------------------------------------------------

% Glossario

\LIMPA

%
% Para actualizar o glossario, e' preciso correr o script ./fazindice
% e voltar a gerar o PDF
%
%\include{./tex/acronimos}
%\renewcommand{\glossaryname}{Glossary}
%\setglossary{glodelim={\noexpand}}
%\setglossary{glsnumformat=ignore}
\printglossary
\addcontentsline {toc} {chapter} {Glossary}

% Bibliografia

% \LIMPA

\printbibliography[title=References,heading=bibintoc]

% Indice remissivo
\LIMPA
%\printindex
%\addcontentsline {toc} {chapter} {Table Of Contents}

\end{document}
