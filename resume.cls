%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resume Template
%% Author – Aravind Vasudevan
%% Email  – avasude2@andrew.cmu.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/09/1 Resume]

\LoadClass[12pt, a4paper]{article}
\RequirePackage[a4paper, margin=0.6in]{geometry}
\RequirePackage[hidelinks, pdfusetitle]{hyperref}
\RequirePackage{fontspec, xcolor, sectsty, setspace}

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

\renewcommand{\maketitle}{
  \begin{center}
    {\Huge \scshape \@author} \\
    {\texttt \email} $\bullet$ {\texttt \phone} $\bullet$ {\texttt \domain}
    {\rule{\linewidth}{0.5mm}}
  \end{center}

  
}
