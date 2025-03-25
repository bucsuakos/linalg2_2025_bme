#bevalg2_2025_bme

A tex-file is broken into its pieces, just so it could be reassembled as we
like. There are two types of parts: math-parts (Theorem, Deffinition,
Proof), and tex-parts (e. g. packages, theorem-declarations,
\end{document},\begin{document}, title section etc.)

The "breaking to pieces" means putting different tex-parts in different
files and referencing them at the "reassambling" with \input.
