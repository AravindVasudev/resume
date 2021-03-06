%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resume Template
%% Author – Aravind Vasudevan
%% Email  – avasude2@andrew.cmu.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}%[2019/09/1 Resume]

\LoadClass[7pt, letterpaper]{article}
\RequirePackage[letterpaper, margin=0.4in]{geometry}
\RequirePackage[hidelinks, pdfusetitle]{hyperref}
\RequirePackage{fontspec, xcolor, sectsty, setspace, multicol, titlesec}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Make Title
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\author[2]{
    \gdef\@author{\href{#1}{#2}}
    \hypersetup{pdftitle={\@author},pdfauthor={#2}}
}

\newcommand\email[1]{\gdef\email{\href{mailto:#1}{#1}}}
\newcommand\phone[2]{\gdef\phone{\href{tel:#1}{#2}}}
\newcommand\domain[2]{\gdef\domain{\href{#1}{#2}}}
\newcommand\github[2]{\gdef\github{\href{#1}{#2}}}
\newcommand\linkedin[2]{\gdef\linkedin{\href{#1}{#2}}}

\renewcommand{\maketitle}{
  \begin{center}
    {\Huge \scshape \@author}
  \end{center}
  \vspace{-3mm}
  \noindent
  \underline{\texttt \github} | {\texttt \phone} | {\texttt \email} | \underline{\texttt \domain}
}

%%%%%
% Section
%%%%%%
\titlespacing\section{0pt}{5pt}{0pt}

%%%%
% Education
%%%%
\newcommand\education[4]{\gdef\education{
\noindent
\textbf{#1} \hfill \textit{#2} \\
{\small #3}  \\
\textit{#4}
}
}

%%%%%%%%%%%%%%%%%
%% Misc
%%%%%%%%%%%%%%%%%
\pagenumbering{gobble}
