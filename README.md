# $\LaTeX$ source code for my (Shikhara Bhat's) MS thesis.

<p align="justify">
This repository contains the TeX files required for compiling my (Shikhara Bhat's) MS thesis, written as part of the BS-MS degree at the Indian Institute of Science Education and Research (IISER) Pune, India, in the year 2022-23. The thesis was conducted under the supervision of <a href='https://teelabiisc.wordpress.com/'>Prof. Vishwesha Guttal</a> and <a href='https://sites.google.com/view/rohinibalakrishnanlab/home'>Prof. Rohini Balakrishnan</a> at the Centre for Ecological Sciences in the Indian Institute of Science, Bengaluru. <a href='https://sites.google.com/a/acads.iiserpune.ac.in/sdlab/pbl-iiser-p'>Prof. Sutirth Dey</a> from IISER Pune acted as the internal expert for evaluating the thesis.
</br>
</br>
The 'ind_files' folder contains individual TeX files for each chapter. MS_thesis.tex is the 'main' file that collates the chapters and uses the class file to make the thesis.</br>
Figures used in the thesis are stored as PNG files in the 'figures' folder. One particular figure was generated in TikZ; The relevant TeX code for making this figure can also be found in the 'figures' folder. </br>
The 'backend' folder contains the IISER Pune logo (for the title page of the thesis) as well as two PDFs, certificate.pdf and declaration.pdf, that are needed for formal purposes and go into the frontmatter of the thesis as two individual pages (the .cls file will insert all of these into the final compiled thesis for you as long as they are named correctly). These latter PDFs are compiled from DOCX files which are also present in the 'backend' folder and can be edited if you want to include your own name,title, etc. The final version of the thesis that I am supposed to submit to IISER needs the signatures of the student (me) as well as the supervisors on the certificate and declaration pages. I am not including the actual signatures or signed versions here for obvious reasons, but this is the biggest reason for compiling these two pages separately from DOCX files.</br>
</br>
A PDF of the thesis can be generated by compiling MS_thesis.tex and using biber for the bibliography. If you are compiling from the command line and using pdflatex, this means running
</p>

```zsh
foo@bar:~ pdflatex MS_thesis.tex
foo@bar:~ biber MS_thesis
foo@bar:~ pdflatex MS_thesis.tex
```
<p align="justify">
I have used a modified version of the iiser-thesis.cls class file in which I have made some changes to make some headings more aesthetic, import the certificate and declaration pages from precompiled PDFs, and allow for co-supervisors. <a href='https://sites.google.com/site/anindyagoswami/info'>Prof. Anindya Goswami</a> created the original iiser-thesis.cls file by modifying the <a href='https://ctan.org/tex-archive/macros/latex/contrib/brandeis-dissertation?lang=en'>brandeis-dissertation.cls</a> file.
</p>

