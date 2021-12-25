FROM fedora:31

RUN yum update -y

RUN yum install -y  \
	texlive-collection-basic \
	texlive-collection-bibtexextra \
	texlive-collection-binextra \
	texlive-collection-context \
	texlive-collection-fontsextra \
	texlive-collection-fontsrecommended \
	texlive-collection-fontutils \
	texlive-collection-formatsextra \
	texlive-collection-games \
	texlive-collection-genericextra \
	texlive-collection-genericrecommended \
	texlive-collection-htmlxml \
	texlive-collection-humanities \
	texlive-collection-langcyrillic \
	texlive-collection-langenglish \
	texlive-collection-latexextra \
	texlive-collection-latexrecommended \
	texlive-collection-latex \
	texlive-collection-luatex \
	texlive-collection-mathextra \
	texlive-collection-metapost \
	texlive-collection-music \
	texlive-collection-omega \
	texlive-collection-pictures \
	texlive-collection-plainextra \
	texlive-collection-pstricks \
	texlive-collection-publishers \
	texlive-collection-science 

COPY ./CV/newcv.tex .

CMD ["pdflatex", "-interaction=nonstopmode", "newcv.tex"]
