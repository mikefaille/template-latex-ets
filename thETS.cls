%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Modèle LaTeX pour le mémoire de thèse de l'ETS
%% Basé sur la classe de base book.cls, généralement positionné
%% dans un système linux à
%% /usr/share/texmf/tex/latex/base/book.cls
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [17 Avril 2015]
%% - L'abstract francais est maintenant intitule "Resume" dans la version anglaise
%% - Correction de la marge des footnotes
%% - Correction des titres des membres du jury
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [13 Mars 2015]
%% - Utilisation de l'environnement "revuedelitterature" (ou "literaturereview" en anglais) pour les theses par article au lieu d'une section numerotee
%% - Deplacement de la legende des algorithmes sur le dessus avec le package algorithm2e
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [20 Novembre 2014]
%% - Correction de la mise en page de la liste des algorithmes pour la version anglaise
%% - Correction de diverses coquilles dans la page de guarde (merci à Miguel De la Torre)
%%
%% [13 Juin 2014]
%% - Mise à disposition du gabarit sur BitBucket
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [11 Juin 2014]
%% - Fusion des deux langues du gabarit, avec choix dans options de la classe
%% - Définition de variables \biband, \bibed et \fg \og (pour babel english) pour adapter le style bibliographique à la %%   langue.
%% - Définition de la variable \lediplome dépendante de \TypeDoc (merci à Jean-François Têtu)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [07 Mai 2014]
%% - Correction de l'espace entre le titre du chapitre et le début du texte
%% - Ajout d'une fonction de présentation des noms et affiliations des auteurs pour une thèse par articles
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [28 Mars 2014]
%% - Redéfintion des listes à l'aide du package enumitem
%% - Correction des marges
%% - Correction de la numérotation des tables en introduction
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [27 Novembre 2013]
%% - Correction de la mise en page de la liste des algorithmes avec l'utilisation du package algorithm2e (Merci à Louis-Poudrier-Racette)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [18 Novembre 2013]
%% - Correction de l'espacement suite à une citation (Merci à Francois Cabrol)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [15 Octobre 2013]
%% - Intitulé des chapitres en majuscule.
%% - Interligne dans les titres des sections et sous sections simple.
%% - Point après le numéro d'une section d'annexe.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [07 Aout 2013]
%% - Correction des marges de la table des matieres.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [01 Aout 2013]
%%  - Simple interligne pour les titres longs
%%  - Correction du nombre de sauts de ligne entre l'abstract et les mots clés
%%  - Correction du comportement des listes (de figure, table et table de matieres) au niveau du retour a la ligne
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [19 Avril 2013]
%% -Compatibilité avec la nouvelle version du package caption
%% -Corrections mineures de mise en page (merci `a Sebastien Rufiange)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [14 Fev 2013]
%% - Correction du positionnement des floats en annexe
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [28 Nov 2012]
%% - Bonne numerotation des equation dans annexes
%%
%% Modifications par Nicolas Gasset (nicolas.gasset.1@ens.etsmtl.ca)
%% [28 Nov 2012]
%% - Deplace l'appel des paquets amsthm et caption apres hyperref (necessaire pour eviter problemes)
%% - Appel des nouveau paquet: amsfonts,amsmath,amssymb,amsbsy,amsxtra (qui faut absolument mettre avant hyperref)
%% - Nouvelle tentative concernant les espaces dessus/dessous  les figures/tableaux
%% - Ajout explicite de la position de la legende dans \captionsetup
%% - Ne nom correct pour les Annexes (ANNEX et non ANNEXES ou APPENDIX, cf guide redaction) est maintenant bien pris en compte.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [23 Nov 2012]
%% - Correction du comptage et référence des annexes
%% - Correction de la profondeur des retours à la ligne de la TOC
%% - Alignement des mots clés dans les abstract (merci Antoine Gravel Savard)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [10 Sept 2012]
%% - Correction du comportement des citations en référence (compatibilité packages multibib et natbib)
%% - Suppression d'un warning lorsque hyperref est utilisé (merci Antoine Gravel Savard)
%%
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [06 Juil 2012]
%% - Suppression de la mise en gras de "Figure" et "Tableau" dans la légende
%% - Changement de l'espace entre les tableaux et leur légende
%% - Arrangement de l'aligement de sections dans la table des matières pour correspondre au guide de rédaction.
%%
%% Modifications par Nicolas Gasset (nicolas.gasset.1@ens.etsmtl.ca)
%% [08 fev 2012]
%% - Tentative d amelioration des espaces dessus/dessous figure/tableau
%% - Commente \RequirePackage{mathptmx} (car incompatible avec formules mathematique en gras), et remplace par \RequirePackage{times}
%% - Supprime option "body={6.25in,8.75in}" lors de l appel du paquet geometry (c etait inutile/surimposé, cf. warning avec l option)
%%
%% Modifications par Nicolas Gasset (nicolas.gasset.1@ens.etsmtl.ca)
%% [03 fev 2012]
%% - Ajout du paquet hyperref
%% - Integration ecriture chapitre/annexe avec hyperref (cf modif Remi Menegon, Tennessee Carmel-Veilleux)
%% - Retablissement de la clef "hypertext" renommé a "hyperref"
%%
%% Modifications par Nicolas Gasset (nicolas.gasset.1@ens.etsmtl.ca)
%% [03 fev 2012]
%% -Ajout du compteur annexnum pour numerote les annexe en evitant d utiliser le compteur des chapitres
%% - Retablissemnt de la section "Numérotation des annexes en chiffres arabes" comme precedement
%%
%% Modifications par Nicolas Gasset (nicolas.gasset.1@ens.etsmtl.ca)
%% [03 fev 2012]
%% -Corrige bugs pour que le document soit en interline 1,5
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [25 Jan 2012]
%% Remplacement du logo Creative Commons en vectoriel, et déplacement des images
%% dans le dossier Figures.
%% (Merci à David Brassard pour les modifications)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [23 Jan 2012]
%% Correction de "Directeur de thèse" pour les thèses par articles.
%% Ajout de la section "Revue de littérature pour les thèses par articles.
%% (Merci à Sébastien Rufiange pour les modifications)
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [30 Nov 2011]
%% Correction des marges pour correspondre aux normes de rédaction de l'ÉTS, en traffiquant avec fancyHDR
%% Correction de l'espacement float/texte en modifiant la variable \intextsep
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [11 Oct 2011]
%% Il n'est plus nécessaire d'utiliser les fonctions figureap et tableap en appendix.
%% (Merci à Felix Chenier pour la suggestion).
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [11 Oct 2011]
%% Simplification de la redéfinition des sous-sections des annexes:
%% Uniquement niveau 0 sur TOC, et pas d'affichage du N d'annexe dans les sous parties.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [2 Sep 2011]
%% Nettoyage des différentes parties commentées pour plus de clareté.
%% Correction de la position du numéro de page selon les normes du gabarit. utilisation du package fancyhdr
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [31 Aout 2011]
%% Numérotation des figures: section.fig.
%% Suppression du ':' dans la caption des figures
%% Changement de la marge après retour à la ligne, pour les longues captions dans la liste de tables
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [13 Mars 2011]
%% Ligne 564: modification de l'affichage des titres des chapitres dans le TOC. Remplacement de la box par \numberline
%% Aussi, changement de la valeur de @tempdima pour que ça rende mieux.
%% suppression de la box avant le titre des tabs et figures dans les listes
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [12 Mai 2011]
%% \setcounter{page}{1} dans l'intro pour qu'elle soit en page 1
%% Suppression du reset de page dans title et jury pour que le titre soit la page I
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [11 Mai 2011]
%% Utilisation d'une newcommand plutôt qu'une savebox pour stocker les mots clé des abstract.
%% Corrige le problème du non retour à la ligne.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [30 Mars 2011]
%% modification de l'affichage des titres des chapitres dans le TOC. Le nom et numéro sont maintenant dans
%% une box de 7em, ce qui aligne les titres.
%% changement de la notation des figures: Exemple Figure-A V-1. Aussi, pas en gras.
%% Changement de l'ordre d'apparition du jury: examinateur externe avant membre du jury.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [24 Mars 2011]
%% Ajout de ':' après 'jury composé de'
%% Ajout de 3 retours à la ligne avant l'affichage des mots clés pour les abstract.
%% Commentaire de la section pour restaurer l'indentation des puces
%% ``Figure'' plus en gras.
%%  Ajout de saut de ligne avant figure.
%%
%% Modifications par Christophe Pagano (cpagano@livia.etsmtl.ca)
%% [9 Mars 2011]
%% Changement de la taille du texte (small) et de l'interligne (simple) pour la partie creative commons et copyright.
%%
%% Modifications par Paulo Cavalin (cavalin@livia.etsmtl.ca)
%% [17 dec 2010]
%% Modifications pour l'impression recto-verso
%%
%% [16 nov 2010]
%% Traduction en anglais
%%
%% [27 aout 2010]
%% Mises à jour du gabarit pour qu'il soit disponibilisé officielement par le décanat
%% Utilisation du package geometry pour définir les marges
%% corrections relatives au guide daté du 27-08-2010
%%
%% Corrections apportées par Cécile Le Cocq (cecile.lecocq@etsmtl.ca)
%%
%% [17 mars 2008]
%% corrections relatives au nouveau guide de rédaction daté du 12 novembre 2007
%%
%% Commentaires (et modifications?) par Luis Da Costa (costa@livia.etsmtl.ca)
%%
%% [14 Juillet 2006]
%% Il faut laisser une ligne en blanc AVANT et APRES une citation de plus de 3 lignes:
%%
%% Zinedine Zidane a remarque
%% [LIGNE EN BLANC]
%% \begin{quote}
%%      parler de ma mere et de ma soeur merite bien un coup de boule.
%% \end{quote}
%% [LIGNE EN BLANC]
%%
%% [14 Juillet 2006]
%% Dans la table des matieres il doit y avoir une indentation.
%% J'ai donc commenté ce que Seb avait implementé (chercher LUIS dans ce document
%% pour voir).
%%
%% Version 0.4
%% Date : 2005/08/04
%%
%% Modifications par S. Piccand (sebastien.piccand@livia.etsmtl.ca)
%%
%% thETS4 est basé sur thETS3
%% Quelques corrections au niveau de la table des matières
%%  - la division en section d'un chapitre est séparée par une ligne de l'intitulé du chapitre
%%  - les annexes sont correctement gérées
%%  - la bibliographie est corrigée en utilisant le package natbib.sty et le style ETS.bst
%%  - ajout de l'option memoire. Par defaut il s'agit d'une thèse
%%  - correction des figures, sous figures, tables
%%  - correction des footnotes, utiliser \footnote{} comme d'habitude
%%  - correction de l'environnement "enumerate"
%%  - correction des citations utiliser \quote{} comme d'habitude
%%
%% Macros supplémentaires pour ajouter plus facilement des figures/tableaux et y faire référence
%%
%% Non corrigé de la version 0.3 :
%%  * Dans les différentes listes (figures, tables, etc.) il n'y a pas assez d'espace entre la fin
%%     du titre et les numéros. Une solution consiste à utiliser des noms de figure courts.
%%  * Les titres des sections/chapitre/soussections/etc doivent être courts pour ne pas passer à
%%     la ligne dans la table des matières.
%%  * Les citations ne sont pas encore bonnes.
%%
%%
%% Version 0.3
%% Date : 2004/12/17
%%
%% Modifications par G. Tremblay (guillaume.tremblay@livia.etsmtl.ca)
%%
%% thETS3 est basé sur thETS2
%% Quelques corrections apportées par rapport à la version 0.2:
%%
%% Utilisation de algorithme2e.sty sans problèmes de compatibilité. Correction faite par F. Grandidier
%% et appliquée par G. Tremblay
%%
%% Les citations de plus de 3 lignes sont à interligne simple tel qu'exigé par le Décanat (utilisez begin{quoteETS})
%%
%% Les footnotes sont remplacées par de footnoteETS pour ne pas avoir d'indentation de paragraphe
%%
%%
%% Version 0.2
%% Date: 2003/05/06
%%
%% Par F. Grandidier (gfrede@livia.etsmtl.ca)
%%
%% Ajout ver 0.2: alignement du titre du chapitre dans la table
%%                des matières lorsqu'il tient sur plusieurs
%%                lignes
%%
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\filedate{2003/01/24}

\NeedsTeXFormat{LaTeX2e}[1994/06/01] %% Mis par défaut
\ProvidesClass{thETS}[\filedate\space Standard ETS class]

%% Mêmes options possibles que celle de la classe book.cls
%% Cependant tous ne va peut être pas marcher comme dans book...
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\newcommand{\TypeDoc}{empty}
\newcommand{\DocLang}{francais}
\newcommand{\WithAlgoTe}{false}
\newcommand{\TypeLic}{reserved}
\newcommand{\WithHyperref}{false}


\DeclareOption{these}{%
	\renewcommand{\TypeDoc}{these}
}

\DeclareOption{memoire}{%
  \renewcommand{\TypeDoc}{memoire}
}
\DeclareOption{thesepararticles}{%
  \renewcommand{\TypeDoc}{thesepararticles}
}

\DeclareOption{creativecommons}{
   \renewcommand{\TypeLic}{creativecommons}
}

\DeclareOption{hyperref}{%
  \renewcommand{\WithHyperref}{true}
}

\DeclareOption{withAlgo2e}{%
  \renewcommand{\WithAlgoTe}{true}
}

\DeclareOption{english}{%
  \renewcommand{\DocLang}{english}
}

\ProcessOptions

\LoadClass{book} %% Chargement de la classe book
\RequirePackage{mathptmx,bm} %% Font times en equation, avec possibilité de bold

\usepackage{fontspec}
\setmainfont{Liberation Serif}
\setmonofont{Liberation Mono}

\usepackage{graphicx} %% http://tug.org/pipermail/xetex/2009-November/014995.html

\RequirePackage{etoolbox}

\newcommand{\up}{\textsuperscript}

\RequirePackage{ifthen} %% Permet de réaliser des tests sur des variables
\ifthenelse{\equal{\DocLang}{francais}}{
  \RequirePackage[frenchb]{babel} %% Francisation du document
 }{
  \RequirePackage[english]{babel}
}




\usepackage{ifxetex}
%%http://tex.stackexchange.com/questions/54573/encoding-error-when-changing-from-latex-to-xetex-engine-in-emacs-auctex


%\usepackage{polyglossia}
%\usepackage[cm-default]{fontspec}
%\usepackage{lmodern}
%  \usepackage{fontspec}
%   \usepackage[utf8x]{inputenc}



\RequirePackage{calc} %% permet de réaliser des additions et soustractions de valeurs lors d'affectation de variables
\RequirePackage{setspace}

\RequirePackage{amsfonts,amsmath,amssymb,amsbsy,amsxtra} %% a mettre avant hyperref
\RequirePackage{longtable}
\RequirePackage{float}
\RequirePackage{listings} %% Code listings (extraits de code)
\RequirePackage[paper=letterpaper,top=1.5in,left=1.5in,right=0.75in,bottom=0.75in, headsep=0.75in]{geometry}
\RequirePackage[labelfont={bf},margin=10pt,justification=centering]{caption}
\RequirePackage[caption=false]{subfig}
\RequirePackage{tabto}
\RequirePackage{hyphenat}
\RequirePackage{enumitem} % Mise en forme des environements enumerate et itemize
\RequirePackage{lipsum} % Pour générer du texte d'exemple


%% Exec de l'option web pour activer hyperref (Menegon 26-07-2010)
\ifthenelse{\equal{\WithHyperref}{true}}
{
	\RequirePackage[%
  		breaklinks=true,
		pdfborder={0 0 0},%
		bookmarks=true,%                  %% Cree les bookmarks ...
		bookmarksnumbered=false,%         %% ... avec des numéros ...
		bookmarksopen=true,%              %% ... et les affiche a l'ouverture du pdf
		bookmarksopenlevel=2,%            %% ... jusqu au niveau
		pdfhighlight=/O,%                 %% Souligne les liens lors d'un clic (defaut /I : inverse)
		hypertexnames=false%
				]{hyperref}

	\hypersetup{bookmarksdepth=subsubsection}
}
{
	\RequirePackage[hyphens]{url}
	\newcommand{\href}[2]{\url{#1}}
	\newcommand{\texorpdfstring}[2]{#1}
}
\urlstyle{rm} % Hyphenation des références
\RequirePackage{amsthm} % a mettre apres hyperref

\ifthenelse{\equal{\WithAlgoTe}{true}}
{
  \ifthenelse{\equal{\DocLang}{francais}}
  {
    \RequirePackage[french,boxed,algochapter]{algorithm2e}
  }
  {
    \RequirePackage[boxed,algochapter]{algorithm2e}
  }
  \SetAlCapSkip{0.5\baselineskip}
  \SetAlCapFnt{\normalfont}
  \SetAlTitleFnt{normalfont}
  \renewcommand{\@algocf@capt@boxed}{above}% Placement de la caption sur le dessus
}{}


\RequirePackage[round]{natbibETS} % Style de citation de l'ETS
\RequirePackage{multibib} % Permettre plusieurs listes de références

%% Adaptation de l'affichage de la bibliographie à la langue, pour "et"/"and", l'accent dans "éd." et les guillemets non définis dans babel english. La style bst utilise ces commandes pour formatter la bibliographie.
\ifthenelse{\equal{\DocLang}{francais}}
{
	\newcommand{\bibAnd}{et}
	\newcommand{\bibed}{éd.}
}
{
	\newcommand{\og}{``}
	\newcommand{\fg}{``}
	\newcommand{\bibAnd}{and}
	\newcommand{\bibed}{ed.}
}

\pagestyle{myheadings}

\hfuzz=20pt % Se débarasser des warnings de box overfull

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Définition de commandes pour la présentation du jury
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\equal{\DocLang}{francais}}
{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% En Francais
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\genTxtDirTh}{Directeur de Thèse}
\newcommand{\genTxtDirM}{Directeur de Mémoire}

\newcommand{\genTxtDirThF}{Directrice de Thèse}
\newcommand{\genTxtDirMF}{Directrice de Mémoire}


\newcommand{\genTxtCoDir}{Co-directeur}
\newcommand{\genTxtCoDirF}{Co-directrice}

\newcommand{\genTxtPres}{Président du Jury}
\newcommand{\genTxtPresF}{Présidente du Jury}

\newcommand{\genTxtExamExt}{Examinateur Externe}
\newcommand{\genTxtExamExtF}{Examinatrice Externe}

\newcommand{\genTxtJury}{membre du jury}
}
{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% En Anglais
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\genTxtDirTh}{Thesis Supervisor}
\newcommand{\genTxtDirM}{Memorandum Supervisor}

\newcommand{\genTxtDirThF}{\genTxtDirTh}
\newcommand{\genTxtDirMF}{\genTxtDirM}


\newcommand{\genTxtCoDir}{Co-supervisor}
\newcommand{\genTxtCoDirF}{\genTxtCoDir}

\newcommand{\genTxtPres}{President of the Board of Examiners}
\newcommand{\genTxtPresF}{\genTxtPresF}

\newcommand{\genTxtExamExt}{External Examiner}
\newcommand{\genTxtExamExtF}{\genTxtExamExt}

\newcommand{\genTxtJury}{Member of the jury}
}

%% Directeur de thèse
\newcommand{\directeur}[3]{
  \newcommand{\PrefDirect}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {% Permet de modifier pour le féminin
    \ifthenelse{\equal{\TypeDoc}{these}}{\newcommand{\TxtDirect}{\genTxtDirThF}}{}
    \ifthenelse{\equal{\TypeDoc}{thesepararticles}}{\newcommand{\TxtDirect}{\genTxtDirThF}}{}
    \ifthenelse{\equal{\TypeDoc}{memoire}}{\newcommand{\TxtDirect}{\genTxtDirMF}}{}
  }
  {
    \ifthenelse{\equal{\TypeDoc}{these}}{\newcommand{\TxtDirect}{\genTxtDirTh}}{}
    \ifthenelse{\equal{\TypeDoc}{thesepararticles}}{\newcommand{\TxtDirect}{\genTxtDirTh}}{}
    \ifthenelse{\equal{\TypeDoc}{memoire}}{\newcommand{\TxtDirect}{\genTxtDirM}}{}
  }
  \newcommand{\NomDirect}{#2}
  \newcommand{\AffilDirect}{#3}
}%

%%% Co-directeur de thèse
\newcommand{\codirecteur}[3]{
  \newcommand{\PrefCoDirect}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {
    \newcommand{\TxtCoDirect}{\genTxtCoDirF}
  }
  {
    \newcommand{\TxtCoDirect}{\genTxtCoDir}
  }
  \newcommand{\NomCoDirect}{#2}
  \newcommand{\AffilCoDirect}{#3}
}%


%%% Co-directeur de thèse 2
\newcommand{\codirecteurB}[3]{
  \newcommand{\PrefCoDirectB}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {
    \newcommand{\TxtCoDirectB}{\genTxtCoDirF}
  }
  {
    \newcommand{\TxtCoDirectB}{\genTxtCoDir}
  }
  \newcommand{\NomCoDirectB}{#2}
  \newcommand{\AffilCoDirectB}{#3}
}%

%% Président du jury
\newcommand{\president}[3]{
  \newcommand{\PrefPresid}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {
    \newcommand{\TxtPresid}{\genTxtPresF}
  }
  {
    \newcommand{\TxtPresid}{\genTxtPres}
  }
  \newcommand{\NomPresid}{#2}
  \newcommand{\AffilPresid}{#3}
}%


%% Examinateur externe
\newcommand{\examinexterne}[4]{
  \newcommand{\PrefExamExt}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {
    \newcommand{\TxtExamExt}{\genTxtExamExtF}
  }
  {
    \newcommand{\TxtExamExt}{\genTxtExamExt}
  }
  \newcommand{\NomExamExt}{#2}
  \newcommand{\AffilExamExt}{#3}
  \newcommand{\PlusTxtExamExt}{#4}
}%

%% Examinateur externe
\newcommand{\examinexterneB}[4]{
  \newcommand{\PrefExamExtB}{#1}
  \ifthenelse{\equal{#1}{Mme.}}
  {
    \newcommand{\TxtExamExtB}{\genTxtExamExtF}
  }
  {
    \newcommand{\TxtExamExtB}{\genTxtExamExt}
  }
  \newcommand{\NomExamExtB}{#2}
  \newcommand{\AffilExamExtB}{#3}
  \newcommand{\PlusTxtExamExtB}{#4}
}%

%% Membre du jury
\newcommand{\jury}[4]{
  \newcommand{\PrefJury}{#1}
  \newcommand{\TxtJury}{\genTxtJury}
  \newcommand{\NomJury}{#2}
  \newcommand{\AffilJury}{#3}
  \newcommand{\PlusTxtJury}{#4}
}%

%% Membre du jury 2
\newcommand{\juryB}[4]{
  \newcommand{\PrefJuryB}{#1}
  \newcommand{\TxtJuryB}{\genTxtJury}
  \newcommand{\NomJuryB}{#2}
  \newcommand{\AffilJuryB}{#3}
  \newcommand{\PlusTxtJuryB}{#4}
}%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Copyright: Prénom Nom
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\authorcopyright#1{\gdef\@authorcopyright{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Variable associée aux dates de
%% soutenance et de dépôt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\datesoutenance#1{\gdef\@datesoutenance{#1}}
\def\datedepot#1{\gdef\@datedepot{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Variable pour la mise en page des chapitres dans
%% la table des matières
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\largChap}
\newlength{\largNum}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Marges autour des objets flottants : figures et tableaux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\abovecaptionskip{0.5\baselineskip}
\setlength\belowcaptionskip{0.5\baselineskip}
\setlength\floatsep{1.5\baselineskip}
\setlength\textfloatsep{1.5\baselineskip}
\setlength\intextsep{1.5\baselineskip}



%%%%%%%%%%%%%%%%%%%
%% Marge la table des matières et les différentes listes
%%%%%%%%%%%%%%%%%%%
\newlength{\tocRightMargin} % Marge droite
\setlength{\tocRightMargin}{2cm}
\newlength{\tocLeftMarginSecondLine}
\setlength{\tocLeftMarginSecondLine}{6.1em} % Marge gauche quand on va à la ligne pour les sections et sous sections
\newlength{\tocLeftMarginSecondLineChapter}
\setlength{\tocLeftMarginSecondLineChapter}{6.1em} % Marge gauche quand on va à la ligne pour les chapitres et annexes
\newlength{\tocLeftMarginSecondLineFigure}
\setlength{\tocLeftMarginSecondLineFigure}{6.5em} % Marge gauche quand on va à la ligne pour les figures
\newlength{\tocLeftMarginSecondLineAlgo}
\newlength{\tocLeftMarginSecondLineTable}
\ifthenelse{\equal{\DocLang}{francais}}
{
  \setlength{\tocLeftMarginSecondLineTable}{7em} % Marge gauche quand on va à la ligne pour les tableaux.
  \setlength{\tocLeftMarginSecondLineAlgo}{8.6em} % Marge gauche quand on va à la ligne pour les algos
}
{
  \setlength{\tocLeftMarginSecondLineTable}{6em} % Marge gauche quand on va à la ligne pour les tableaux.
  \setlength{\tocLeftMarginSecondLineAlgo}{8.1em} % Marge gauche quand on va à la ligne pour les algos
}

\renewcommand{\@pnumwidth}{3em}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fraction maxi des objets flottants
%% en haut et bas de page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\floatpagefraction}{.99}
\renewcommand{\textfraction}{.01}
\renewcommand{\topfraction}{.99}
\renewcommand{\bottomfraction}{.99}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Interligne du document
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\mystretch{1.5}
\def\baselinestretch{\mystretch}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Espace entre 2 paragraphes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parskip}{12pt} % 12pt


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pas d'indentation des paragraphes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Pour éviter les veuves et orphelins
%% (lignes seules en début ou fin de pages)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\widowpenalty=10000
\clubpenalty=10000
\raggedbottom

%% Footnotes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\largFoot}

\makeatletter
\renewcommand{\@makefntext}[1]{%
  \vspace{0.5em}
  \settowidth{\largFoot}{\up{\@thefnmark}\hspace{0.5em} }
  \parindent -\largFoot
  \setlength{\leftskip}{2.5em}
  \setlength{\rightskip}{2.5em}
  \up{\@thefnmark}\hspace{0.5em} #1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page titre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\lediplome}{
  \ifthenelse{\equal{\DocLang}{francais}}
  {
    \ifthenelse{\equal{\TypeDoc}{memoire}}
    {DE LA\\MAÎTRISE EN GÉNIE\\M.Sc.A.}
    {DU\\DOCTORAT EN GÉNIE\\Ph.D.}
  }
  {
    \ifthenelse{\equal{\TypeDoc}{memoire}}
    {THE DEGREE OF\\MASTER OF SCIENCE\\M.Sc.A.}
    {THE DEGREE OF DOCTOR OF PHILOSOPHY\\Ph.D.}
  }
}

\newcommand{\diplome}[1]{
  \renewcommand{\lediplome}{#1}
}

\renewcommand{\maketitle}{\begin{titlepage}
    \renewcommand{\baselinestretch}{1}\small\normalsize % Interligne simple
    \let\footnotesize\small%
    \let\footnoterule\relax%
    \let \footnote \thanks%
    \begin{center}
      ÉCOLE DE TECHNOLOGIE SUPÉRIEURE\\
      UNIVERSITÉ DU QUÉBEC
      \vfill
      \ifthenelse{\equal{\DocLang}{francais}}
      {
        \ifthenelse{\equal{\TypeDoc}{these}}{
          THÈSE PRÉSENTÉE
        }
        {\ifthenelse{\equal{\TypeDoc}{thesepararticles}}{
            THÈSE PAR ARTICLES PRÉSENTÉE}{
            MÉMOIRE PRÉSENTÉ
          }}~À\\
        L'ÉCOLE DE TECHNOLOGIE SUPÉRIEURE
        \vfill
        COMME EXIGENCE PARTIELLE\\
        À L'OBTENTION
        \lediplome
        \vfill
        PAR\\
	\@author
        \vfill
        \MakeUppercase{\@title}%
        \vfill
        MONTRÉAL, LE \MakeUppercase{\@datedepot}
      }
      {
        \ifthenelse{\equal{\TypeDoc}{thesepararticles}}{
          MANUSCRIPT-BASED THESIS PRESENTED
        }{
          THESIS PRESENTED
        } TO\\
        ÉCOLE DE TECHNOLOGIE SUPÉRIEURE
        \vfill
        IN PARTIAL FULFILLMENT OF THE REQUIREMENTS FOR\\
        \lediplome
        \vfill
        BY\\
	\@author
        \vfill
        \MakeUppercase{\@title}%
        \vfill
        MONTREAL, \MakeUppercase{\@datedepot}%
      }

      \vspace{1em}
      {\footnotesize

        \ifthenelse{\equal{\TypeLic}{reserved}}{
          \ifthenelse{\equal{\DocLang}{francais}}
          {
            \copyright~Tous droits réservés, \@authorcopyright, \number\year
          }
          {
            \copyright~Copyright \number\year \ reserved by \@authorcopyright
          }

        }{
          \includegraphics[width=50bp]{Figures/logocc} \@authorcopyright, \number\year
        }}
    \end{center}
  \end{titlepage}
  \clearpage

  % Verso
  \newpage
  ~\\
  \vspace{15cm}

  \ifthenelse{\equal{\TypeLic}{reserved}}{%
    \fbox{\parbox{6.125in}{ %% Anciennement 6.4
        %% Interligne de 1 et taille de 10pt pour le texte
        \renewcommand{\baselinestretch}{1}\footnotesize\footnotesize
        \ifthenelse{\equal{\DocLang}{francais}}
        {
          \copyright~Tous droits réservés
          \newline
          Cette licence signifie qu'il est interdit de reproduire, d'enregistrer ou de diffuser en tout ou en partie, le présent document.  Le lecteur qui désire imprimer ou conserver sur un autre media une partie importante de ce document, doit obligatoirement en demander l'autorisation à l'auteur.
        }
        {
          \copyright~Copyright reserved
          \newline
          It is forbidden to reproduce, save or share the content of this document either in whole or in parts. The reader who wishes to print or save this document on any media must first get the permission of the author.
        }
      }}
  }{%
    \fbox{\parbox{6.125in}{
        %% Interligne de 1 et taille de 10pt pour le texte
        \renewcommand{\baselinestretch}{1}\footnotesize\footnotesize

        \includegraphics[width=50bp]{Figures/logocc}
        \newline
        \ifthenelse{\equal{\DocLang}{francais}}
        {
          Cette licence Creative Commons signifie qu'il est permis de diffuser, d'imprimer ou de sauvegarder sur un autre support une partie ou la totalité de cette oeuvre à condition de mentionner l'auteur, que ces utilisations soient faites à des fins non commerciales et que le contenu de l'oeuvre n'ait pas été modifié.
        }
        {
          This Creative Commons license allows readers to download this work and share it with others as long as the author is credited. The content of this work cannot be modified in any way or used commercially.
        }
      }}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page de présentation du jury
%% LUIS A ELIMINE L'ESPACE ENTRE LES NOMS ET LES AFFILIATIONS (Décanat...)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\presentjury{\begin{jurypage}%
    \let\footnotesize\small%
    \let\footnoterule\relax%
    \begin{center}%
      \renewcommand{\baselinestretch}{2}\small\normalsize
      \ifthenelse{\equal{\DocLang}{francais}}
      {
        \textbf{PRÉSENTATION DU JURY}\\
        \ifthenelse{\equal{\TypeDoc}{memoire}}{
          CE MÉMOIRE A ÉTÉ ÉVALUÉ
        }{CETTE THÈSE A ÉTÉ ÉVALUÉE
        }\\
        PAR UN JURY COMPOSÉ DE: \\
      }
      {
        \textbf{BOARD OF EXAMINERS}\\
        \ifthenelse{\equal{\TypeDoc}{these}}{
          THIS THESIS HAS BEEN EVALUATED
        }{THIS THESIS HAS BEEN EVALUATED
        }\\
        BY THE FOLLOWING BOARD OF EXAMINERS:\\    }
      \vspace{6em}%
    \end{center}
    \begin{flushleft}
      \renewcommand{\baselinestretch}{1}\small\normalsize
      % Directeur de mémoire
      \PrefDirect~\NomDirect,~\TxtDirect\\
      \AffilDirect\par
      \vspace{1em}

      % Codirecteur optionnel
      \ifdef{\NomCoDirect}{
        \PrefCoDirect~\NomCoDirect,~\TxtCoDirect\\%
        \vspace{3pt}
        \AffilCoDirect\par%
        \vspace{1em}
      }{}

      % Second codirecteur optionnel
      \ifdef{\NomCoDirectB}{
        \PrefCoDirectB~\NomCoDirectB,~\TxtCoDirectB\\%
        \vspace{3pt}
        \AffilCoDirectB\par%
        \vspace{1em}
      }{}

      % Président du jury
      \PrefPresid~\NomPresid,~\TxtPresid\\%
      \AffilPresid\par%
      \vspace{1em}%

      % Jury
      \ifdef{\NomJury}{
        \PrefJury~\NomJury,~\TxtJury\\
        \AffilJury\par%
        \vspace{1em}
      }{}


      % JuryB optionnel
      \ifdef{\NomJuryB}{
        \PrefJuryB~\NomJuryB\ifthenelse{\equal{\PlusTxtJuryB}{}}{,~}{,~\PlusTxtJuryB}%
        \TxtJuryB\\%
        \AffilJuryB\par%
        \vspace{1em}
      }{}


      % Examinateur externe
      \ifdef{\NomExamExt}{
        \PrefExamExt~\NomExamExt,~\TxtExamExt\\
        \AffilExamExt\par%
        \vspace{1em}
      }{}

    \end{flushleft}
    \begin{center}%
      \vspace{3em}%
      \renewcommand{\baselinestretch}{2}\small\normalsize%
      \ifthenelse{\equal{\DocLang}{francais}}
      {
        \ifthenelse{\equal{\TypeDoc}{memoire}}{IL}{ELLE}~A FAIT L'OBJET D'UNE SOUTENANCE DEVANT JURY ET PUBLIC\\
        LE \MakeUppercase{\@datesoutenance}\\
        À L'ÉCOLE DE TECHNOLOGIE SUPÉRIEURE
      }
      {
        \ifthenelse{\equal{\TypeDoc}{these}}{
          THIS THESIS
        }{
          \ifthenelse{\equal{\TypeDoc}{thesepararticles}}{
            THIS THESIS
          }{
            THIS THESIS
          }} WAS PRESENTED AND DEFENDED\\
        IN THE PRESENCE OF A BOARD OF EXAMINERS AND THE PUBLIC\\
        ON \MakeUppercase{\@datesoutenance}\\
        AT ÉCOLE DE TECHNOLOGIE SUPÉRIEURE
      }
    \end{center}\par%
    \vfil\null%
  \end{jurypage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Profondeur de la numérotation des divisions des chapitres
%% Valeur de 1(\section) à 5(\subparagraph)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Changement dans la table des matières
%% des entrées associées aux chapitres
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne%
  \if@mainmatter%
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter}%
  \addcontentsline{toc}{chapter}
  {%
    \protect
    {%
      \texorpdfstring
      {%
        \numberline
        {%
          \protect\uppercase
          {%
            \@chapapp\ \thechapter%
          }%
        }%
        \protect\uppercase\expandafter
        {%
          #1
        }%
      }%
      {%
        \@chapapp\ \thechapter\ #1%
      }%
    }%
  }%
  \else%
  \addcontentsline{toc}{chapter}{#1}%
  \fi%
  \else%
  \addcontentsline{toc}{chapter}{#1}%
  \fi%
  \chaptermark{#1}%
  \@makechapterhead{#2}%
  \@afterheading%
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Modification des chapitres numérotés
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\@makechapterhead}[1]{{
    \thispagestyle{empty}
    \begin{center}
      \singlespacing\normalfont\normalsize\bfseries
      \etchapterheadstyle{\@chapapp{ \thechapter}} % CHAPTER 1
      ~\\~\\
      \etchapterheadstyle{#1} % TITLE OF CHAPTER
      ~\\~\\
    \end{center}
    \vspace{-\parskip}
    \vspace*{-\topskip}
    \vspace{-\parskip}

  }}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Modification des chapitres sans numéro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\@makeschapterhead}[1]{{
    \thispagestyle{empty}
    \begin{center}
      \singlespacing\normalfont\normalsize\bfseries
      \etchapterheadstyle{#1} % TITLE OF CHAPTER
      ~\\~\\
    \end{center}
    \vspace{-\parskip}
    \vspace*{-\topskip}
    \vspace{-\parskip}
  }}

\newcommand{\etchapterheadstyle}[1]{\MakeUppercase{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Définition des espacements avant et après les différentes
%% divisions de chapitre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\section{\@startsection{section}{1}{\z@}%
  {-0.25ex \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus.2ex}%
  {\singlespacing\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-0.25ex\@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\singlespacing\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-0.25ex\@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\singlespacing\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {-0.25ex \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\singlespacing\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
  {0.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\singlespacing\normalfont\normalsize\bfseries}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Rédéfinition de l'environnement de la page de titre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{titlepage}{%
  \if@twocolumn
  \@restonecoltrue\onecolumn%
  \else
  \@restonecolfalse\newpage
  \fi
  \thispagestyle{empty}%
  \setcounter{page}{1}
}%
{\if@restonecol\twocolumn \else \newpage \fi%
  \if@twoside\else%
  \setcounter{page}\@ne%
  \fi
  \thispagestyle{empty}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Définition de l'environnement de la présentation du jury
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{jurypage}{%
  \if@twocolumn
  \@restonecoltrue\onecolumn%
  \else
  \@restonecolfalse\newpage
  \fi
  \thispagestyle{empty}%
}%
{\if@restonecol\twocolumn \else \newpage \fi%
  \if@twoside\else%
  \setcounter{page}\@ne%
  \fi
  \thispagestyle{empty}%
  \cleardoublepage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{abstractTemplate}[4]{%

  \newcommand\KeyWordsName{#4}
  \newcommand\KeyWords{#3}
  \if@twocolumn
  \@restonecoltrue\onecolumn%
  \else
  \@restonecolfalse\newpage
  \fi
  \cleardoublepage
  \thispagestyle{empty}% Pas de numérotation sur cette page
  \renewcommand{\baselinestretch}{1}\small\normalsize % Interligne simple
  \begin{center}
    \normalfont%
    \MakeUppercase{\bfseries#1}%
    \vskip 6\p@%
    \@author%
    \vskip 6\p@%
    \MakeUppercase{\bfseries#2}%
  \end{center}
}
{
  \vspace{2\baselineskip} %Ajout de 3 retours à la ligne avant les Mot clés
  {\KeyWordsName} % \KeyWords
  %% tabulation Nicolas Lussier-Clément 2012
  \newdimen\stringwidth
  \setbox0=\hbox{\KeyWordsName}
  \stringwidth=\wd0
  \hspace{-\stringwidth} \hspace{0.75in}
  \begin{minipage}[t]{5.3in} %
    {\KeyWords}
  \end{minipage}

  \if@restonecol\twocolumn \else \newpage \fi%
  \cleardoublepage
}


\ifthenelse{\equal{\DocLang}{francais}}
{
  \newenvironment{sommaire}[1]{\abstractTemplate{\@title}{RÉSUMÉ}{#1}{\bf Mots clés:}}{\endabstractTemplate}
  \newenvironment{abstract}[2]{\abstractTemplate{#1}{ABSTRACT}{#2}{\bf Keywords:}}{\endabstractTemplate}

}
{
  \newenvironment{abstract}[1]{\abstractTemplate{\@title}{ABSTRACT}{#1}{\bf Keywords:}}{\endabstractTemplate}
  \newenvironment{summary}[2]{\abstractTemplate{#1}{RÉSUMÉ}{#2}{\bf Mots clés:}}{\endabstractTemplate}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Avant-propos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\equal{\DocLang}{francais}}
{
  \newenvironment{avantpropos}{%
    \chapter*{Avant-propos}
  }
}
{
  \newenvironment{foreword}{%
    \chapter*{Foreword}
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{introduction}{%
  \cleardoublepage
  \chapter*{Introduction}
  \addcontentsline{toc}{chapter}{INTRODUCTION} % Ajout dans la table des matières
  \setcounter{page}{1}

  \newcommand{\numero}{\thesection}

  \newcommand{\changenumero}[1]{\renewcommand{\numero}{##1}}

  \def\sectionintro{\@ifstar\unnumberedsection\numberedsection}

  \def\numberedsection{\@ifnextchar[%]
    \numberedsectionwithtwoarguments\numberedsectionwithoneargument}

  \def\unnumberedsection{\@ifnextchar[%]
    \unnumberedsectionwithtwoarguments\unnumberedsectionwithoneargument}

  \def\numberedsectionwithoneargument##1{\numberedsectionwithtwoarguments[##1]{##1}}

  \def\unnumberedsectionwithoneargument##1{\unnumberedsectionwithtwoarguments[##1]{##1}}

  \def\numberedsectionwithtwoarguments[##1]##2{%
    \ifhmode\par\fi
    \removelastskip
    \vskip .7ex \goodbreak
    \noindent
    \begingroup
    \leavevmode\Large\bfseries\raggedright
    \normalsize\bfseries
    \numero\quad
    ##2
    \par
    \endgroup
    \vskip .7ex \nobreak
  }

  \def\unnumberedsectionwithtwoarguments[##1]##2{%
    \ifhmode\par\fi
    \removelastskip
    \vskip .7ex\goodbreak
    \noindent
    \begingroup
    \leavevmode\normalfont\Large\bfseries\raggedright
    \leavevmode\normalfont\Large\bfseries\raggedright
    \normalsize\bfseries
    ##2
    \par
    \endgroup
    \vskip .7ex\nobreak
  }


  \def\section{\refstepcounter{section}\changenumero{\thesection.} \sectionintro}
  \def\subsection{\refstepcounter{subsection}\changenumero{\thesubsection} \sectionintro}
  \def\subsubsection{\refstepcounter{subsubsection}\changenumero{\thesubsubsection} \sectionintro}
  \def\paragraph{\refstepcounter{paragraph}\changenumero{\theparagraph} \sectionintro}
  \def\subparagraph{\refstepcounter{subparagraph}\changenumero{\thesubparagraph} \sectionintro}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Revue de littérature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifthenelse{\equal{\DocLang}{francais}}
{
  \newenvironment{revuedelitterature}{%
    \cleardoublepage
    \chapter*{Revue de littérature}
    \addcontentsline{toc}{chapter}{REVUE DE LITTÉRATURE} % Ajout dans la table des matières
    \stepcounter{chapter}
  }
}
{
  \newenvironment{literaturereview}{%
    \cleardoublepage
    \chapter*{Literature review}
    \addcontentsline{toc}{chapter}{LITERATURE REVIEW} % Ajout dans la table des matières
    \stepcounter{chapter}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Conclusion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{conclusion}{%

  \ifthenelse{\equal{\TypeDoc}{thesepararticles}}{
    \ifthenelse{\equal{\DocLang}{francais}}
    {
      \chapter*{Conclusion générale}
      \addcontentsline{toc}{chapter}{CONCLUSION GÉNÉRALE}
    }
    {
      \chapter*{General Conclusion}
      \addcontentsline{toc}{chapter}{GENERAL CONCLUSION}
    }
  }{
    \chapter*{Conclusion}
    \addcontentsline{toc}{chapter}{CONCLUSION}
  }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Remerciement
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\equal{\DocLang}{francais}}
{
  \newenvironment{remerciements}{%
    \chapter*{Remerciements}
  }
}
{
  \newenvironment{acknowledgements}{%
    \chapter*{Acknowledgements}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Commande pour écrire ``Page''
%% dans les différentes tables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\tdmpage}[0]{\hspace{\fill}\mbox{Page}\vskip 0em\par}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table des matières
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifthenelse{\equal{\DocLang}{english}}
{
  \addto\captionsenglish{
    \renewcommand{\contentsname}%
    {Table of Contents}%
  }
}
{}

\renewcommand{\@dotsep}{1} % (\@dotsep est une valeur)

\renewcommand\tableofcontents{%
  \chapter*{\contentsname}
  \tdmpage
  {
    % Espace avant les différentes lignes de la table des matières
    \setlength{\parskip}{0pt}%
    % Interligne simple pour la table des matières
    \renewcommand{\baselinestretch}{1}\small\normalsize%
    \@starttoc{toc}
  }
}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne%
  \settowidth{\largNum}{\hss #2}
  \addpenalty{-\@highpenalty}%
  \tolerance=9999
  \vskip 1em \@plus\p@%
  \setlength\@tempdima{6.8em}%
  \begingroup
  \parindent \z@ \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode %
  \advance\leftskip\@tempdima%
  \hskip -\leftskip%
  \nohyphens{#1} %\nobreak
  \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}
  \hfil \nobreak\hb@xt@\largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi
}

\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\m@ne%
  \settowidth{\largNum}{\hss #2}
  \addpenalty{-\@highpenalty}%
  \tolerance=9999
  \setlength\@tempdima{3.1em}%
  \begingroup
  \parindent \z@ \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode %
  \advance\leftskip\@tempdima%
  \hskip -\leftskip%
  \nohyphens{#1} %\nobreak
  \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}
  \hfil \nobreak\hb@xt@\largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi
}

\renewcommand*\l@subsection[2]{%
  \ifnum \c@tocdepth >\m@ne%
  \settowidth{\largNum}{\hss #2}
  \addpenalty{-\@highpenalty}%
  \tolerance=9999
  \setlength\@tempdima{3.7em}%
  \begingroup
  \parindent 3.1em \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode %
  \advance\leftskip 6.8em%\@tempdima%
  \hskip -\leftskip%
  \nohyphens{#1} %\nobreak
  \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}
  \hfil \nobreak\hb@xt@\largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi
}

\renewcommand*\l@subsubsection[2]{%
  \ifnum \c@tocdepth >\m@ne%
  \settowidth{\largNum}{\hss #2}
  \addpenalty{-\@highpenalty}%
  \tolerance=9999
  \setlength\@tempdima{4.3em}%
  \begingroup
  \parindent 6.8em \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode %
  \advance\leftskip 11.1em%\@tempdima%
  \hskip -\leftskip%
  \nohyphens{#1} %\nobreak
  \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}
  \hfil \nobreak\hb@xt@\largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Profondeur des entrées dans la table
%% des matières: 3=\subsubsection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{3}


\ifthenelse{\equal{\WithAlgoTe}{true}}{

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Liste des algorithmes
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \renewcommand\listofalgorithms{%
    \chapter*{\listalgorithmename}
    % \vskip 1\baselineskip
    \tdmpage
    {
      \setlength{\parskip}{0pt}%
      % Interligne simple pour la table des matières
      \renewcommand{\baselinestretch}{1}\small\normalsize%
      \@starttoc{loa}%
    }
  }


  \renewcommand \thealgocf
  {\arabic{chapter}.\@arabic\c@algocf}
  \renewcommand*\l@algocf[2]{%
    \settowidth{\largNum}{\hss #2}
    \ifnum \c@tocdepth >\m@ne%
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@%
    \setlength\@tempdima{3.4em}%
    \noindent%
    \begingroup
    \pretolerance=10000
    \parindent \z@ \rightskip \tocRightMargin%
    \parfillskip -\tocRightMargin%
    \leavevmode \normalsize%
    \advance\leftskip \tocLeftMarginSecondLineAlgo%
    \hskip -\leftskip%
    {\algorithmname\mbox{\hspace{4pt}}#1}%\nobreak%
    \leaders\hbox{$\m@th%
      \mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
      mu$} \hfil\nobreak\hb@xt@%
    \largNum{\hss #2}\par%
    \penalty\@highpenalty%
    \endgroup
    \fi}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Liste des figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\listoffigures{%
  \chapter*{\listfigurename}
  \tdmpage
  {
    \setlength{\parskip}{0pt}%
    % Interligne simple pour la table des matières
    \renewcommand{\baselinestretch}{1}\small\normalsize%
    \@starttoc{lof}%
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Numérotation des figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand \thefigure
{\arabic{chapter}.\@arabic\c@figure}
\renewcommand*\l@figure[2]{%
  \settowidth{\largNum}{\hss #2}
  \ifnum \c@tocdepth >\m@ne%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@%
  \setlength\@tempdima{3.4em}%
  \noindent%
  \begingroup
  \pretolerance=10000
  \parindent \z@ \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode \normalsize%
  \advance\leftskip \tocLeftMarginSecondLineFigure%
  \hskip -\leftskip%
  {\figurename\mbox{\hspace{4pt}}#1}%\nobreak%
  \leaders\hbox{$\m@th%
    \mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
    mu$} \hfil\nobreak\hb@xt@%
  \largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Liste des tableaux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\listoftables{%
  \chapter*{\listtablename}
  \tdmpage
  {
    \setlength{\parskip}{0pt}%
    % Interligne simple pour la table des matières
    \renewcommand{\baselinestretch}{1}\small\normalsize%
    \@starttoc{lot}%
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Numérotation des tableaux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand \thetable
{\arabic{chapter}.\@arabic\c@table}
\renewcommand*\l@table[2]{%
  \settowidth{\largNum}{\hss #2}
  \ifnum \c@tocdepth >\m@ne%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@%
  \setlength\@tempdima{3.4em}%ici pour changer l'espace entre le numero et le titre du tableau !! (défaut 2.2em)
  \noindent%
  \begingroup
  \pretolerance=10000
  \parindent \z@ \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode \normalsize%
  \advance\leftskip \tocLeftMarginSecondLineTable %5.2em%8.4em%
  \hskip -\leftskip%
  {\tablename\mbox{\hspace{4pt}}#1}%\nobreak%
  \leaders\hbox{$\m@th%
    \mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
    mu$} \hfil\nobreak\hb@xt@%
  \largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Liste des extraits de code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\lstlistoflistings{%
  \chapter*{\lstlistlistingname}%
  \tdmpage
  {
    \setlength{\parskip}{0pt}%
    \renewcommand{\baselinestretch}{1}\small\normalsize%
    \@starttoc{lol}%
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Numérotation des extraits de code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*\l@lstlisting[2]{%
  \settowidth{\largNum}{\hss #2}
  \ifnum \c@tocdepth >\m@ne%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@%
  \setlength\@tempdima{3.4em}%
  \noindent%
  \begingroup
  \pretolerance=10000
  \parindent \z@ \rightskip \tocRightMargin%
  \parfillskip -\tocRightMargin%
  \leavevmode \normalsize%
  \advance\leftskip \tocLeftMarginSecondLineFigure%
  \hskip -\leftskip%
  {\lstlistingname\mbox{\hspace{4pt}}#1}%\nobreak%
  \leaders\hbox{$\m@th%
    \mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
    mu$} \hfil\nobreak\hb@xt@%
  \largNum{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup
  \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Liste des symboles et abbréviations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\descril}
\setlength{\descril}{3cm} % Taille du label par défaut

\newcommand*\losymblabel[1]{\mbox{#1}\hfill}

\newenvironment{listofabbr}[1][\descril]{%
  \cleardoublepage
  \ifthenelse{\equal{\DocLang}{francais}}
  {
    \chapter*{Liste des abréviations, sigles et acronymes}
  }
  {
    \chapter*{List of abreviations}
  }
  \begin{list}{\mbox{}}{%
      \renewcommand\makelabel\losymblabel%
      \leftmargin #1%
      \labelwidth \leftmargin%
      \labelsep    1mm
    }}%
  {\end{list}}

\newenvironment{listofsymbols}[1][\descril]{%
  \cleardoublepage
  \ifthenelse{\equal{\DocLang}{francais}}
  {
    \chapter*{Liste des symboles et unités de mesure}
  }
  {
    \chapter*{Liste of symbols and units of measurements}
  }
  \begin{list}{\mbox{}}{%
      \renewcommand\makelabel\losymblabel%
      \leftmargin #1%
      \labelwidth \leftmargin%
      \labelsep    1mm
    }}%
  {\end{list}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mise en forme des légendes pour les figures et tableaux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\largetiqfig}
\setlength{\largetiqfig}{2.2cm}
\newlength{\larglegendfig}
\setlength{\larglegendfig}{\textwidth-\largetiqfig}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\tempabovecaptionskip}   %% Pour enlever l'éspace après le caption du tableau


%%%%
% On utilise le package caption pour définir le format des légendes
%
\captionsetup[figure]{labelfont=normalfont,font=singlespacing,justification=centering,labelsep=quad,position=below}
\captionsetup[table]{labelfont=normalfont,font=singlespacing,justification=centering,labelsep=quad,position=above}

%% Les subfigures sont de la forme a), mais a en citées.
\DeclareCaptionLabelFormat{singleparens}{#2)}
\captionsetup[subfigure]{labelformat=singleparens}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Etant donne que la commande \captionsetup{list=no} n a pas marche pour enlever les legendes
% des figures et des tableaux des listes de figures et tableau, je triche en declarant un nouveau
% float pour les annexes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareCaptionType{figureap}[Figure-A]
\captionsetup[figureap]{labelfont=normalfont,font=singlespacing,justification=centering,labelsep=quad}
\renewenvironment{figureap}[1][]{%
  % espace ajouter directement  dans le texte (a l endroit ou se trouve la figure) pour decaler vers le bas
  \vspace{0.5\baselineskip}%   % ajout decalage vers bas
  \@float{figureap}%
  \centering
}{%
\end@float
\vspace{-0.5\baselineskip} % supprime decalage vers bas ajout au dessus
}
\renewcommand{\thefigureap}{{\thechapter-\arabic{figureap}}}

\newsubfloat{figureap} %% Definition des subfigures en annexe

\ifthenelse{\equal{\DocLang}{francais}}
{
  \DeclareCaptionType{tableap}[Tableau-A]
}
{
  \DeclareCaptionType{tableap}[Table-A]
}
\captionsetup[tableap]{labelfont=normalfont,labelsep=quad,justification=centering,skip=1.5\baselineskip}
\renewenvironment{tableap}[1][]{%
  \@float{tableap}%
  \centering
}{%
\end@float
}
\renewcommand{\thetableap}{{\thechapter-\arabic{tableap}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mise en forme des listes enumerate et itemize
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\equal{\DocLang}{francais}}{	    \ifdef{\ifFBStandardItemizeEnv}{\frenchbsetup{StandardItemizeEnv=true,StandardEnumerateEnv=true}}{}
}{}
% Pour enumerate, pas de décallage des puces, numérotation en lettres minuscules
\setlist[enumerate]{leftmargin=*,label=\alph*. , labelsep=1em}

% Pour itemize, pas de décallage des puces, utilisation de point
\setlist[itemize]{leftmargin=*,label=$\bullet$ , labelsep=1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Numérotation des annexes en chiffres arabes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\appendix}{
  \par

  \setcounter{chapter}{0}%

  \gdef\@chapapp{\appendixname}%
  \renewcommand\thechapter{\Roman{chapter}}



  \newcommand{\numero}{\thesection}

  \newcommand{\changenumero}[1]{\renewcommand{\numero}{##1}}

  \renewcommand \thesection{\@arabic\c@section} % Enleve le numero du chapitre courant

  \def\sectionannexe{\@ifstar\unnumberedsection\numberedsection}

  \def\numberedsection{\@ifnextchar[%]
    \numberedsectionwithtwoarguments\numberedsectionwithoneargument}

  \def\unnumberedsection{\@ifnextchar[%]
    \unnumberedsectionwithtwoarguments\unnumberedsectionwithoneargument}

  \def\numberedsectionwithoneargument##1{\numberedsectionwithtwoarguments[##1]{##1}}

  \def\unnumberedsectionwithoneargument##1{\unnumberedsectionwithtwoarguments[##1]{##1}}

  \def\numberedsectionwithtwoarguments[##1]##2{%
    \ifhmode\par\fi
    \removelastskip
    \vskip .7ex \goodbreak
    \noindent
    \begingroup
    \leavevmode\Large\bfseries\raggedright
    \normalsize\bfseries
    \numero\quad
    ##2
    \par
    \endgroup
    \vskip .7ex \nobreak
  }

  \def\unnumberedsectionwithtwoarguments[##1]##2{%
    \ifhmode\par\fi
    \removelastskip
    \vskip .7ex\goodbreak
    \noindent
    \begingroup
    \leavevmode\normalfont\Large\bfseries\raggedright
    \leavevmode\normalfont\Large\bfseries\raggedright
    \normalsize\bfseries
    ##2
    \par
    \endgroup
    \vskip .7ex\nobreak
  }

  \def\section{\refstepcounter{section}\changenumero{\thesection.} \sectionannexe}

  \def\subsection{\refstepcounter{subsection}\changenumero{\thesubsection} \sectionannexe}

  \def\subsubsection{\refstepcounter{subsubsection}\changenumero{\thesubsubsection} \sectionannexe}

  \def\paragraph{\refstepcounter{paragraph}\changenumero{\theparagraph} \sectionannexe}

  \def\subparagraph{\refstepcounter{subparagraph}\changenumero{\thesubparagraph} \sectionannexe}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Pour une bonne mise en page des annexes
  %% ANNEXE doit apparaitre dans la table des matieres lors de sa premiere apparition
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \newcommand{\multiannexe}{} %%Pour le moment

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Modification des annexes numérotées        % NOUVELLE DEMANDE : PAS REPETER LE TITRE SUR LA PAGE SUIVANTE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \renewcommand{\@makechapterhead}[1]{{
      \singlespacing\normalfont\bfseries%
      \begin{center}
        \MakeUppercase{\appendixname~\thechapter} % ANNEXE 1
        \vskip 3\p@%
        \MakeUppercase{##1} % Title of annexe
      \end{center}
      \thispagestyle{empty}%
      \setcounter{section}{0}%

    }}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Modification des annexes sans numéro (ne devrait pas être utilisé)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \renewcommand{\@makeschapterhead}[1]{{
      \thispagestyle{empty}
      \singlespacing \normalfont\bfseries%
      \begin{center}
        \MakeUppercase{##1} % TITLE OF ANNEXE
      \end{center}
      \vskip 5\p@%
      \thispagestyle{empty}
      \setcounter{section}{0}%

    }}

  \renewenvironment{figure}{\begin{figureap}}{\end{figureap}}
  \renewenvironment{table}{\begin{tableap}}{\end{tableap}}

  \renewcommand{\theequation}{A \thechapter-\arabic{equation}}
}

%
% Intitulés francais des figures, tableaux, etc.
%
\ifthenelse{\equal{\DocLang}{francais}}
{
  \addto\captionsfrench{\def\figurename{{Figure}}}
  \addto\captionsfrench{\def\tablename{{Tableau}}}
  \addto\captionsfrench{\def\lstlistingname{{Extrait}}}
  \addto\captionsfrench{\def\lstlistlistingname{{Liste des extraits de code}}}
  \addto\captionsfrench{\def\algorithmname{{Algorithme}}}
  \addto\captionsfrench{\def\listfigurename{{Liste des figures}}}
  \addto\captionsfrench{\def\listalgorithmename{{Liste des algorithmes}}}
  \addto\captionsfrench{\def\CaptionSeparator{{\space\space}}}
}
{
  \def\listalgorithmename{{List of algorithms}}
  \def\algorithmname{{Algorithm}}

}




% Pour avoir des citations à interligne simple

\renewenvironment{quote}{
  \linespread{1}\small\normalsize\list{}{\rightmargin\leftmargin}%
\item\relax
}{\endlist}

%
% Bonne présentation des figures et tables
%

\renewenvironment{figure}[1][]{%
  % espace ajouté directement  dans le texte (a l endroit ou se trouve la figure) pour decaler vers le bas
  \vspace{0.5\baselineskip}%   % ajout decalage vers bas
  \@float{figure}%
  \centering
}{%
\end@float
\vspace{-0.5\baselineskip} % supprime decalage vers bas ajout au dessus
}

\renewenvironment{table}[1][]{%
  \@float{table}%
  \centering
}{%
\end@float
}

%
% Positionnement des flottants
% on privilégie htbp (here, top, bottom, next page)
%
\def\fps@figure{htbp}
\def\fps@table{htbp}

\def\fps@figureap{htbp}
\def\fps@tableap{htbp}



\theoremstyle{plain}
\newtheorem{definition}{Definition}[chapter]

% Présentation des auteurs et affiliations pour une thèse par articles

\newif\ifartAuthSep
\newif\ifartAffSep
\newcommand*{\articleAuthors}[2]{%
  \parbox{\textwidth}{\center
    \artAuthSepfalse
    \artAuthScan#1\relax
    \\
    \artAffSepfalse
    \artAffScan#2\relax
  }
}

\newcommand{\artAuthScan}[1]{%
  \ifx\relax#1\empty
  \else
  \ifartAuthSep
  , \relax
  \else
  \artAuthSeptrue
  \fi
  #1\relax\expandafter\artAuthScan
  \fi
}

\newcommand{\artAffScan}[1]{%
  \ifx\relax#1\empty
  \else
  \ifartAffSep
  \\ \relax
  \else
  \artAffSeptrue
  \fi
  #1 \relax
  \expandafter\artAffScan
  \fi
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rédéfinition de \cleardoublepage pour l'impression recto-verso
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}
  \thispagestyle{empty}
  \newpage
  \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother \clearpage{\pagestyle{empty}\cleardoublepage}
