\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pildoc}[1803/08/20 PillFall LaTeX documentation class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ltxdoc}}
\ProcessOptions\relax
\LoadClass{ltxdoc}


\OnlyDescription



\RequirePackage{geometry}
\geometry{margin=2cm,left=3cm}



\RequirePackage{tikz}



\RequirePackage{siunitx}

\sisetup{
    per-mode = fraction,
}

\DeclareSIUnit{\inch}{in}



\RequirePackage{verbatim}
\RequirePackage{minted}

\renewenvironment{verbatim}%
    {\VerbatimEnvironment\begin{Verbatim}}%
    {\end{Verbatim}}



\RequirePackage[no-math]{fontspec}

\newcommand*{\lmr}{\fontfamily{lmr}\selectfont}
\newcommand*{\lmss}{\fontfamily{lmss}\selectfont}
\newcommand*{\lmtt}{\fontfamily{lmtt}\selectfont}



\setlength{\parskip}{\medskipamount}



\AddToHook{cmd/part/before}{\clearpage}



\let\old@thanks\thanks
\renewcommand{\thanks}[1]{\texorpdfstring{\old@thanks{#1}}{\space<#1>}}



\renewcommand{\maketitle}{
    \begin{titlepage}
        \null\vfil
        \begin{center}
            {\LARGE \@title \par}
            {\large
            \lineskip .75em%
            \begin{tabular}[t]{c}%
            \@author
            \end{tabular}\par}%
        \end{center}\par%
        \@thanks%
        \vfil\null%
    \end{titlepage}
}
