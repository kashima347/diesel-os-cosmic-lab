# Diesel OS Cosmic Lab

**PT:** Projeto paralelo de pesquisa e desenvolvimento para avaliar o desktop COSMIC como possível base futura, edição alternativa ou fonte de ideias visuais para o ecossistema Diesel OS Lab.  
**EN:** Parallel research and development project to evaluate the COSMIC desktop as a possible future base, alternative edition, or source of visual ideas for the Diesel OS Lab ecosystem.  
**ES:** Proyecto paralelo de investigación y desarrollo para evaluar el escritorio COSMIC como posible base futura, edición alternativa o fuente de ideas visuales para el ecosistema Diesel OS Lab.  
**FR:** Projet parallèle de recherche et développement visant à évaluer le bureau COSMIC comme base future possible, édition alternative ou source d’idées visuelles pour l’écosystème Diesel OS Lab.

---

## Objetivo / Objective / Objetivo / Objectif

**PT:** Este repositório existe para testar o COSMIC de forma controlada, sem contaminar a base principal do Diesel OS Lab.  
**EN:** This repository exists to test COSMIC in a controlled way, without contaminating the main Diesel OS Lab base.  
**ES:** Este repositorio existe para probar COSMIC de forma controlada, sin contaminar la base principal de Diesel OS Lab.  
**FR:** Ce dépôt existe pour tester COSMIC de manière contrôlée, sans contaminer la base principale de Diesel OS Lab.

**PT:** O foco inicial é responder quatro perguntas:  
**EN:** The initial focus is to answer four questions:  
**ES:** El enfoque inicial es responder cuatro preguntas:  
**FR:** L’objectif initial est de répondre à quatre questions :

1. **PT:** O COSMIC combina com a identidade visual do Diesel OS Lab?  
   **EN:** Does COSMIC fit the visual identity of Diesel OS Lab?  
   **ES:** ¿COSMIC combina con la identidad visual de Diesel OS Lab?  
   **FR:** COSMIC correspond-il à l’identité visuelle de Diesel OS Lab ?

2. **PT:** A sessão fica estável e agradável no uso real?  
   **EN:** Is the session stable and pleasant in real use?  
   **ES:** ¿La sesión se mantiene estable y agradable en el uso real?  
   **FR:** La session est-elle stable et agréable en usage réel ?

3. **PT:** O comportamento com Wayland e NVIDIA é bom o suficiente?  
   **EN:** Is the behavior with Wayland and NVIDIA good enough?  
   **ES:** ¿El comportamiento con Wayland y NVIDIA es suficientemente bueno?  
   **FR:** Le comportement avec Wayland et NVIDIA est-il suffisamment bon ?

4. **PT:** Vale evoluir para edição futura, variante oficial ou laboratório permanente?  
   **EN:** Is it worth evolving into a future edition, official variant, or permanent lab?  
   **ES:** ¿Vale la pena evolucionarlo hacia una edición futura, variante oficial o laboratorio permanente?  
   **FR:** Vaut-il la peine d’évoluer vers une future édition, une variante officielle ou un laboratoire permanent ?

---

## Princípios do projeto / Project principles / Principios del proyecto / Principes du projet

- **PT:** manter o Diesel OS Lab principal separado  
  **EN:** keep the main Diesel OS Lab separate  
  **ES:** mantener separado el Diesel OS Lab principal  
  **FR:** garder séparé le Diesel OS Lab principal

- **PT:** trabalhar com mudanças pequenas e testáveis  
  **EN:** work with small and testable changes  
  **ES:** trabajar con cambios pequeños y comprobables  
  **FR:** travailler avec des changements petits et testables

- **PT:** preservar branding reaproveitável  
  **EN:** preserve reusable branding  
  **ES:** preservar branding reutilizable  
  **FR:** préserver un branding réutilisable

- **PT:** registrar decisões e resultados  
  **EN:** record decisions and results  
  **ES:** registrar decisiones y resultados  
  **FR:** enregistrer les décisions et les résultats

- **PT:** evitar mudanças grandes sem validação prévia  
  **EN:** avoid large changes without prior validation  
  **ES:** evitar cambios grandes sin validación previa  
  **FR:** éviter les grands changements sans validation préalable

---

