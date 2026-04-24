@echo off
setlocal
cd /d "%~dp0"
pdflatex -interaction=nonstopmode -halt-on-error HW5_report.tex
if errorlevel 1 exit /b %errorlevel%
pdflatex -interaction=nonstopmode -halt-on-error HW5_report.tex
