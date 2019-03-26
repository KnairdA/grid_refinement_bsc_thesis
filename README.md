# Gitterverfeinerte Lattice Boltzmann Methoden in OpenLB

Komplette LaTeX-Quellen meiner Bachelorarbeit zu obigem Thema am KIT.

[gitterverfeinerte_lbm_in_openlb.pdf](https://static.kummerlaender.eu/media/gitterverfeinerte_lbm_in_openlb.pdf)

## Zusammenfassung

Dank moderner paralleler Hochleistungsrechner können immer mehr praktische Strömungsprobleme mittels numerischer Simulationen gelöst werden. Ein Ansatz dazu ist die Lattice Boltzmann Methode, welche u. a. durch ihre gute Skalierbarkeit auf eben diesen Parallelrechnern zunehmend an Bedeutung gewinnt.  
Trotz anhaltendem Wachstum der verfügbaren Rechenleistung können viele reale Strömungsprobleme weiterhin nur unter Einschränkungen in akzeptabler Zeit und Genauigkeit gelöst werden. Ein Ansatz, diesem Konflikt zu begegnen, ist die lokale Verfeinerung der LBM zugrunde liegenden Gitter.  
[OpenLB](https://www.openlb.net/) ist eine in C++ geschriebene freie Bibliothek zur Implementierung von LBM basierenden Strömungssimulationen. Aktuell bietet OpenLB noch keine Unterstützung für Gitterverfeinerung.  
Ziel dieser Arbeit ist es, aus der Behebung dieser Einschränkung heraus einen Gitterverfeinerungsansatz theoretisch nachzuvollziehen und dessen Einsetzbarkeit praktisch zu evaluieren. Zu diesen Zweck werden anhand einer zweidimensionalen Lattice Boltzmann Methode verschiedene Ansätze zur Verfeinerung von Gittern diskutiert. Darauf aufbauend wird ein konkretes Verfahren detailliert ausformuliert und im Rahmen der Entwicklung eines generischen Gitterverfeinerungsframeworks umgesetzt. Der übergeordneten Fragestellung nach dem tatsächlichen Nutzen und möglichen Problemen von gitterverfeinerten Lattice Boltzmann Methoden wird durch die Evaluation von Anwendungsbeispielen Rechnung getragen. In diesem Kontext findet weiterhin eine Besprechung der formal begründeten anwendungsbezogenen Auswahl von zu verfeinernden Gebieten statt.

## Build

```
nix-shell --command make
```

Die Rohdaten der dokumentierten Simulationsergebnisse finden sich in `img/data`.
