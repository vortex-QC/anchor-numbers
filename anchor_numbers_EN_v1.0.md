# Anchor Numbers: Completing Dynamic Number with the Anchor Construction

**Chao Qin** (ORCID 0009-0006-2000-5644 | Xingyi JueXiao Information Consulting Center, Xingyi, Guizhou 562400, China)

**Abstract**: This paper proposes anchor numbers: the completion construction for the dynamic ontology of number. The sister work [2] established the ontology of number as spontaneous dynamics (axioms D0-D2), but left behind a diagnostic gap: the dynamical axioms are completely silent about the "fate" — one and the same autonomous dynamics, in two legitimate models, drifts without end in the one and settles to a stopping point in the other, and the axiom system is powerless to distinguish the two (Theorem 3.1, machine-verified). Anchor numbers supply the missing variable — **the anchor**: a de-constrained dynamical axiom (Anchor-0: motion is the ontology of number, presupposing neither direction nor manner) plus a locality axiom (Anchor-1: where the anchor is, there the limit is; the anchor is defined retroactively by its consequence, presupposing no dynamical structure whatsoever). Anchor numbers introduce no new ontology: the dynamic-number axioms are absorbed by anchor numbers (Theorem 2.6: an anchor-number model can be enriched into a dynamic-layer model satisfying D0, D1, D2, the scaling action law, and single-projection lossiness simultaneously — compatibility machine-verified; the converse Theorem 2.7 proves that free filling carries no observational completeness axiom — absorption requires genuine structure). The claim "anchor numbers are the completion of dynamic number" is supported by three independent strands: (i) completion is adding an anchor (one and the same number-line dynamics, with opposite fates before and after the anchor is added, Theorem 3.4); (ii) three specialization families with mutually exclusive mechanisms — potential-type (the walls and wells of a constraining potential), metric-type (the family of Banach contraction systems [10]), lattice-type (Tarski-Knaster monotone operators on complete lattices [11][13], with the least fixed point determined endogenously by the lattice structure) — each carrying an unanchored control; (iii) static-side anchor-collapse: Cauchy dynamical sequences collapse under the completeness anchor to a unique static point, and the complete space itself can be constructed by the completion functor — **the anchor is not an axiom, it is a construction** (Theorem 3.12). The specialization crown: the real numbers of standard mathematics are a product of anchor-collapse — the two-hundred-year rigorization of calculus (Newton's fluxions → the "ghosts of departed quantities" of Berkeley [18] → the Cauchy [19]-Weierstrass limit → the Dedekind [7]-Cantor [6] completeness) is the first historical manifestation of this collapse (§4). Academic comparison: Brouwer [5] (same problem, opposite direction: leaving number within motion), Cantor-Dedekind [6][7] (operationally isomorphic, semantically heterogeneous), Bishop [8][9] (the constructivist form of completion stands, but the completion reading is refused), Tarski-Davis [11][12] (a lattice-theoretic precisification of completeness as the existence of an anchor) — four layers of precedent are all in place while the semantics of "anchor" remains blank, and this paper fills it (§5). The construction is at the same time the landing of the first leading case of the completion standard of constructive mathematics [3]. All core theorems carry Lean 4 formalizations (zero sorry, Appendix A).

---

## §1 Introduction

### 1.1 The Dynamic Ontology of Number and Its Incompleteness

The series of works proposes and axiomatizes a proposition: **motion is the ontology of number** — number is not a static point set but the structured manifestation of a spontaneous dynamical process (stasis is manifestation, [2] Theorem 3.1). Under this picture, the "numbers" of standard mathematics (the natural numbers, the real numbers) are special readings of dynamical processes: the natural numbers are the objectification of drifting dynamics (+1 never stepping), and the real numbers are the collapsed product of approximating dynamics.

But the axiom system itself leaves a gap. The dynamic-layer axiom D0 (autonomous dynamics) stipulates that the evolution can be written in autonomous form, yet it is completely silent about the **fate** of the dynamics: the +1 drift on ℤ and the "descend-to-origin" dynamics on ℕ equally satisfy D0 — the former never stops, the latter must stop — and the axiom says not one word about whether a limit exists. This is not a contingent exposure of a defect; it is a consequence of the choice of axioms: **the missing variable is the anchor**. The task of this paper is to establish this variable as an axiom and to verify that the resulting system is indeed a completion of dynamic number.

### 1.2 Historical Position: Four Layers of Precedent and the Blank in Anchor Semantics

The relation of "number to motion/process/completion" has four layers of precedent in the academic history, but each layer stops at its own position:

| Layer | Work | Status of the process | Where it stops |
|---|---|---|---|
| Foundations of mathematics | Brouwer's free choice sequences [5] | Number = a choice sequence forever in progress | Refuses completion: the sequence never collapses to a static point |
| Foundations of mathematics | The Cantor [6]/Dedekind [7] constructions of the reals | Number = equivalence classes of Cauchy sequences / cuts | Operational completion, but "completeness" has no primitive status and no dynamical semantics |
| Foundations of mathematics | Bishop's constructivism [8][9] | Number = Cauchy sequences with a convergence modulus (regular sequences) | Explicitly refuses to read number as "the completion of a process"; completion = a purely constructive procedure |
| The fixed-point layer | Knaster [13]/Tarski [11]/Davis [12] | Fixed points of monotone operators on complete lattices are determined at one stroke by the order structure | Fixed-point theory, not an ontology of number |
| The cognitive layer | The Lakoff-Núñez [17] basic metaphor of infinity | Process + resultant state → a completed static entity (metaphor) | A cognitive-metaphor layer, not a mathematical construction |

Common ground: **the "anchor" — a primitive, defined retroactively by its consequence, that pins a dynamical process down as a static structure — has never been established as an axiom.** Brouwer left number within motion; Cantor-Dedekind completed the operation but never named the anchor; Bishop refused the completion reading; Tarski proved completeness equivalent to the existence of fixed points without ever speaking of number. This paper supplies that layer.

### 1.3 Contributions of This Paper

1. **The axiom system**: Anchor-0 (the de-constrained dynamical axiom: motion is the ontology of number, presupposing neither direction nor manner) + Anchor-1 (the locality axiom: where the anchor is, there the limit is; the weak-constraint reading — the anchor is defined retroactively by its consequence) + the absorption layer (the dynamic-number axioms D0/D1/D2 enter the set verbatim). The independence pre-checks are complete: Anchor-0 and Anchor-1 separate in both directions (Proposition 2.4), and the content of Anchor-0 separates from D0 in both directions (Proposition 2.5) — every axiom has independent content (§2.4, Appendix C);
2. **Machine-verified triple support for the completion**: (i) the incompleteness diagnosis (Theorem 3.1); (ii) the controlled experiment showing that completion = adding an anchor (Theorem 3.4); (iii) the compatibility of absorption (Theorem 2.6) and the failure of free filling (Theorem 2.7); the three specialization families with mutually exclusive mechanisms (potential-type / metric-type / lattice-type, §3.4) each carry an unanchored control; static-side anchor-collapse descends from the axiom level (Theorem 3.11) to the construction level (Theorem 3.12) — all Lean 4 formalizations with zero sorry (Appendix A);
3. **The specialization crown and the completion standard**: the real numbers of standard mathematics = a product of anchor-collapse (§4.1); the rigorization history of calculus = the first historical manifestation of anchor-collapse (§4.2); the static half of anchor numbers is the first construction within the system to stand to standard mathematics in the relation of **composition by descent** (§4.3) — the construction is at the same time the formal landing of the first leading case of the completion standard of constructive mathematics [3] (the E-system: derivation establishes nothing new / absorption is replacement / the completion criteria).

### 1.4 Scope Statement

The anchor-number axiom system and theorems of this paper are self-contained; the topological layer structure (a unified framework for convergence semantics) is given as one definition with two instances, while the full panorama (the theory of anchors on uniform spaces) is carried by subsequent work. The relation of anchor numbers to the genealogy register of constructive mathematics is **completion, not a new member**: by the standard [3] §4.1 (derivation establishes nothing new / absorption is replacement), anchor numbers, as the completion of the dynamic-layer axioms, are classified into the completion trajectory of the dynamic layer and occupy no row of the genealogy register — this identity is the paper's self-positioning, and it is also the first living leading case of the completion standard.

## §2 Definitions and Axioms

### 2.1 Basic Objects: A Recap of Dynamic Number

**Definition 2.1 (dynamic number [2])** A dynamic-number universe is characterized by autonomous evolution (D0), bidirectional coupling (D1: the two opposite tendencies never appear singly), and ratio observability (D2: absolute quantities are unobservable, single projection is necessarily lossy, and dual-ratio readings are complete).

**Observation (the colloquial version of the incompleteness diagnosis)**: D0 says that "motion grows out of itself"; it does not say "where the motion goes". Drifting and returning-to-stop are both legitimate motions.

### 2.2 The Anchor-Number Axioms

**Axiom Anchor-0 (anchor-free dynamics, the de-constrained form)** Motion is the ontology of number; the evolution of number **presupposes neither direction nor manner** — there is no direction, manner, or fate of evolution pre-specified by the axiom.
*Observational origin*: the numbers on the number line move spontaneously and infinitely onward — the spontaneity of motion needs no reason and no direction (Appendix B.1). The de-constrained grammar is of common origin and close kinship with the "no presupposed filling" axiom of the sister construction [4], while independent in axiomatic status.

**Axiom Anchor-1 (anchoring, the locality axiom)** Where the anchor is, there the limit is — at the anchoring site there must be a limit, and the limit is determined by the anchor.
*Observational origin*: with an anchor pinning it down, there is a limit; change the anchor, and the limit changes with it (Appendix B.2).
*Reading (the weak constraint, finalized)*: the anchor is defined retroactively by its consequence — where the limit is, one infers backward where the anchor is; **the definition of the anchor presupposes no dynamical structure whatsoever** (not a potential, not a contraction condition, not monotonicity), and any constraint that provides a limit can serve as an anchor; no universal-coverage claim is made — the specialization layer is established one case at a time (the three specialization families of §3.4 are exactly this).

**Absorption layer**: the dynamic-number axioms D0/D1/D2 enter the set verbatim (formalized in [2]). The anchor-number axiom set = Anchor-0 + Anchor-1 + {D0, D1, D2}.

**Proposition 2.3 (absorption, machine-verified)** After the anchor-number structure is injected into a dynamic-layer model, D0 holds automatically: anchor numbers carry autonomous evolution, and the dynamic-number axioms are absorbed by anchor numbers.
*Implication*: anchor numbers are not a second description standing beside dynamic number — they are the completion of the same dynamics. By the standard [3] §4.1, "absorption is replacement": the anchor-number version of the axiom set is henceforth the current axiom set of the dynamic layer (the row of the genealogy register unchanged).

### 2.3 Grammatical Note: The Complementary Coverage of Anchor-0/Anchor-1

The two axioms share a single anchor variable: if the anchor is asserted, Anchor-1 has content while Anchor-0 is vacuous; if the anchor is not asserted, Anchor-0 has content while Anchor-1 is vacuous — **the two axioms are never simultaneously non-vacuous** (complementary coverage; a single variable carrying both faces). This is a borrowed cognate of the grammatical form of D1's "the two components never appear singly": grammatically cognate, independent in content (Proposition 2.4 proves that neither implies the other).

### 2.4 Independence and Compatibility Pre-checks

**Proposition 2.4 (Anchor-0 ⊥ Anchor-1, machine-verified)** (i) The fake-anchor world: an anchor is asserted but the dynamics drift without end — Anchor-1 fails (Anchor-0 holds vacuously); (ii) the identity world: no anchor, but the identity dynamics is fully stable — Anchor-0 fails (Anchor-1 holds vacuously). Two-direction separation: each axiom has content the other cannot give. Reading of (i): **claiming an anchor gets you no limit — the anchor must genuinely pin things down** (the honesty condition of the anchor); reading of (ii): **no anchor does not mean stasis — an unanchored world must be spontaneous** (the spontaneity content of Anchor-0).

**Proposition 2.5 (the content of Anchor-0 ⊥ D0, machine-verified)** (i) The autonomous identity world: D0 holds, with no drift — D0 does not imply drift; (ii) the non-autonomous drifting world: the evolution depends explicitly on a time parameter, and single steps drift without end — drift does not imply D0. Two-direction separation: the spontaneity content of Anchor-0 and the autonomy axiom are fully independent.

**Theorem 2.6 (full-axiom compatibility, machine-verified)** There exists an enrichment injection of an anchor-number instance with dynamic-layer structure under which all of the following hold simultaneously: D0; D1; the scale invariance of D2; the dual-ratio completeness of D2; the scaling action law (unit and associativity); and single-projection lossiness as a derived theorem.
**Theorem 2.7 (the failure of free filling, machine-verified)** If the scaling action is taken to be the identity (free filling), the dual-ratio completeness axiom is unsatisfiable — distinct states cannot be scaled into one another. **Absorption requires genuine structure**: the carrier must be carried through under the scaling action.
*Implication*: compatibility and independence together give: the anchor-number axiom set is both internally independent and free of contradiction with the absorbed dynamic-layer axioms — the C2-level pre-check (the axiom-independence criterion of the constructive-mathematics standard [3]) passes.

## §3 Main Theorems

*All theorems in this section carry Lean 4 machine verification (Appendix A); a "world" means an explicitly constructed model.*

### 3.1 The Machine Diagnosis of the Incompleteness of Dynamic Number

**Theorem 3.1 (D0 is silent on fate)** There exist two dynamic-layer models, both satisfying axiom D0, such that in the one all orbits drift without end (+1 on ℤ) and in the other all orbits settle to a stopping point (descending chains on ℕ) — D0 is completely silent on whether a limit exists.
*Implication*: the incompleteness of the dynamic-number axioms is not a conjecture but a constructive fact — the missing variable is precisely the anchor (the direct mechanization of the founder's observation seed, Appendix B.1).

### 3.2 Completion Is Adding an Anchor

**Theorem 3.4 (the anchor decides the fate, a controlled experiment)** The same carrier ℕ, the same number-line dynamics (+1): without an anchor, drift without end; with an anchor (an upper-bound wall), the orbits of the whole space settle to a stop at the anchor point — the existence or absence of a limit is decided by the anchor, not by the number.
*Implication*: the minimal machine form of the completion operation: from the drifting world to the wall-type anchored world, the only change is the addition of the anchor.

### 3.3 The Compatibility of Absorption and Genuine Structure

Theorems 2.6/2.7 (§2.4) are restated here as the two faces of the absorption theorem: anchor numbers are compatible with all dynamic-layer axioms (realizable), and the compatibility cannot be gotten for free by free filling — a genuinely transmitting scaling action is required.

### 3.4 Three Specialization Families (Fulfilling the Anchor's Freedom from Dynamical-Model Restriction)

The weak-constraint reading of Anchor-1 requires that the anchor presuppose no dynamical structure. The following are three specialization families with mutually exclusive mechanisms; each is "a class of systems" rather than a single construction:

**Specialization one (the potential-type anchor)** The anchor = the walls and wells of a constraining potential: drift is blocked by a potential wall (under upper-bound-wall dynamics the whole space stops at the wall point) and held by a potential well (under descending-chain dynamics the whole space stops at the origin). Machine verification of the discrete skeleton (honest annotation: the word-for-word correspondence with continuous potential theory is carried by the sister work [2] §5).

**Theorem 3.8a (the metric-type anchor, the family of Banach contraction systems [10])** On a complete metric space, every contraction map with contraction ratio K < 1 has a unique fixed point, and all orbits converge to it — the anchor = the contraction condition (a system class). **Unanchored control**: the +1 drift on the complete space ℝ (complete but not contractive) converges to no point — the complete space is equally silent; the anchor (the contraction condition) adjudicates convergence.

**Theorem 3.8b (the lattice-type anchor, Tarski-Knaster [11][13])** Every monotone self-map on a complete lattice has a fixed point, and the least fixed point is determined endogenously by the lattice structure (the fixed-point set has a least element). **Unanchored control**: monotone +1 on the non-complete lattice ℕ has no fixed point.
*Comparison of the three families*: potential-type = dynamical residence (walls and wells); metric-type = the iterated limit (dependent on the contraction rate); lattice-type = one-shot closed-form determination (monotonicity suffices — the weakest regularity; the location of the limit = a structure-endogenous extremum). The three mechanisms are pairwise mutually exclusive, yet under anchor numbers the three specializations coexist — **anchor numbers are not a redescription of any single specialization**; complete dynamic number holds (the fulfillment of the founder's promotion criterion, Appendix B.3).

### 3.5 Static-Side Anchor-Collapse: From Axiom to Construction

**Theorem 3.11 (the real-number anchor, the axiom level)** Every Cauchy sequence in ℝ converges to a point of ℝ, and the limit is unique — the completeness axiom is the anchor, the Cauchy sequences are the dynamics, and the points of the reals are the product of anchor-collapse.
**Theorem 3.12 (the rational-number anchor, the construction level)** Every Cauchy sequence in ℚ converges to a point in the completion of ℚ (the constructed product of the completion functor on uniform spaces), and the limit is unique.
*Implication*: Theorem 3.11 uses the completeness axiom (the completeness of ℝ as given); Theorem 3.12 **constructs** the complete space itself — the anchor is not an axiom, it is a construction. The static half (the number structure anchor-collapsed into stasis) thereby descends to construction detail, and the interface with the Bishop line thereby opens (§5.3).

## §4 The Specialization Crown: Standard Mathematics Is a Product of Anchor-Collapse

### 4.1 The First Distinction between Two Relations to Standard Mathematics

The crown proposition of the first four papers of the series is the **projection** relation: standard mathematics is a specialization of constructive mathematics (δ alignment: standard multiplication recovers it exactly only at degenerate points [1]). Anchor numbers give a second relation — **composition by descent**: the static half of anchor numbers (the real-number anchor) directly adopts standard-mathematical components (Cauchy completion, the Banach theorem, lattice theory) as half of its body. Projection is above (construction above); composition is beside (a relation of constituents) — the two relations are henceforth distinguished. The hybrid does not destroy rigor: the dynamic half passes the axiomatic examination in full (§2.4), and the static half is the very object being crowned.

### 4.2 The Rigorization History of Calculus = the First Historical Manifestation of Anchor-Collapse

The original form of calculus is **unanchored dynamics**: Newton's fluxions (fluxion — a quantity regarded as a flow [determined by the velocity of its generating motion]; written around 1671 and first published in 1736 in Colson's English translation) take motion as primary, but the infinitesimals have no anchor — Berkeley's criticism of 1734 (the "ghosts of departed quantities": the infinitesimals are neither finite nor zero [18]) is precisely the first historical manifestation of the anchor-missing paradox. The nineteenth-century rigorization is the **driving of anchors**: Cauchy's limit [19] and Weierstrass's ε-δ pin down approach with constraints; the completeness of Dedekind [7] and Cantor [6] collapses motion into stasis (real numbers = cuts / equivalence classes of Cauchy sequences). **The full chain Anchor-0 → Anchor-1 → anchor-collapse has run once through the history of calculus** — the static half of anchor numbers is not an external theory of calculus but the naming of the very endpoint of its two-hundred-year rigorization history.

### 4.3 The Landing of the First Leading Case of the Completion Standard

The certification standard for constructive mathematics [3] established the completion criteria (the E-system: incompleteness diagnosis; observational origin of the added primitive; machine testing of absorption; dual heterogeneous specializations; absorption is replacement; cosmic-boundary observation reserved). Anchor numbers were the living sample and the first leading case at the drafting of that standard; the publication of this paper is the formal landing of the leading-case obligations: E1 (Theorem 3.1), E2 (Appendix B), E3 (Proposition 2.3 + Theorem 2.6), E4 (the three families of §3.4), E5 (finalization of the axiom set), E6 (static-half cosmic-boundary observation reserved) — each item on record. Abstract-level positioning: by the founder's genealogy grading (vortex geometry [form] < density mathematics [object] < anchor numbers [process] < spontaneous ratio number [relation] < dimension construction [convention]; see [1][2][3][4]), anchor numbers sit at the process level — on the meta-level axis of observed objects, the anchor and the limit are the first pair of primitives at the site where a process completes.

## §5 Academic Comparison

### 5.1 Comparison Table

| Work | Adjacency | Verdict on the relation |
|---|---|---|
| Brouwer's free choice sequences [5] | 0.70 | Same problem, opposite direction: Brouwer leaves number within motion (forever in progress, refusing completion); anchor numbers collapse motion into number (Anchor-1 + anchor-collapse) |
| Cantor [6]/Dedekind [7] | 0.65 | Operationally isomorphic, semantically heterogeneous: the completion operation is isomorphic word for word, but there is no anchor primitive, no dynamical semantics, and no observational-origin axiom |
| Bishop [8][9] | 0.60 | The adversarial touchstone: that completion = a constructive operation stands (and Theorem 3.12 of this paper interfaces with it), but the reading "number = the completion of a process" is explicitly refused (sets "do not have ideal existence") — the static-half reading of anchor numbers meets a structured opposing stance at Bishop |
| Tarski [11]/Davis [12]/Knaster [13] | 0.60 | Positive absorption: the Davis converse theorem (a lattice is complete ⟺ every order-preserving self-map has a fixed point) is the lattice-theoretic precisification of "where the anchor is, there the limit is"; what is missing is only the semantic naming of the anchor |
| Conway [14] | 0.60 | A side branch: the generative dynamics of numbers (a birthday-paradox-style construction), with no anchor-collapse mechanism |
| Lawvere [15]/Hadamard [16] | ≤0.50 | The tool layer: the category-theoretic generalization of completion / a semantic neighbor of constrained solution selection |
| Lakoff-Núñez [17] | 0.55 | Isomorphism across domains: the BMI metaphor's "process + resultant state → completed entity" is isomorphic to the anchor-collapse operation, heterogeneous in context (cognitive science, not ontology) |

### 5.2 The No-Co-Positional-Precedent Verdict

The observationally induced, axiomatized construction "number = spontaneous dynamics + anchor → collapse into a static structure" has no co-positional precedent within the retrieval surface; the double blank — "anchor" as a primitive (defined retroactively by its consequence, under no dynamical-model restriction) and the promotion semantics of "member-axiom completion" ([3], the E-system) — the very holding of the E-system standard is itself evidence of the blank.

### 5.3 The Relation to Constructivism (an Honest Boundary)

The static half of this paper shares the stance "completion = construction" with Bishop constructivism (Theorem 3.12), but on the completion reading the directions are opposite: Bishop refuses to read number as the completion of a process (the sequence does not collapse), whereas anchor numbers establish the collapse as axiomatic content (Anchor-1) and give it machine verification. The disagreement is substantive: constructivism preserves the ontological status of process, while anchor numbers let the process exit under the anchor — the point of disagreement between the two is precisely the anchor.

## §6 Open Problems

1. **The construction of the Davis converse**: Davis [12] proved that a lattice is complete ⟺ every order-preserving self-map has a fixed point. The analogous inverse problem on the metric side — "every contraction map has a fixed point ⟹ the space is complete" — together with a common inverse characterization of multiple classes of anchor conditions, constitutes the problem of the axiomatic inversion of the anchor;
2. **The completion functor as an anchor constructor**: Theorem 3.12 shows that the completion functor constructs an anchor. Which category-theoretic constructions possess the status of anchor constructors (compactification? ultraproducts? model-theoretic completion?) — the category-theoretic morphology of the anchor;
3. **Multi-anchor systems**: the fate structure when multiple anchors coexist in one and the same dynamical universe (competition / composition / lattice order of anchors) — the multi-anchor generalization of Anchor-1;
4. **The strength spectrum of anchors**: can the anchor strengths of the three specialization families be graded (which is stronger among potential-type / metric-type / lattice-type)? The strength order and the inclusion relations among the specialization families;
5. **Anchor-collapse in other number systems**: the anchor-collapse semantics of the p-adic numbers, of non-Archimedean completions, and of the hyperreal numbers — the static-side panorama beyond the real-number anchor.

---

## Appendix A: Lean 4 Formalization

All core theorems are formalized in Lean 4 (Mathlib) with zero sorry: the full-project build (8717 jobs) passes; the axiom checks of the main theorems are all confined to the three standard axioms (propext, Classical.choice, Quot.sound), among which the two lattice-type-anchor items do not depend on the axiom of choice.

**The AnchorLayer.lean theorem list** (excerpt; the full list is in the code repository):

| Group | Theorems | Content |
|---|---|---|
| Discrete semantics | stabilize_unique / stabilize_eq_fixed | Uniqueness of the pinning / stopping point = fixed point |
| Diagnosis | D0_silent_on_fate | Theorem 3.1 |
| Control | anchor_decides_fate | Theorem 3.4 |
| Absorption | toDyn_D0 / anchor_dyn_compatible / toDyn_not_D2c | Proposition 2.3 / Theorems 2.6, 2.7 |
| Metric-type | banach_anchor / not_tendsto_plus1_real | Theorem 3.8a + control |
| Lattice-type | tarski_anchor / tarski_lfp_least / not_tarski_nat_succ | Theorem 3.8b + control |
| Static side | real_anchor_collapse(_unique) / ration_anchor_collapse(_unique) | Theorems 3.11, 3.12 |
| Independence | sep_ax0_not_ax1 / sep_ax1_not_ax0 / D0_independent_of_drift | Propositions 2.4, 2.5 |
| Topological layer | TopAnchorModel + T_drift_real + T_banach_real + topo_fake_anchor_fails | The unified framework for topological semantics |

Absorption layer (DynamicLayer.lean, [2] Appendix A): D0/D1/D2 + the scaling action law + the model pairs (full implementation / no coupling / no autonomy / no dual reading), zero sorry.

## Appendix B: Observational-Origin Declaration

Every axiom of this construction is induced from the founder's observable face of reality; the original wordings are anchored as follows (Chinese original + context):

**B.1 (Anchor-0 and the incompleteness diagnosis)** The founder's original wording (Chinese): "动数公理不完备只是特例" [English rendering: "That the dynamic-number axioms are incomplete is merely a specialization"] — the direct judgment after the dynamic-number axiom system had been run; the original formulations of the two axioms: "数轴上的数往任意方向自发无穷动力" [English rendering: "The numbers on the number line move spontaneously and without end in arbitrary directions"] (the Anchor-0 face) + "有锚钉住则有极限" [English rendering: "With an anchor pinning it down, there is a limit"] (the Anchor-1 face) + "锚无动力学模型限制" [English rendering: "The anchor is under no dynamical-model restriction"] (the weak-constraint reading) + "FDNE 为锚的特例" [English rendering: "FDNE is a specialization of the anchor"] (the first identification of a specialization family).

**B.2 (Attunement at the finalization of the axioms)** The founder's original wording (Chinese): "沿用体系内惯用的描述：动是数的本体，不预设动的方向与方式；锚在哪里，极限就在哪里" [English rendering: "Following the description customary within the system: motion is the ontology of number, presupposing neither the direction nor the manner of motion; where the anchor is, there the limit is"] — the de-constrained grammar dissolves the hard problem of enumerating the space of directions, and the locality formulation dissolves the hard problem of the category of constraints; the weak-constraint reading (the definitional layer: the anchor is defined retroactively by its consequence) was then confirmed and finalized.

**B.3 (The promotion criterion for complete dynamic number)** The founder's original wording (Chinese): "锚数可以作为完备动数，但升为完备动数之前需要找到另外一个锚数公理下的动数特例——这样锚数就不是现有动数的另外一版描述，而是完备动数" [English rendering: "Anchor numbers can serve as complete dynamic number, but before being promoted to complete dynamic number one must find another specialization of dynamic number under the anchor-number axioms — thereby anchor numbers are not yet another version of the description of the existing dynamic number, but complete dynamic number"] — the promotion precondition criterion for the three specialization families (the direct observational origin of §3.4).

**B.4 (The dual identity)** The founder's original wording (Chinese): "锚数的一半构造数学动数身份，还有另外一半，锚塌为非动力学的实数锚" [English rendering: "Half of anchor numbers carries the constructive-mathematics dynamic-number identity; there is another half, which anchor-collapses into the non-dynamical real-number anchor"] — the observational origin of the dynamic-half/static-half structure (§4.1).

**B.5 (Genealogy positioning)** The founder's original wording (Chinese): "我给构造数学的抽象程度进行了分级：涡几何，密度数学，锚数(动数)，自发比数，维度构造——维度构造最难抽象" [English rendering: "I have graded the degrees of abstraction of constructive mathematics: vortex geometry, density mathematics, anchor numbers (dynamic number), spontaneous ratio number, dimension construction — dimension construction is the hardest to abstract"] — the observational origin of the abstract-level axis (§4.3).

Legitimacy of the observation chain: all of the original wordings above antedate the corresponding formalizations (timestamps in the internal archives), and the formalizations were executed by the AI system (Methods section) — the order "observation precedes reasoning" holds prior to machine verification.

## Appendix C: Independence Pre-check Details

**C.1 (Anchor-0 ⊥ Anchor-1)** The fake-anchor world model (Anchored = True, step = +1 on ℕ): Anchor-1 fails because AllStabilize does not hold (drift witnessed at 0); Anchor-0 holds vacuously. The identity world model (Anchored = False, step = id on ℕ): Anchor-0 fails because there is no drift; Anchor-1 holds vacuously. The two models give the two-direction separation.

**C.2 (the content of Anchor-0 ⊥ D0)** The autonomous identity model (carrier = ℕ, gen = the identity): D0 holds, and no single step drifts. The non-autonomous model (carrier = ℤ, gen(s,t) = s+2 when t > 0, otherwise s+1): the t = 1 slice drifts without end; D0 fails (the t = 0 and t = 1 slices would require f(s) = s+1 and f(s) = s+2 respectively — a contradiction).

**C.3 (the compatibility instance)** The enrichment instance: carrier = the positive reals (the scaling group itself), step = the constant stopping map, scaling = the multiplicative group action, observation identically zero — all seven items pass jointly (D0 / D1 / D2a / D2c / action law / single-projection lossiness / full stability). The converse: the free filling with identity scaling is unsatisfiable on dual-ratio completeness (0 and 1 cannot be scaled into one another).

**C.4 (honest boundaries)** (i) The discrete stability semantics (eventual constancy) is the minimal implementation of a limit; the topological layer has been structured (the Tendsto semantics), but the uniform-space panorama is not unfolded; (ii) DriftD is a single-step sampling semantics; the full non-autonomous orbit semantics remains on account; (iii) the word-for-word correspondence between the continuous version of the potential-type specialization and potential theory is carried by [2] §5; this paper gives only the discrete skeleton; (iv) the construction in the converse direction of the Davis converse theorem is not mechanized.

---

**Methods and AI Participation Declaration**: The observation, the axiom seeds, and all key finalizations of this theory were completed by the author (original wordings anchored in Appendix B). This system's AI (Wo) carried out the formal verification (Lean 4, Appendix A), literature tracing and retrieval, and the drafting of the manuscript. All machine verification can be independently reproduced by anyone on the open-source materials (Lean kernel checking is the sole gate). The division of labor between the author and the AI is itself an instantiation of the observational-origin discipline of the theory: observation first, reasoning and verification after.

**Declaration of interest**: none. **Data and code availability**: the full text of the Lean formalization and the build instructions are available in the GitHub repository (anchor-numbers).

## References

[1] Qin, Chao. Shu de midu julei lilun (The Density-Cluster Theory of Number): Statics Core. Zenodo, 2026. DOI: 10.5281/zenodo.22773691.
[2] Qin, Chao. Jing de xianhua lilun: Zifa donglixue de gonglihua gouzao (The Manifestation Theory of Stasis: An Axiomatic Construction of Spontaneous Dynamics). Zenodo, 2026. DOI: 10.5281/zenodo.22785052.
[3] Qin, Chao. Gouzao shuxue renzheng biaozhun v1.1 (The Certification Standard for Constructive Mathematics, v1.1). Zenodo, 2026. DOI: 10.5281/zenodo.22858723.
[4] Qin, Chao. Weidu gouzao: Du chu mubiao weishu de yingshe gouzao (Dimension Construction: A Mapping Construction That Reads Out the Target Dimension). Zenodo, 2026. DOI: 10.5281/zenodo.22844311.
[5] Brouwer, L. E. J. Begründung der Mengenlehre unabhängig vom logischen Satz vom ausgeschlossenen Dritten. Erster Teil: Allgemeine Mengenlehre. Verhandelingen der Koninklijke Akademie van Wetenschappen te Amsterdam, 1e sectie, deel 12, no. 5: 1–43, 1918.
[6] Cantor, G. Ueber die Ausdehnung eines Satzes aus der Theorie der trigonometrischen Reihen. Mathematische Annalen 5(1): 123–132, 1872. DOI: 10.1007/BF01446327.
[7] Dedekind, R. Stetigkeit und irrationale Zahlen. Braunschweig: Friedrich Vieweg und Sohn, 1872.
[8] Bishop, E. Foundations of Constructive Analysis. New York: McGraw-Hill, 1967.
[9] Bishop, E.; Bridges, D. Constructive Analysis. Grundlehren der mathematischen Wissenschaften 279. Berlin: Springer, 1985. DOI: 10.1007/978-3-642-61667-9.
[10] Banach, S. Sur les opérations dans les ensembles abstraits et leur application aux équations intégrales. Fundamenta Mathematicae 3: 133–181, 1922. DOI: 10.4064/fm-3-1-133-181.
[11] Tarski, A. A lattice-theoretical fixpoint theorem and its applications. Pacific Journal of Mathematics 5(2): 285–309, 1955. DOI: 10.2140/pjm.1955.5.285.
[12] Davis, A. C. A characterization of complete lattices. Pacific Journal of Mathematics 5(2): 311–319, 1955. DOI: 10.2140/pjm.1955.5.311.
[13] Knaster, B. Un théorème sur les fonctions d'ensembles. Annales de la Société Polonaise de Mathématique 6: 133–134, 1928.
[14] Conway, J. H. On Numbers and Games. London ; New York: Academic Press, 1976.
[15] Lawvere, F. W. Metric spaces, generalized logic, and closed categories. Rendiconti del Seminario Matematico e Fisico di Milano 43(1): 135–166, 1973. DOI: 10.1007/BF02924844.
[16] Hadamard, J. Lectures on Cauchy's Problem in Linear Partial Differential Equations. New Haven: Yale University Press, 1923.
[17] Lakoff, G.; Núñez, R. E. Where Mathematics Comes From: How the Embodied Mind Brings Mathematics into Being. New York: Basic Books, 2000. ISBN 0-465-03770-4.
[18] Berkeley, G. The Analyst: Or a Discourse Addressed to an Infidel Mathematician. London: Printed for J. Tonson, 1734.
[19] Cauchy, A.-L. Cours d'analyse de l'École royale polytechnique; I.re partie: Analyse algébrique. Paris: Imprimerie royale (Debure frères), 1821.

*Citation verification statement: all 19 entries were verified one by one via CrossRef/archive.org/original book pages (2026-09-21), each carrying at least one verifiable path (DOI/ISBN/archive.org original). Verification corrections on record: the publication venue of Brouwer 1918 follows the original journal Verhandelingen (not Math. Annalen); Cantor 1872 keeps the original journal spelling Ueber and adds a DOI; Lakoff-Núñez follows the ISBN 0-465-03770-4 of the 2000 hardcover edition; DOIs added for Banach/Lawvere; the place of publication of Conway given as both localities; the printer and the retail bookseller of Cauchy distinguished.*

*This is the English version of the Chinese original (anchor_numbers_CN_v1.0.md); the Chinese version is authoritative.*
