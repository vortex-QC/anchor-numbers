# anchor-numbers

Formal verification and replication materials for **"Anchor Numbers: Completing Dynamic Number with the Anchor Construction"** (Constructive Mathematics Series; the completion standard's leading case).

**Zenodo (CN/EN bilingual): DOI [10.5281/zenodo.22866459](https://doi.org/10.5281/zenodo.22866459)**
Author: Chao Qin (ORCID [0009-0006-2000-5644](https://orcid.org/0009-0006-2000-5644))

## What is in this repository

| File | Content |
|---|---|
| `AnchorLayer.lean` | The anchor-number layer: AnchorModel (discrete), TopAnchorModel (topological), theorems V1–V4 (incompleteness diagnosis, completion-as-anchoring, absorption, anchor-decides-fate), three heterogeneous anchored families (potential-type wall/well skeleton, metric-type Banach contraction families, lattice-type Knaster–Tarski), static-side anchor-collapse (real & rational/`UniformSpace.Completion`), independence model pairs (Anchor-0 ⊥ Anchor-1; Anchor-0 content ⊥ D0), full-axiom compatibility (`anchor_dyn_compatible`) with the free-filling countertheorem |
| `DynamicLayer.lean` | The absorbed dynamic layer (axioms D0/D1/D2, scale-action law, model pairs) |

## Reproducing the verification

```bash
# Lean 4.33.1 + Mathlib (lake)
lake build          # full project: 8717 jobs, zero sorry
```

Axiom audit (all main theorems within the standard three axioms):

```lean
#import DensityMath.AnchorLayer
#print axioms AnchorLayer.tarski_anchor            -- [propext, Quot.sound]
#print axioms AnchorLayer.anchor_dyn_compatible    -- [propext, Classical.choice, Quot.sound]
#print axioms AnchorLayer.D0_independent_of_drift  -- [propext, Classical.choice, Quot.sound]
```

## Series & related

- Statics-as-Manifestation (the dynamic layer being completed): [DOI 10.5281/zenodo.22785052](https://doi.org/10.5281/zenodo.22785052)
- Constructive Mathematics Certification Standard v1.1 (the E-system completion criteria; this work is its first live case): [DOI 10.5281/zenodo.22858723](https://doi.org/10.5281/zenodo.22858723)
- Density-Cluster Theory of Number (paper 1): [DOI 10.5281/zenodo.22773691](https://doi.org/10.5281/zenodo.22773691)

## Open problems (paper §6)

Direction of Davis' theorem (converse construction), completion functors as anchor constructors, multi-anchor systems, a strength ordering of anchored families, anchor-collapse for other number systems (p-adics, non-Archimedean completions).

**Correspondence on the open problems is welcome** — especially on the Davis converse and on other heterogeneous anchored families.
