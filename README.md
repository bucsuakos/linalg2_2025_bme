#2025 szaktársaknak

A deffiníciókkal minimum, az állításokkal is remélhetőleg el szeretnék
készülni, viszont a bizonyításokkal csak akkor, ha kapok segítséget.

#Azoknak akik szeretnének segíteni

Akik hibát találnak a **pdf**-ben, azok írják meg (lehetőleg github
kommentben), a hiba helyével együtt (legalább az oldalszámot, azon belül is
fent, középen, alul, ha deffinícióban, tételben, állításban, lemmában van a
hiba, akkor azoknak a számát, sőt ha nem is ezekben van hiba, akkor is meg
lehet írni, hogy melyik kettő közötti részben).

Ha valaki szeretne latex-kóddal hozzájárulni és tud githubot használni, az
csinálja (szépen kérem).

#Github májsztró szamaritánoknak (csak linux)

A cél az, hogy a kódban levő kommentekből tiszta legyen a munkafolyamat, de
ha kell, akkor dokumentációt is írok.

Röviden az alábbi dolgokat teljesíti a file-ok rendszere:
- egy latexet kell csak szerkeszteni, abból származnak:
	- első féléves + egész feléves anyag
	- csak deffiníciók, csak tétel + deffiníció stb.
	- nyomtatóbarát verzió
- több, logikailag különálló kódrészek szét vannak választva.

Ezek azért hasznosak, mert a szövegben előforduló hibákat nem kell minden
változatban javítani, illetve esetleges új igényeket esetleg ki lehet
elégíteni.

A fentiek úgy vannak megvalósítva, hogy két file van, amiből minden
származik (plusz még konfigurációs cuccok):
 - int_linalg2_1.tex
 - int_linalg2_2.tex
Az int, mint interior, ez azt jelöli, hogy nincsen benne a \begin{document}
és az az előtti rész és az \end{document}. Az 1. és 2. rész a két félév
miatt van és ezeket egy harmadik latex fileban \input-tal lehet berakni (ami
ha jól tudom, akkor csak annyit jelent, hogy fordításkor a konkrét
szövegrész kerül a helyére). Minden más változatnak van egy ilyen végső
latex file-ja, ami csak a \documentclass-t, a címcsináló cuccokat, és a
\begin- és \end{document} részeken kívül csak pár \input{cucc.tex} dolgot
tartalmaz.

Ha tehát az első félév deffinícióit akarjuk csak, akkor az
int_linalg2_1.tex-ből kinyerjük csak a deffiníciókat és az
int_linalg2_1_deff.tex fileba berakjuk (amit már speciel automatizáltam egy
bash-sel), majd inputolom egy vég-latex-ba, linalg2_1_deff.tex-be.

#Érdekesség

Ha nincsen olyan cucc, ami már ugyanazt csinálja, amit én összetákoltam
(biztos, hogy tex-ben is meg lehet ezeket oldani), akkor általánosítható ez
a rendszer és több tárgyhoz való jegyzetkészítéshez is könnyebben lehet
jegyzetet készíteni.