## Estrutura inicial / Initial structure / Estructura inicial / Structure initiale

- `hosts/cosmic-lab/`
  - **PT:** base do host de teste
  - **EN:** test host base
  - **ES:** base del host de pruebas
  - **FR:** base de l’hôte de test

- `modules/desktop/`
  - **PT:** módulos do desktop COSMIC, NVIDIA, Steam e tema
  - **EN:** COSMIC desktop, NVIDIA, Steam and theme modules
  - **ES:** módulos del escritorio COSMIC, NVIDIA, Steam y tema
  - **FR:** modules du bureau COSMIC, NVIDIA, Steam et thème

- `modules/system/`
  - **PT:** base do sistema
  - **EN:** system base
  - **ES:** base del sistema
  - **FR:** base du système

- `modules/lab/`
  - **PT:** experimentos isolados
  - **EN:** isolated experiments
  - **ES:** experimentos aislados
  - **FR:** expérimentations isolées

- `assets/`
  - **PT:** branding e wallpapers
  - **EN:** branding and wallpapers
  - **ES:** branding y wallpapers
  - **FR:** branding et fonds d’écran

- `docs/`
  - **PT:** roadmap, decisões e anotações de teste
  - **EN:** roadmap, decisions and test notes
  - **ES:** hoja de ruta, decisiones y notas de prueba
  - **FR:** feuille de route, décisions et notes de test

- `scripts/`
  - **PT:** scripts auxiliares
  - **EN:** helper scripts
  - **ES:** scripts auxiliares
  - **FR:** scripts auxiliaires

---

## Status atual / Current status / Estado actual / État actuel

**PT:** Fase 1: estruturação inicial do repositório.  
**EN:** Phase 1: initial repository structuring.  
**ES:** Fase 1: estructuración inicial del repositorio.  
**FR:** Phase 1 : structuration initiale du dépôt.

**PT:** Ainda não há sistema aplicável final.  
**EN:** There is no final applicable system yet.  
**ES:** Aún no existe un sistema final aplicable.  
**FR:** Il n’existe pas encore de système final applicable.

**PT:** O objetivo imediato é preparar a base NixOS para um host de testes com COSMIC.  
**EN:** The immediate goal is to prepare the NixOS base for a COSMIC test host.  
**ES:** El objetivo inmediato es preparar la base NixOS para un host de pruebas con COSMIC.  
**FR:** L’objectif immédiat est de préparer la base NixOS pour un hôte de test avec COSMIC.

---

## Direção do projeto / Project direction / Dirección del proyecto / Direction du projet

- **PT:** Base oficial atual do Diesel OS Lab: GNOME  
  **EN:** Current official base of Diesel OS Lab: GNOME  
  **ES:** Base oficial actual de Diesel OS Lab: GNOME  
  **FR:** Base officielle actuelle de Diesel OS Lab : GNOME

- **PT:** Trilha paralela de pesquisa: COSMIC  
  **EN:** Parallel research track: COSMIC  
  **ES:** Línea paralela de investigación: COSMIC  
  **FR:** Piste parallèle de recherche : COSMIC

- **PT:** Sessão experimental futura: Hyprland  
  **EN:** Future experimental session: Hyprland  
  **ES:** Sesión experimental futura: Hyprland  
  **FR:** Session expérimentale future : Hyprland

- **PT:** Critério de avanço: estabilidade, coerência visual e viabilidade real de uso  
  **EN:** Advancement criteria: stability, visual coherence and real usability  
  **ES:** Criterio de avance: estabilidad, coherencia visual y viabilidad real de uso  
  **FR:** Critère d’avancement : stabilité, cohérence visuelle et viabilité réelle d’utilisation

---

## Observação / Note / Observación / Remarque

**PT:** Este projeto é experimental, mas deve manter organização suficiente para evolução real e versionamento contínuo no GitHub.  
**EN:** This project is experimental, but it must maintain enough organization for real evolution and continuous versioning on GitHub.  
**ES:** Este proyecto es experimental, pero debe mantener suficiente organización para una evolución real y versionado continuo en GitHub.  
**FR:** Ce projet est expérimental, mais il doit conserver une organisation suffisante pour une évolution réelle et un versionnement continu sur GitHub.
