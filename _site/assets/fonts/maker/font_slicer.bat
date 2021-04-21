@echo off
setlocal EnableDelayedExpansion
set i=0
for /F "tokens=1 delims=" %%x in  (unicode_range_list.txt) do (
pyftsubset "D2Coding-Ver1.3.2-20180524.ttf" ^
--output-file="D2Coding_subset/d2coding_subset_!i!.ttf" ^
--unicodes="%%x" ^
--layout-features='*' ^
--glyph-names ^
--symbol-cmap ^
--legacy-cmap ^
--notdef-glyph ^
--notdef-outline ^
--recommended-glyphs ^
--name-legacy ^
--drop-tables= ^
--name-IDs='*' ^
--name-languages='*'
set /A i+=1
)