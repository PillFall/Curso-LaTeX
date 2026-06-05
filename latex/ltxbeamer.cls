\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ltxbeamer}[2018/08/20 v0.2 Beamer document class optimized for my presentations]

\RequirePackage{xparse}
\RequirePackage{etoolbox}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

\RequirePackage{hyperref}
\RequirePackage{hyperxmp}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[no-math]{fontspec}

\RequirePackage{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{babel,calc,decorations.pathmorphing,decorations.pathreplacing,decorations.shapes,patterns}
\RequirePackage{ragged2e}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{minted}
\RequirePackage{siunitx}
\RequirePackage{biblatex}
\RequirePackage{booktabs}
\RequirePackage{csquotes}

\hypersetup{
    hidelinks,
    unicode,
}

\sisetup{
    per-mode=fraction,
}

\newcommand{\lmr}{\fontfamily{lmr}\selectfont}
\newcommand{\lmss}{\fontfamily{lmss}\selectfont}
\newcommand{\lmtt}{\fontfamily{lmtt}\selectfont}

\usefonttheme{professionalfonts}

\setlength{\parskip}{\bigskipamount}

\usemintedstyle{native}

\setbeamercolor{background canvas}{bg=black}
\setbeamercolor{normal text}{fg=white,bg=black}
\setbeamercolor{titlelike}{fg=white}

\setbeamercolor{description item}{fg=black!40}
\setbeamercolor{alerted text}{fg=green}
\setbeamercolor{caption name}{fg=black!20}
\setbeamertemplate{blocks}[rounded][shadow=false]
\pgfdeclareverticalshading[lower.bg,upper.bg]{bmb@transition}{200cm}{color(0pt)=(lower.bg);color(0pt)=(upper.bg)}
\setbeamercolor{block title}{fg=white,bg=cyan}
\setbeamerfont{block title}{series=\bfseries}
\setbeamercolor{block body}{bg=cyan!20!black}
\setbeamercolor{block title alerted}{bg=red,fg=white}
\setbeamercolor{block body alerted}{bg=red!20!black}
\setbeamercolor{block title example}{fg=black!40}

\setbeamercolor{bibliography entry author}{fg=black!20}
\setbeamercolor{bibliography entry title}{fg=white}
\setbeamercolor{bibliography entry location}{fg=black!40}
\setbeamercolor{bibliography entry note}{fg=black!40}
\setbeamertemplate{bibliography item}{
	\ifboolexpr{ test {\ifentrytype{book}} or test {\ifentrytype{mvbook}}
		or test {\ifentrytype{collection}} or test {\ifentrytype{mvcollection}}
		or test {\ifentrytype{reference}} or test {\ifentrytype{mvreference}} }
	{\setbeamertemplate{bibliography item}[book]}
	{\ifentrytype{online}
		{\setbeamertemplate{bibliography item}[online]}
		{\setbeamertemplate{bibliography item}[article]}}
	\usebeamertemplate{bibliography item}}
\defbibenvironment{bibliography}{%
    \list{}{%
        \settowidth{\labelwidth}{\usebeamertemplate{bibliography item}}%
        \setlength{\leftmargin}{\labelwidth}%
        \setlength{\labelsep}{\biblabelsep}%
        \addtolength{\leftmargin}{\labelsep}%
        \setlength{\itemsep}{\bibitemsep}%
        \setlength{\parsep}{\bibparsep}%
    }%
}{\endlist}{\item}

\setbeamertemplate{navigation symbols}{}
\renewcommand{\thanks}[1]{}


\setbeamertemplate{title page} {%
    \begin{tikzpicture}[remember picture,overlay]
        \begin{scope}[
            shift={(current page.center)},
            x={(current page.east)},
            y={(current page.north)},
        ]
            \begin{scope}[even odd rule, black!85, thick]
                \coordinate (P0) at (0.9400,0.9708);
                \coordinate (P1) at (-0.7500,1.3585);
                \coordinate (P2) at (1.0805,0.3096);
                \coordinate (P3) at (-0.3552,-0.6491);
                \coordinate (P4) at (0.5576,0.4855);
                \coordinate (P5) at (-1.1011,0.8035);
                \coordinate (P6) at (1.4472,1.4082);
                \coordinate (P7) at (-1.4878,-1.0981);
                \coordinate (P8) at (-0.4016,1.1946);
                \coordinate (P9) at (-0.5569,0.1469);
                \coordinate (P10) at (-0.1919,-1.3050);
                \coordinate (P11) at (0.2536,1.0322);
                \coordinate (P12) at (-1.0307,-0.8271);
                \coordinate (P13) at (-0.2614,-1.3892);
                \coordinate (P14) at (-0.0102,0.9539);
                \coordinate (P15) at (0.4737,0.1005);
                \coordinate (P16) at (-1.0009,0.9223);
                \coordinate (P17) at (-0.2578,-0.7636);
                \coordinate (P18) at (-0.6759,0.3518);
                \coordinate (P19) at (-0.9646,-1.1416);
                \coordinate (P20) at (-0.1328,-1.0052);
                \coordinate (P21) at (0.4462,0.9632);
                \coordinate (P22) at (-0.4573,-0.1959);
                \coordinate (P23) at (-1.4850,0.6377);
                \coordinate (P24) at (-0.5050,-0.5417);
                \coordinate (P25) at (-1.2602,-0.1558);
                \coordinate (P26) at (1.1086,0.5201);
                \coordinate (P27) at (-0.7758,0.0761);
                \coordinate (P28) at (1.2316,0.0603);
                \coordinate (P29) at (-0.0318,-0.1157);
                \coordinate (P30) at (-0.2966,-0.2387);
                \coordinate (P31) at (0.2548,0.1160);
                \coordinate (P32) at (-0.0303,-1.0026);
                \coordinate (P33) at (-0.1760,1.4060);
                \coordinate (P34) at (-0.2545,-1.3940);
                \coordinate (P35) at (-1.4915,0.1063);
                \coordinate (P36) at (-1.3483,-1.2218);
                \coordinate (P37) at (-1.1737,-0.1378);
                \coordinate (P38) at (-0.1241,-0.1905);
                \coordinate (P39) at (0.6786,1.1938);
                \coordinate (P40) at (0.4486,1.2286);
                \coordinate (P41) at (-1.0391,-0.7880);
                \coordinate (P42) at (0.3573,0.5611);
                \coordinate (P43) at (0.4278,0.2656);
                \coordinate (P44) at (0.9228,1.3871);

                \fill (P0) circle (2.1739pt);
                \fill (P1) circle (2.1889pt);
                \fill (P2) circle (1.6687pt);
                \fill (P3) circle (2.9382pt);
                \draw [line width=0.4994pt] (P4) circle (3.1020pt);
                \fill (P4) circle (2.3778pt);
                \fill (P5) circle (1.7016pt);
                \fill (P6) circle (3.8287pt);
                \fill (P7) circle (4.5347pt);
                \fill (P8) circle (1.6032pt);
                \fill (P9) circle (3.1679pt);
                \fill (P10) circle (1.8422pt);
                \fill (P11) circle (1.7314pt);
                \fill (P12) circle (2.4389pt);
                \fill (P13) circle (1.9534pt);
                \fill (P14) circle (2.4713pt);
                \fill (P15) circle (1.6284pt);
                \fill (P16) circle (4.2025pt);
                \fill (P17) circle (4.0143pt);
                \draw [line width=1.5909pt] (P18) circle (2.4433pt);
                \fill (P18) circle (1.6031pt);
                \fill (P19) circle (1.7503pt);
                \fill (P20) circle (1.8222pt);
                \fill (P21) circle (3.3933pt);
                \fill (P22) circle (2.1253pt);
                \fill (P23) circle (1.6068pt);
                \fill (P24) circle (2.2036pt);
                \fill (P25) circle (1.6394pt);
                \fill (P26) circle (1.6815pt);
                \draw [line width=1.1646pt] (P27) circle (3.0337pt);
                \fill (P27) circle (1.8855pt);
                \fill (P28) circle (2.3900pt);
                \fill (P29) circle (2.0934pt);
                \fill (P30) circle (1.6361pt);
                \fill (P31) circle (1.8325pt);
                \fill (P32) circle (1.6205pt);
                \fill (P33) circle (2.7797pt);
                \fill (P34) circle (1.6150pt);
                \fill (P35) circle (1.6446pt);
                \fill (P36) circle (2.9122pt);
                \fill (P37) circle (3.7786pt);
                \fill (P38) circle (1.9159pt);
                \fill (P39) circle (1.6979pt);
                \fill (P40) circle (1.7231pt);
                \fill (P41) circle (2.2824pt);
                \draw [line width=0.4247pt] (P42) circle (2.9274pt);
                \fill (P42) circle (1.6514pt);
                \fill (P43) circle (2.3647pt);
                \fill (P44) circle (2.7876pt);

                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P4) circle (3.1020pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P18) circle (2.4433pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P27) circle (3.0337pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P42) circle (2.9274pt);

                \draw (P5) -- (P23) -- (P35);
                \draw (P7) -- (P25) -- (P35);
                \draw (P15) -- (P29);
                \draw (P13) -- (P36) -- (P34);
                \draw (P41) -- (P25) -- (P7);
                \draw (P15) -- (P31) -- (P29);
                \draw (P2) -- (P15);
                \draw (P33) -- (P44) -- (P6);
                \draw (P1) -- (P8) -- (P33);
                \draw (P8) -- (P14) -- (P33);
                \draw (P36) -- (P12) -- (P7);
                \draw (P12) -- (P41) -- (P7);
                \draw (P41) -- (P12) -- (P24);
                \draw (P37) -- (P41) -- (P24);
                \draw (P41) -- (P37) -- (P25);
                \draw (P22) -- (P37) -- (P24);
                \draw (P25) -- (P37) -- (P35);
                \draw (P12) -- (P3) -- (P24);
                \draw (P38) -- (P32) -- (P29);
                \draw (P38) -- (P17) -- (P32);
                \draw (P38) -- (P3) -- (P17);
                \draw (P17) -- (P20) -- (P32);
                \draw (P27) -- (P37) -- (P22);
                \draw (P27) -- (P5) -- (P35);
                \draw (P37) -- (P27) -- (P35);
                \draw (P14) -- (P9) -- (P42);
                \draw (P9) -- (P31) -- (P42);
                \draw (P31) -- (P9) -- (P29);
                \draw (P9) -- (P27) -- (P22);
                \draw (P9) -- (P38) -- (P29);
                \draw (P2) -- (P4) -- (P15);
                \draw (P4) -- (P21) -- (P42);
                \draw (P11) -- (P14) -- (P42);
                \draw (P21) -- (P11) -- (P42);
                \draw (P14) -- (P11) -- (P33);
                \draw (P13) -- (P19) -- (P36);
                \draw (P19) -- (P12) -- (P36);
                \draw (P19) -- (P20) -- (P17);
                \draw (P3) -- (P19) -- (P17);
                \draw (P19) -- (P3) -- (P12);
                \draw (P3) -- (P30) -- (P24);
                \draw (P38) -- (P30) -- (P3);
                \draw (P30) -- (P22) -- (P24);
                \draw (P30) -- (P9) -- (P22);
                \draw (P9) -- (P30) -- (P38);
                \draw (P10) -- (P13) -- (P34);
                \draw (P20) -- (P10) -- (P32);
                \draw (P10) -- (P19) -- (P13);
                \draw (P19) -- (P10) -- (P20);
                \draw (P10) -- (P34);
                \draw (P32) -- (P10);
                \draw (P8) -- (P18) -- (P14);
                \draw (P18) -- (P9) -- (P14);
                \draw (P27) -- (P18) -- (P5);
                \draw (P9) -- (P18) -- (P27);
                \draw (P43) -- (P4) -- (P42);
                \draw (P4) -- (P43) -- (P15);
                \draw (P31) -- (P43) -- (P42);
                \draw (P43) -- (P31) -- (P15);
                \draw (P21) -- (P0) -- (P39);
                \draw (P4) -- (P0) -- (P21);
                \draw (P0) -- (P44) -- (P39);
                \draw (P44) -- (P0) -- (P6);
                \draw (P11) -- (P40) -- (P33);
                \draw (P40) -- (P44) -- (P33);
                \draw (P44) -- (P40) -- (P39);
                \draw (P40) -- (P21) -- (P39);
                \draw (P40) -- (P11) -- (P21);
                \draw (P18) -- (P16) -- (P5);
                \draw (P16) -- (P18) -- (P8);
                \draw (P16) -- (P8) -- (P1);
                \draw (P23) -- (P16) -- (P1);
                \draw (P16) -- (P23) -- (P5);
                \draw (P26) -- (P4) -- (P2);
                \draw (P26) -- (P0) -- (P4);
                \draw (P0) -- (P26) -- (P6);
                \draw (P26) -- (P28) -- (P6);
                \draw (P26) -- (P2) -- (P28);
            \end{scope}

            \begin{scope}[even odd rule, black!75, thick]
                \coordinate (P0) at (-1.4587,1.4959);
                \coordinate (P1) at (-1.1776,-1.1382);
                \coordinate (P2) at (-0.3600,-0.4631);
                \coordinate (P3) at (-0.4480,1.2963);
                \coordinate (P4) at (-0.3008,1.2715);
                \coordinate (P5) at (-0.2608,-1.3547);
                \coordinate (P6) at (0.0424,0.2687);
                \coordinate (P7) at (-0.9563,-0.9296);
                \coordinate (P8) at (-0.0128,0.2485);
                \coordinate (P9) at (0.1415,0.8219);
                \coordinate (P10) at (0.1821,0.1989);
                \coordinate (P11) at (-0.2778,0.3370);
                \coordinate (P12) at (-1.0478,1.3702);
                \coordinate (P13) at (-0.9532,0.8433);
                \coordinate (P14) at (0.1706,0.4526);
                \coordinate (P15) at (-1.2511,0.9757);
                \coordinate (P16) at (-0.3319,-0.9449);
                \coordinate (P17) at (-1.4140,0.0954);
                \coordinate (P18) at (-1.4435,1.2752);
                \coordinate (P19) at (-0.6140,0.0519);
                \coordinate (P20) at (-0.7835,0.4830);
                \coordinate (P21) at (-0.8459,0.2478);
                \coordinate (P22) at (-0.9797,0.2869);
                \coordinate (P23) at (-0.5495,-0.1996);
                \coordinate (P24) at (-0.3218,0.0847);
                \coordinate (P25) at (-1.3458,1.4895);
                \coordinate (P26) at (-0.8775,-0.2047);
                \coordinate (P27) at (-0.7951,1.2885);
                \coordinate (P28) at (0.1663,0.0360);
                \coordinate (P29) at (-0.7988,-1.2103);
                \coordinate (P30) at (-0.5434,-0.4526);
                \coordinate (P31) at (-0.9255,-0.4284);
                \coordinate (P32) at (-1.1653,-1.3891);
                \coordinate (P33) at (-0.5630,0.8877);
                \coordinate (P34) at (-0.3676,-0.8955);

                \fill (P0) circle (3.8846pt);
                \fill (P1) circle (1.6317pt);
                \fill (P2) circle (1.6009pt);
                \fill (P3) circle (1.6548pt);
                \fill (P4) circle (1.6234pt);
                \fill (P5) circle (2.3721pt);
                \fill (P6) circle (1.7972pt);
                \fill (P7) circle (1.6871pt);
                \fill (P8) circle (1.7677pt);
                \fill (P9) circle (3.6409pt);
                \fill (P10) circle (3.5752pt);
                \fill (P11) circle (1.6038pt);
                \fill (P12) circle (2.2153pt);
                \draw [line width=0.7373pt] (P13) circle (4.6700pt);
                \fill (P13) circle (1.7584pt);
                \fill (P14) circle (3.6907pt);
                \fill (P15) circle (3.9172pt);
                \fill (P16) circle (2.1626pt);
                \fill (P17) circle (2.2701pt);
                \fill (P18) circle (1.7087pt);
                \fill (P19) circle (3.8687pt);
                \fill (P20) circle (2.8019pt);
                \draw [line width=0.8597pt] (P21) circle (4.4889pt);
                \fill (P21) circle (2.3706pt);
                \draw [line width=0.4009pt] (P22) circle (3.1351pt);
                \fill (P22) circle (1.6553pt);
                \fill (P23) circle (3.5847pt);
                \fill (P24) circle (2.0614pt);
                \fill (P25) circle (2.3988pt);
                \fill (P26) circle (3.5196pt);
                \fill (P27) circle (1.8319pt);
                \draw [line width=0.6886pt] (P28) circle (3.3444pt);
                \fill (P28) circle (2.1992pt);
                \fill (P29) circle (1.9163pt);
                \fill (P30) circle (2.4338pt);
                \fill (P31) circle (1.6124pt);
                \fill (P32) circle (1.8093pt);
                \fill (P33) circle (1.9136pt);
                \fill (P34) circle (3.6198pt);

                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P13) circle (4.6700pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P21) circle (4.4889pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P22) circle (3.1351pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P28) circle (3.3444pt);

                \draw (P17) -- (P18) -- (P0);
                \draw (P18) -- (P25) -- (P0);
                \draw (P25) -- (P18) -- (P12);
                \draw (P34) -- (P2) -- (P30);
                \draw (P2) -- (P34) -- (P16);
                \draw (P7) -- (P34) -- (P30);
                \draw (P28) -- (P2) -- (P16);
                \draw (P16) -- (P5);
                \draw (P26) -- (P31) -- (P30);
                \draw (P31) -- (P7) -- (P30);
                \draw (P31) -- (P26) -- (P17);
                \draw (P1) -- (P17) -- (P32);
                \draw (P1) -- (P31) -- (P17);
                \draw (P31) -- (P1) -- (P7);
                \draw (P16) -- (P29) -- (P5);
                \draw (P5) -- (P29) -- (P32);
                \draw (P34) -- (P29) -- (P16);
                \draw (P29) -- (P34) -- (P7);
                \draw (P29) -- (P1) -- (P32);
                \draw (P1) -- (P29) -- (P7);
                \draw (P33) -- (P9) -- (P4);
                \draw (P28) -- (P24) -- (P2);
                \draw (P26) -- (P22) -- (P17);
                \draw (P18) -- (P15) -- (P12);
                \draw (P15) -- (P18) -- (P17);
                \draw (P22) -- (P15) -- (P17);
                \draw (P3) -- (P33) -- (P4);
                \draw (P25) -- (P3) -- (P4);
                \draw (P3) -- (P25) -- (P12);
                \draw (P11) -- (P14) -- (P9);
                \draw (P33) -- (P11) -- (P9);
                \draw (P11) -- (P33) -- (P20);
                \draw (P2) -- (P23) -- (P30);
                \draw (P24) -- (P23) -- (P2);
                \draw (P23) -- (P26) -- (P30);
                \draw (P19) -- (P11) -- (P20);
                \draw (P11) -- (P19) -- (P24);
                \draw (P19) -- (P23) -- (P24);
                \draw (P23) -- (P19) -- (P26);
                \draw (P27) -- (P3) -- (P12);
                \draw (P3) -- (P27) -- (P33);
                \draw (P33) -- (P13) -- (P20);
                \draw (P13) -- (P22) -- (P20);
                \draw (P13) -- (P15) -- (P22);
                \draw (P27) -- (P13) -- (P33);
                \draw (P15) -- (P13) -- (P12);
                \draw (P13) -- (P27) -- (P12);
                \draw (P11) -- (P8) -- (P14);
                \draw (P8) -- (P11) -- (P24);
                \draw (P8) -- (P28) -- (P10);
                \draw (P8) -- (P24) -- (P28);
                \draw (P22) -- (P21) -- (P20);
                \draw (P21) -- (P19) -- (P20);
                \draw (P21) -- (P22) -- (P26);
                \draw (P19) -- (P21) -- (P26);
                \draw (P14) -- (P6) -- (P10);
                \draw (P6) -- (P8) -- (P10);
                \draw (P8) -- (P6) -- (P14);
            \end{scope}

            \begin{scope}[even odd rule, black!10, thick]
                \coordinate (P0) at (-0.5000,-0.2133);
                \coordinate (P1) at (-0.4883,-0.8817);
                \coordinate (P2) at (-0.0767,0.9708);
                \coordinate (P3) at (-0.3564,-1.0193);
                \coordinate (P4) at (-0.5888,-0.5167);
                \coordinate (P5) at (-1.0625,1.3585);
                \coordinate (P6) at (0.0053,0.3096);
                \coordinate (P7) at (-0.8322,-0.6491);
                \coordinate (P8) at (-0.3188,-0.1295);
                \coordinate (P9) at (-0.2997,0.4855);
                \coordinate (P10) at (-1.2673,0.8035);
                \coordinate (P11) at (0.2192,1.4082);
                \coordinate (P12) at (-0.4267,-1.3672);
                \coordinate (P13) at (-1.4929,-1.0981);
                \coordinate (P14) at (-0.8592,1.1946);
                \coordinate (P15) at (-0.9499,0.1469);
                \coordinate (P16) at (-0.7369,-1.3050);
                \coordinate (P17) at (-0.4770,1.0322);
                \coordinate (P18) at (-1.2263,-0.8271);
                \coordinate (P19) at (-0.7775,-1.3892);
                \coordinate (P20) at (-0.6309,0.9539);
                \coordinate (P21) at (-0.3487,0.1005);
                \coordinate (P22) at (-0.0035,-1.0509);
                \coordinate (P23) at (-0.5073,-0.3775);
                \coordinate (P24) at (-0.4477,-1.1613);

                \fill (P0) circle (2.1739pt);
                \draw [line width=1.1791pt] (P1) circle (4.4073pt);
                \fill (P1) circle (2.1889pt);
                \draw [line width=0.4994pt] (P2) circle (3.1020pt);
                \fill (P2) circle (2.3778pt);
                \fill (P3) circle (1.7016pt);
                \fill (P4) circle (3.8287pt);
                \fill (P5) circle (1.6032pt);
                \fill (P6) circle (3.1679pt);
                \draw [line width=0.5988pt] (P7) circle (3.6583pt);
                \fill (P7) circle (1.8422pt);
                \fill (P8) circle (2.4713pt);
                \fill (P9) circle (1.6284pt);
                \fill (P10) circle (4.2025pt);
                \fill (P11) circle (4.0143pt);
                \fill (P12) circle (2.2725pt);
                \fill (P13) circle (1.6031pt);
                \fill (P14) circle (1.6000pt);
                \fill (P15) circle (1.6288pt);
                \fill (P16) circle (1.7503pt);
                \fill (P17) circle (1.8222pt);
                \fill (P18) circle (3.3933pt);
                \fill (P19) circle (1.7622pt);
                \fill (P20) circle (2.1253pt);
                \fill (P21) circle (1.6068pt);
                \fill (P22) circle (3.0840pt);
                \draw [line width=0.4012pt] (P23) circle (2.8282pt);
                \fill (P23) circle (1.6394pt);
                \fill (P24) circle (2.0225pt);

                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P1) circle (4.4073pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P2) circle (3.1020pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P7) circle (3.6583pt);
                \clip (current bounding box.south west) rectangle (current bounding box.north east) (P23) circle (2.8282pt);

                \draw (P2) -- (P6) -- (P11);
                \draw (P17) -- (P2) -- (P11);
                \draw (P16) -- (P24) -- (P1);
                \draw (P2) -- (P9) -- (P6);
                \draw (P9) -- (P2) -- (P17);
                \draw (P15) -- (P20) -- (P10);
                \draw (P20) -- (P9) -- (P17);
                \draw (P9) -- (P20) -- (P15);
                \draw (P3) -- (P22) -- (P1);
                \draw (P24) -- (P3) -- (P1);
                \draw (P3) -- (P24) -- (P22);
                \draw (P12) -- (P16) -- (P19);
                \draw (P12) -- (P24) -- (P16);
                \draw (P24) -- (P12) -- (P22);
                \draw (P22) -- (P23) -- (P1);
                \draw (P0) -- (P21) -- (P15);
                \draw (P21) -- (P9) -- (P15);
                \draw (P9) -- (P21) -- (P6);
                \draw (P14) -- (P20) -- (P17);
                \draw (P14) -- (P17) -- (P11);
                \draw (P5) -- (P14) -- (P11);
                \draw (P14) -- (P5) -- (P10);
                \draw (P20) -- (P14) -- (P10);
                \draw (P7) -- (P16) -- (P1);
                \draw (P7) -- (P0) -- (P15);
                \draw (P23) -- (P8) -- (P0);
                \draw (P8) -- (P21) -- (P0);
                \draw (P21) -- (P8) -- (P6);
                \draw (P8) -- (P22);
                \draw (P8) -- (P23) -- (P22);
                \draw (P23) -- (P4) -- (P1);
                \draw (P4) -- (P7) -- (P1);
                \draw (P4) -- (P23) -- (P0);
                \draw (P7) -- (P4) -- (P0);
                \draw (P18) -- (P7) -- (P15);
                \draw (P18) -- (P10) -- (P13);
                \draw (P18) -- (P15) -- (P10);
                \draw (P7) -- (P18) -- (P16);
                \draw (P19) -- (P18) -- (P13);
                \draw (P16) -- (P18) -- (P19);
            \end{scope}
        \end{scope}
    \end{tikzpicture}%
    \vfill%
    \begingroup%
        \vspace*{\stretch{5}}
        \raggedleft\sffamily%
        \parbox{0.55\linewidth}{\raggedleft\bfseries\Huge\inserttitle}\par
        \vspace{\stretch{2}}
        {\bfseries\Large\insertsubtitle}\par
    \endgroup%
}
