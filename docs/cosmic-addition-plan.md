# COSMIC addition plan / Plano de adição do COSMIC / Plan de adición de COSMIC / Plan d’ajout de COSMIC

## PT
Objetivo: adicionar COSMIC ao sistema atual sem perder a base consolidada do Diesel OS Lab.

Base que deve permanecer preservada:
- GNOME atual
- GDM atual
- branding Diesel OS Lab
- NVIDIA já validada
- Steam, GameMode e ambiente gamer atual
- dconf e ajustes visuais já consolidados

Risco principal:
- o caminho suportado do COSMIC no NixOS utiliza `cosmic-greeter`, o que pode interferir na camada de login atualmente estável com GDM

Estratégia:
1. manter a máquina atual como baseline
2. preparar a adaptação primeiro no repositório paralelo
3. separar o bloco COSMIC da base principal
4. só tocar no sistema real depois de revisar a mudança completa
5. priorizar teste reversível

## EN
Goal: add COSMIC to the current system without losing the consolidated Diesel OS Lab base.

Base that must remain preserved:
- current GNOME
- current GDM
- Diesel OS Lab branding
- already validated NVIDIA setup
- current Steam, GameMode and gaming environment
- dconf and visual adjustments already consolidated

Main risk:
- the supported COSMIC path on NixOS uses `cosmic-greeter`, which may interfere with the login layer currently stable with GDM

Strategy:
1. keep the current machine as the baseline
2. prepare the adaptation first in the parallel repository
3. separate the COSMIC block from the main base
4. only touch the real system after reviewing the full change
5. prioritize reversible testing

## ES
Objetivo: añadir COSMIC al sistema actual sin perder la base consolidada de Diesel OS Lab.

Base que debe mantenerse:
- GNOME actual
- GDM actual
- branding Diesel OS Lab
- NVIDIA ya validada
- Steam, GameMode y entorno gamer actual
- dconf y ajustes visuales ya consolidados

Riesgo principal:
- la vía soportada de COSMIC en NixOS utiliza `cosmic-greeter`, lo que puede interferir con la capa de inicio de sesión actualmente estable con GDM

Estrategia:
1. mantener la máquina actual como línea base
2. preparar la adaptación primero en el repositorio paralelo
3. separar el bloque COSMIC de la base principal
4. tocar el sistema real solo después de revisar el cambio completo
5. priorizar pruebas reversibles

## FR
Objectif : ajouter COSMIC au système actuel sans perdre la base consolidée de Diesel OS Lab.

Base à préserver :
- GNOME actuel
- GDM actuel
- branding Diesel OS Lab
- configuration NVIDIA déjà validée
- environnement actuel Steam, GameMode et gaming
- dconf et ajustements visuels déjà consolidés

Risque principal :
- la voie prise en charge pour COSMIC sur NixOS utilise `cosmic-greeter`, ce qui peut interférer avec la couche de connexion actuellement stable avec GDM

Stratégie :
1. conserver la machine actuelle comme base
2. préparer l’adaptation d’abord dans le dépôt parallèle
3. séparer le bloc COSMIC de la base principale
4. ne toucher au système réel qu’après avoir revu le changement complet
5. privilégier des tests réversibles
