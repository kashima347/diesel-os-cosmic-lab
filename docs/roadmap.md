# Roadmap inicial / Initial roadmap / Hoja de ruta inicial / Feuille de route initiale — Diesel OS Cosmic Lab

---

## Fase 1 — Estruturação do repositório  
## Phase 1 — Repository structuring  
## Fase 1 — Estructuración del repositorio  
## Phase 1 — Structuration du dépôt

**Objetivo / Objective / Objetivo / Objectif**
- organizar a base do projeto
- organize the project foundation
- organizar la base del proyecto
- organiser la base du projet

- definir escopo
- define scope
- definir alcance
- définir le périmètre

- registrar metas
- record goals
- registrar metas
- enregistrer les objectifs

- preparar arquivos iniciais
- prepare initial files
- preparar archivos iniciales
- préparer les fichiers initiaux

**Entregáveis / Deliverables / Entregables / Livrables**
- README inicial
- initial README
- README inicial
- README initial

- roadmap
- roadmap
- hoja de ruta
- feuille de route

- decisões iniciais
- initial decisions
- decisiones iniciales
- décisions initiales

- esqueleto do flake
- flake skeleton
- esqueleto del flake
- squelette du flake

- estrutura de módulos
- module structure
- estructura de módulos
- structure des modules

---

## Fase 2 — Base NixOS para host de testes  
## Phase 2 — NixOS base for test host  
## Fase 2 — Base NixOS para host de pruebas  
## Phase 2 — Base NixOS pour l’hôte de test

**Objetivo / Objective / Objetivo / Objectif**
- montar uma base mínima reproduzível
- build a minimal reproducible base
- montar una base mínima reproducible
- construire une base minimale reproductible

- separar host, módulos de sistema e módulos desktop
- separate host, system modules and desktop modules
- separar host, módulos del sistema y módulos de escritorio
- séparer l’hôte, les modules système et les modules de bureau

- preparar caminho para ativar COSMIC de forma limpa
- prepare a clean path to enable COSMIC
- preparar una ruta limpia para activar COSMIC
- préparer une voie propre pour activer COSMIC

**Entregáveis / Deliverables / Entregables / Livrables**
- `flake.nix`
- `flake.nix`
- `flake.nix`
- `flake.nix`

- `hosts/cosmic-lab/configuration.nix`
- `hosts/cosmic-lab/configuration.nix`
- `hosts/cosmic-lab/configuration.nix`
- `hosts/cosmic-lab/configuration.nix`

- módulos iniciais em `modules/system/`
- initial modules in `modules/system/`
- módulos iniciales en `modules/system/`
- modules initiaux dans `modules/system/`

- módulos iniciais em `modules/desktop/`
- initial modules in `modules/desktop/`
- módulos iniciales en `modules/desktop/`
- modules initiaux dans `modules/desktop/`

---

## Fase 3 — Sessão COSMIC funcional  
## Phase 3 — Functional COSMIC session  
## Fase 3 — Sesión COSMIC funcional  
## Phase 3 — Session COSMIC fonctionnelle

**Objetivo / Objective / Objetivo / Objectif**
- obter boot funcional
- achieve functional boot
- lograr arranque funcional
- obtenir un démarrage fonctionnel

- login funcional
- functional login
- inicio de sesión funcional
- connexion fonctionnelle

- sessão COSMIC carregando corretamente
- COSMIC session loading correctly
- sesión COSMIC cargando correctamente
- session COSMIC se chargeant correctement

- validação inicial do desktop
- initial desktop validation
- validación inicial del escritorio
- validation initiale du bureau

**Critérios / Criteria / Criterios / Critères**
- sessão inicia sem erro grave
- session starts without critical error
- la sesión inicia sin error grave
- la session démarre sans erreur critique

- ambiente utilizável
- usable environment
- entorno utilizable
- environnement utilisable

- sem regressões básicas impeditivas
- no blocking basic regressions
- sin regresiones básicas impeditivas
- sans régressions bloquantes de base

---

