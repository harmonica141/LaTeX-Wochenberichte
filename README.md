# LaTeX-Wochenberichte

## Allgemein
* Einzelne Wochenberichte sollen fortlaufend nummeriert werden mit 3-stelligen Zahlen, führender Null und keinem anderen Namenszusatz:
  <code>001.tex</code>
* Das LaTeX-Stylesheet beschränkt sich auf die Verwendung von Standard-Paketen und kann ohne weiteren Aufwand unabhängig vom Betriebssystem eingebunden werden.
* Bilder werden im Ordner <code>./figures</code> gesammelt und von dort eingebunden.

# Verwendung
Alle Berichte werden im selben Verzeichnis angelegt, das Stylesheet liegt im selben Verzeichnis. In den Dokumenten wird es mit <code>\usepackage{wochenbericht}</code> eingebunden. Die genaue Verwendung ist beispielhaft in der <code>vorlage.tex</code> gezeigt.

## Make
Um nicht alle TeX-Dokumente einzeln kompilieren zu müssen, wurde eine makefile erstellt. Diese wird ebenfalls in das Root-Verzeichnis der Berichte kopiert. Bei jedem Durchlauf erstellt die makefile eine <code>all.pdf</code>, in der alle Berichte an einander gereiht werden. Dies erleichert erheblich das Drucken als Stapel.

Wichtig ist, dass die makefile nur funktionierende Dokumente kompiliert und andernfalls abbricht. Es erfolgt kein Debugging, fehlgeschlagene PDFs fehlen kommentarlos in der <code>all.pdf</code>.

### Syntax
Die Makefile benötigt
* make
* latexmk
* Ghostscript

Gestartet wird ein Durchlauf mit <code>make</code>.

<code>make clean</code> löscht alle beim Compiling mit LaTeX angefallenen Hilfsdateien exclusive Bibliographien, Bildern und natürlich <code>*.tex</code>, <code>*.pdf</code> und eventueller Funktionsdateien von Git.

Die Dependencies sind für alle Betriebssysteme verfügbar. Latexmk kann je nach verwendeter TeX-Distribution direkt aus den TeX-Paketquellen installiert werden oder ist standardmäßig verfügbar. GnuMake und Ghostscript existieren als Windows- und MacOS-Installer sowie in allen Linux-Paketquellen.

Jede in der makefile verwendete Software muss im PATH des Systems eingetragen sein, damit der Aufruf von make automatisiert aus der Kommandozeile erfolgen kann. Was der Anwender nicht ohne Angabe von Pfaden in der CLI starten kann, kann auch make nicht verwenden.
