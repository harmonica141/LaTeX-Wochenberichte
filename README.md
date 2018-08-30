# LaTeX-Wochenberichte

## Allgemein
* Einzelne Wochenberichte sollen fortlaufend nummeriert werden mit 3-stelligen Zahlen, führer Null und keinem anderen Namenszusatz:
  <code>001.tex</code>
* Das LaTaX-Stylesheet beschränkt sich auf die Verwendung von Standard-Paketen und kann ohne weiteren Aufwand unabhängig vom Betriebssystem eingebunden werden.

## Make
Die Makefile benötigt
* make
* [https://mg.readthedocs.io/latexmk.html](latexmk)
* Ghostscript

Die Software ist für alle Betriebssysteme verfügbar. Latexmk kann je nach verwendeter TeX-Distribution direkt aus den TeX-Paketquellen installiert werden oder ist standardmäßig verfügbar.

Jede in der makfile verwendete Software muss im PATH des Systems eingetragen sein, damit der Aufruf von make automatisiert aus der Kommandozeile erfolgen kann.