## Fase 4 — Integração com hardware real  
## Phase 4 — Integration with real hardware  
## Fase 4 — Integración con hardware real  
## Phase 4 — Intégration avec le matériel réel

**Objetivo / Objective / Objetivo / Objectif**
- validar comportamento em NVMe
- validate behavior on NVMe
- validar comportamiento en NVMe
- valider le comportement sur NVMe

- observar desempenho real
- observe real performance
- observar rendimiento real
- observer les performances réelles

- avaliar comportamento com GPU NVIDIA
- evaluate behavior with NVIDIA GPU
- evaluar comportamiento con GPU NVIDIA
- évaluer le comportement avec GPU NVIDIA

- medir qualidade prática da sessão
- measure practical session quality
- medir la calidad práctica de la sesión
- mesurer la qualité pratique de la session

**Critérios / Criteria / Criterios / Critères**
- inicialização consistente
- consistent startup
- arranque consistente
- démarrage cohérent

- estabilidade visual aceitável
- acceptable visual stability
- estabilidad visual aceptable
- stabilité visuelle acceptable

- ausência de falhas graves recorrentes
- absence of recurring critical failures
- ausencia de fallas graves recurrentes
- absence de défaillances critiques récurrentes

- experiência de uso minimamente confiável
- minimally reliable user experience
- experiencia de uso mínimamente confiable
- expérience d’utilisation minimalement fiable

---

## Fase 5 — Identidade visual Diesel OS Lab  
## Phase 5 — Diesel OS Lab visual identity  
## Fase 5 — Identidad visual Diesel OS Lab  
## Phase 5 — Identité visuelle Diesel OS Lab

**Objetivo / Objective / Objetivo / Objectif**
- adaptar branding ao COSMIC
- adapt branding to COSMIC
- adaptar el branding a COSMIC
- adapter le branding à COSMIC

- testar wallpaper, tema e coerência visual
- test wallpaper, theme and visual coherence
- probar wallpaper, tema y coherencia visual
- tester le fond d’écran, le thème et la cohérence visuelle

- medir o quanto o COSMIC combina com a linguagem do projeto
- measure how much COSMIC fits the project language
- medir cuánto COSMIC combina con el lenguaje del proyecto
- mesurer à quel point COSMIC correspond au langage du projet

**Critérios / Criteria / Criterios / Critères**
- aparência coerente
- coherent appearance
- apariencia coherente
- apparence cohérente

- sensação de produto premium
- premium product feel
- sensación de producto premium
- sensation de produit premium

- identidade visual consistente
- consistent visual identity
- identidad visual consistente
- identité visuelle cohérente

---

## Fase 6 — Avaliação estratégica  
## Phase 6 — Strategic evaluation  
## Fase 6 — Evaluación estratégica  
## Phase 6 — Évaluation stratégique

**Objetivo / Objective / Objetivo / Objectif**
- decidir o papel real do COSMIC no ecossistema Diesel OS Lab
- decide COSMIC’s real role in the Diesel OS Lab ecosystem
- decidir el papel real de COSMIC en el ecosistema Diesel OS Lab
- décider du rôle réel de COSMIC dans l’écosystème Diesel OS Lab

**Possíveis resultados / Possible outcomes / Posibles resultados / Résultats possibles**
- encerrar o laboratório
- close the lab
- cerrar el laboratorio
- fermer le laboratoire

- manter como trilha experimental
- keep it as an experimental track
- mantenerlo como línea experimental
- le maintenir comme piste expérimentale

- transformar em edição alternativa
- turn it into an alternative edition
- transformarlo en edición alternativa
- le transformer en édition alternative

- considerar como candidato futuro mais forte
- consider it a stronger future candidate
- considerarlo como candidato futuro más fuerte
- le considérer comme un candidat futur plus fort

---

## Regra geral  
## General rule  
## Regla general  
## Règle générale

Cada fase deve gerar documentação curta de resultado antes da próxima mudança grande.  
Each phase must generate a short outcome document before the next major change.  
Cada fase debe generar una documentación breve de resultado antes del próximo cambio grande.  
Chaque phase doit générer une courte documentation de résultat avant le prochain grand changement.
