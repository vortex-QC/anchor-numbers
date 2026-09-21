/-
# 锚数 · 完备动数: 锚原语与"锚数是动数的完备"的机器验证 (2026-09-20 深夜)
主人定调 (原话锚定见 papers/锚数_立项_v0.1.md v0.2): 锚数=完备动数, 动数公理被锚数吸纳;
  锚数不一定是构造数学——本件只验证数学完备化结构本身, 不做成员资格宣称。
验证命题: "锚数是动数的完备" 拆为四件可机器检验命题:
  V1 (动数不完备的机器证据): 两个 DynD0 模型——M_drift_dyn (ℤ 上 +1 漂移: 无极限) 与
    M_well_dyn (ℕ 上降井: 归原点) 同样满足 D0——D0 对"归宿/极限"沉默 = 动数公理不完备
    的构造性展示 (主判断①: 动数公理不完备只是特例——缺锚变量);
  V2 (完备化 = 加锚): 同一载体 ℕ、同一数轴动力学 (+1): 无锚则漂移不止, 加锚 (墙:
    min (x+1) N) 则全空间轨道归锚停住——完备化动作的机器形态 (M_drift → M_walled);
  V3 (吸纳): AnchorModel 携带自治演化 step——经 toDyn 注入 DynModel 后 DynD0 自动
    成立——锚数 ⟹ 动数公理 (动数公理被锚数吸纳的机器形态);
  V4 (锚决定归宿): anchor_decides_fate——同载体同"数轴", 只差锚, 归宿相反——
    极限从锚来, 不从数来 ("有锚钉住则有极限" 的对照实验机器化)。
内容:
  离散极限语义: Stabilizes (轨道最终停于一点——最终常数; 拓扑收敛版挂账) /
    AllStabilize / HasDrift; stabilize_unique (钉住唯一性) + stabilize_eq_fixed
    (停点=不动点——"钉住"的语义内容);
  锚数结构 AnchorModel: step (自治演化) + Anchored (锚——裸 Prop, 无动力学模型限制:
    结构对 step 零附加要求, 不是势/不是压缩/不是单调) + 锚-1 (有锚则全稳) +
    锚-0 (无锚则存在自发无穷动力——离散版: 存在漂移轨道; "任意方向自由"完整版挂账);
  实例三件: M_drift (ℤ, +1, 无锚——漂移世界) / M_walled N (ℕ, min (x+1) N, 有锚——
    墙型锚: FDNE 势墙的离散骨架, 诚实标注非逐字恒等) / M_well (ℕ, 降至原点, 有锚——
    井型锚: ⊕原点先验的离散骨架);
  吸纳: toDyn (AnchorModel → DynModel) + toDyn_D0 (锚数 ⟹ DynD0);
  特例二 (完备动数升格前置): banach_anchor (Banach 压缩系统族, 度量型锚——与 FDNE
    势型锚异类) + not_tendsto_plus1_real (无锚对照拓扑版);
  实数锚 (静侧): real_anchor_collapse (柯西动力在完备性锚下塌为静点) +
    real_anchor_collapse_unique (塌落点唯一)——锚数双重身份的另一半;
  锚数双重身份 (主人定调): 一半构造数学动数身份 (动力学侧), 一半锚塌为非动力学的
    实数锚 (静侧)——"动是背景, 静是显化" 的数轴实现。
  反向吸收: of_allStabilize / of_hasDrift (任一动数动力学可升入锚数框架——
    完备化的类型层形态) + anchor_decides_fate (V4 核心对照)。
乙类补件 (2026-09-21, 公理集定稿后激活):
  乙7 (D1/D2 相容·完整公理级吸纳): M_posAnchor (PosReal 停映锚) + toDynFull (富化注入:
    两成分恒 1/scale=正乘法作用)——D0∧D1∧D2a∧D2b∧D2c∧ScaleAx 全公理联立可实现;
    对照件 toDyn_not_D2c: 中立填充 (scale 恒等) 不承载 D2c——完整吸纳需要真结构;
  乙8 (锚-0/锚-1 独立性模型对, C2 预检): sep_ax0_not_ax1 (假锚世界: 锚-0 空洞成立
    锚-1 失败——锚必须真的钉住) + sep_ax1_not_ax0 (恒等世界: 锚-1 空洞成立 锚-0
    失败——无锚世界必须自发)——两方向分离, C2 独立性预检通过;
  乙5 (拓扑层结构化): TopAnchorModel (收敛语义=Filter.Tendsto, 极限点在空间内)
    + T_drift_real (ℝ 漂移无锚) + T_banach_real (压缩族真锚) + topo_fake_anchor_fails
    (拓扑版假锚失败件);
  乙6 (实数锚构造对接): ration_anchor_collapse——ℚ 柯西序列在 UniformSpace.Completion ℚ
    (完备化函子**构造**出的完备空间) 中塌为极限点——静半从公理级 (ℝ CompleteSpace
    实例) 升构造级: 锚不是公理是构造。
诚实边界:
  ① 离散最终常数语义 = 极限的最小实现; 拓扑收敛/柯西版 (实数完备化同构所在层) 挂账;
  ② 锚-0 的"任意方向自发无穷动力"离散化为"存在漂移轨道"——方向空间完整形式化
    待主人对频 (立项档 v0.2 §七.2 维持);
  ③ V3 是离散载体级吸纳 (step = D0 的自治 f 见证); DynModel 全公理 (D1/D2) 与
    锚数的相容性未做——完整公理级吸纳待锚数公理集定稿;
  ④ M_walled 的 min 墙 = FDNE 势墙 (A2×A4) 的离散骨架——同构提示非逐字恒等;
  ⑤ "每个动数模型可完备化" (全称版) 本件给实例级 (M_drift→M_walled), 全称版挂账;
  ⑥ 已知数学非新数学: Stabilize/唯一极限是基础练习级; 增量在"锚原语与动数不完备
    诊断的机器化"——主人观察种子的形式对频件。
零 sorry (自含证明, 无 axiom、无 sorry、无 native_decide)。
-/
import Mathlib
import DensityMath.DynamicLayer

namespace AnchorLayer

open DynamicLayer

/-! ## 离散极限语义 (拓扑版挂账——诚实边界①) -/

variable {α : Type}

/-- 离散稳定: 轨道最终停于一点 (最终常数语义)。 -/
def Stabilizes (f : α → α) (x : α) : Prop := ∃ x₀, ∃ N, ∀ n ≥ N, f^[n] x = x₀

/-- 全空间稳定: 一切轨道稳定 (有锚的动力学面)。 -/
def AllStabilize (f : α → α) : Prop := ∀ x, Stabilizes f x

/-- 漂移轨道存在: 存在不停轨道 (无锚的动力学面——锚-0 离散版)。 -/
def HasDrift (f : α → α) : Prop := ∃ x, ¬ Stabilizes f x

/-- 钉住唯一性: 轨道的稳定点唯一——"有锚钉住"钉在唯一处。 -/
theorem stabilize_unique {f : α → α} {x x₁ x₂ : α}
    (h1 : ∃ N, ∀ n ≥ N, f^[n] x = x₁) (h2 : ∃ N, ∀ n ≥ N, f^[n] x = x₂) : x₁ = x₂ := by
  obtain ⟨N₁, hN₁⟩ := h1
  obtain ⟨N₂, hN₂⟩ := h2
  exact (hN₁ (max N₁ N₂) (le_max_left N₁ N₂)).symm.trans
    (hN₂ (max N₁ N₂) (le_max_right N₁ N₂))

/-- 钉住 = 停: 稳定点是动力学的固定点 ("钉住"的语义内容)。 -/
theorem stabilize_eq_fixed {f : α → α} {x p : α}
    (h : ∃ N, ∀ n ≥ N, f^[n] x = p) : f p = p := by
  obtain ⟨N, hN⟩ := h
  have h1 := hN N (le_refl N)
  have h2 := hN (Nat.succ N) (Nat.le_succ N)
  rw [show f^[Nat.succ N] x = f (f^[N] x) from Function.iterate_succ_apply' f N x] at h2
  rw [h1] at h2
  exact h2

/-! ## 轨道公式 (三实例的 iterate 引理) -/

/-- ℤ 上 +1 动力学的轨道公式。 -/
theorem succ_iterate_int (x : ℤ) (n : ℕ) : (fun y : ℤ => y + 1)^[n] x = x + n := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih]
    show (x + (k : ℤ)) + 1 = x + ((k : ℤ) + 1)
    omega

/-- ℕ 上 +1 动力学的轨道公式。 -/
theorem succ_iterate_nat (x : ℕ) (n : ℕ) : (fun y : ℕ => y + 1)^[n] x = x + n := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih]
    show (x + k) + 1 = x + (k + 1)
    omega

/-- 墙型锚的轨道公式 (n+1 版; n=0 处 x>N 时公式失效——锚见证取 N+1 绕开)。 -/
theorem walled_iterate_succ (N x n : ℕ) :
    (fun y => min (y + 1) N)^[n + 1] x = min (x + n + 1) N := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih]
    show min (min (x + k + 1) N + 1) N = min (x + (k + 1) + 1) N
    omega

/-- 井型锚的轨道公式: 降至原点 = Nat 截断减。 -/
theorem well_iterate (x n : ℕ) :
    (fun y => if y = 0 then 0 else y - 1)^[n] x = x - n := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih]
    show (if x - k = 0 then 0 else (x - k) - 1) = x - (k + 1)
    by_cases h : x - k = 0
    · rw [if_pos h]; omega
    · rw [if_neg h]; omega

/-! ## 锚数结构: 完备动数的载体 -/

/-- 锚数空间: 自治演化 + 锚 (约束条件) + 锚-1/锚-0 两公理。
    **锚无动力学模型限制** = 结构对 step 零附加要求 (不是势函数/不是压缩映射/
    不是单调变换)——任何提供极限的约束都可以当锚 (主人种子一定调)。 -/
structure AnchorModel (X : Type) where
  /-- 自治演化 (D0 的离散载体——吸纳层的接口) -/
  step : X → X
  /-- 锚: 该系统被钉住 (约束条件; 裸命题——无动力学模型限制) -/
  Anchored : Prop
  /-- 锚-1: 有锚钉住则有极限 (离散版: 全空间轨道稳定) -/
  anchor_lim : Anchored → AllStabilize step
  /-- 锚-0: 无锚则自发无穷动力 (离散版: 存在漂移轨道; 方向自由完整版挂账) -/
  unanchored_free : ¬ Anchored → HasDrift step

/-! ## 实例三件: 漂移世界 / 墙型锚 / 井型锚 -/

/-- 漂移引理 (ℤ): +1 动力学无锚面——轨道 0, 1, 2, ... 永不停。 -/
theorem hasDrift_plus1_int : HasDrift (fun x : ℤ => x + 1) := by
  refine ⟨0, ?_⟩
  intro hSt
  obtain ⟨x₀, N, hN⟩ := hSt
  have h1 := hN N (le_refl N)
  have h2 := hN (N + 1) (Nat.le_succ N)
  rw [succ_iterate_int] at h1 h2
  omega

/-- 漂移引理 (ℕ): +1 动力学无锚面——同上 (锚-0 的数轴实现:
    数轴上的数自发无穷动力, 不停)。 -/
theorem hasDrift_plus1_nat : HasDrift (fun x : ℕ => x + 1) := by
  refine ⟨0, ?_⟩
  intro hSt
  obtain ⟨x₀, N, hN⟩ := hSt
  have h1 := hN N (le_refl N)
  have h2 := hN (N + 1) (Nat.le_succ N)
  rw [succ_iterate_nat] at h1 h2
  omega

/-- M_drift: ℤ 上 +1 漂移——无锚世界 (锚-0 实例)。 -/
def M_drift : AnchorModel ℤ where
  step := fun x => x + 1
  Anchored := False
  anchor_lim := by intro h; exact h.elim
  unanchored_free := by
    intro _
    exact hasDrift_plus1_int

/-- M_walled N: ℕ 上漂移被墙 N 钉住——墙型锚 (FDNE 势墙 A2×A4 的离散骨架,
    诚实边界④: 同构提示非逐字恒等): 全空间轨道归 N 停住。 -/
def M_walled (N : ℕ) : AnchorModel ℕ where
  step := fun x => min (x + 1) N
  Anchored := True
  anchor_lim := by
    intro _
    intro x
    refine ⟨N, N + 1, ?_⟩
    intro n hn
    obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
    rw [walled_iterate_succ]
    omega
  unanchored_free := by
    intro h
    exact (h trivial).elim

/-- M_well: ℕ 上降至原点——井型锚 (⊕原点先验的离散骨架, 诚实边界④):
    全空间轨道归原点停住。 -/
def M_well : AnchorModel ℕ where
  step := fun x => if x = 0 then 0 else x - 1
  Anchored := True
  anchor_lim := by
    intro _
    intro x
    refine ⟨0, x + 1, ?_⟩
    intro n hn
    rw [well_iterate]
    omega
  unanchored_free := by
    intro h
    exact (h trivial).elim

/-! ## V3 吸纳: 锚数 ⟹ 动数公理 -/

/-- 锚数空间到动层模型的注入 (演化=step, 其余字段为中立填充)。 -/
def toDyn {X : Type} (a : AnchorModel X) : DynModel where
  Carrier := X
  gen := fun s _ _ _ => a.step s
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun s _ => s
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

/-- **V3 (吸纳的机器形态)**: 锚数空间注入动层模型后 DynD0 自动成立——
    锚数携带自治演化, 动数公理 (D0) 被锚数吸纳。 -/
theorem toDyn_D0 {X : Type} (a : AnchorModel X) : DynD0 (toDyn a) :=
  ⟨fun s => a.step s, fun _ _ _ _ => rfl⟩

/-! ## V4 锚决定归宿 (核心对照) + 反向吸收 -/

/-- **V4 (锚决定归宿)**: 同一载体 ℕ、同一数轴动力学 (+1): 无锚则漂移不止 (锚-0 面),
    加锚 (墙 N) 则全空间轨道归锚停住 (锚-1 面)——极限的有无由锚决定, 不由数决定。
    动数 (D0) 对两种归宿沉默 (V1), 锚数裁决之——"锚数是动数的完备" 的对照实验。 -/
theorem anchor_decides_fate (N : ℕ) :
    HasDrift (fun x : ℕ => x + 1) ∧
      AllStabilize (fun x : ℕ => min (x + 1) N) := by
  constructor
  · exact hasDrift_plus1_nat
  · intro x
    refine ⟨N, N + 1, ?_⟩
    intro n hn
    obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
    rw [walled_iterate_succ]
    omega

/-- 反向吸收 (完备化的类型层形态一): 全稳动力学升入锚数框架 (锚 = True)。 -/
def of_allStabilize {X : Type} {f : X → X} (h : AllStabilize f) : AnchorModel X where
  step := f
  Anchored := True
  anchor_lim := by intro _; exact h
  unanchored_free := by
    intro h1
    exact (h1 trivial).elim

/-- 反向吸收 (完备化的类型层形态二): 漂移动力学升入锚数框架 (锚 = False)。 -/
def of_hasDrift {X : Type} {f : X → X} (h : HasDrift f) : AnchorModel X where
  step := f
  Anchored := False
  anchor_lim := by intro h1; exact h1.elim
  unanchored_free := by intro _; exact h

/-! ## V1 动数不完备的机器证据 (D0 对归宿沉默) -/

/-- 漂移世界的动层模型 (ℤ 上 +1; gen = 自治 +1)。 -/
def M_drift_dyn : DynModel where
  Carrier := ℤ
  gen := fun s _ _ _ => s + 1
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun s _ => s
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

/-- 井型锚世界的动层模型 (ℕ 上降至原点)。 -/
def M_well_dyn : DynModel where
  Carrier := ℕ
  gen := fun s _ _ _ => if s = 0 then 0 else s - 1
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun s _ => s
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

theorem M_drift_dyn_D0 : DynD0 M_drift_dyn := by
  show ∃ f : ℤ → ℤ, ∀ (s : ℤ) (t i o : ℝ), M_drift_dyn.gen s t i o = f s
  exact ⟨fun x => x + 1, fun _ _ _ _ => rfl⟩

theorem M_well_dyn_D0 : DynD0 M_well_dyn := by
  show ∃ f : ℕ → ℕ, ∀ (s : ℕ) (t i o : ℝ), M_well_dyn.gen s t i o = f s
  exact ⟨fun x => if x = 0 then 0 else x - 1, fun _ _ _ _ => rfl⟩

/-! ## 特例二 (拓扑层): Banach 压缩系统族——度量型锚

主人定调 (2026-09-20 深夜): 锚数升为完备动数的前置 = 找到锚数公理下**另一个**动数
特例——单特例只是现有动数的另一版描述, 双特例才是完备母结构。
本节给出特例二: **Banach 压缩系统族** (度量型锚)——锚 = 压缩条件 (ContractingWith,
K<1), 无势/无墙井/无阻尼惯性——与特例一 (FDNE, 势型锚: 墙+井) **不同动力学类别**。
两特例并存 → 锚数 = 完备动数 (非重述)。体系内第二候选 (力比双锚流, R'=1 上游锚 +
通道平衡下游锚) 叙事位保留, 严格化挂账 (β 形式未定)。-/

/-- **特例二 (Banach 压缩系统族, 锚-1 拓扑版)**: ℝ (完备) 上任意压缩映射
    (ContractingWith K f——K<1, 锚=压缩条件) 则唯一不动点存在且一切轨道收敛于它。
    锚条件是一个**系统类** (一切 K<1 压缩映射), 非单个构造——度量型锚与 FDNE 的
    势型锚异类, 两类并存支撑"锚数=完备动数"。 -/
theorem banach_anchor (f : ℝ → ℝ) (K : NNReal) (hc : ContractingWith K f) :
    ∃ p, Function.IsFixedPt f p ∧ ∀ x, Filter.Tendsto (fun n => f^[n] x) Filter.atTop (nhds p) := by
  have hfin : ∀ x : ℝ, edist x (f x) ≠ (⊤ : ENNReal) := fun x => edist_ne_top x (f x)
  obtain ⟨p, hfixp, htendsto, -⟩ := hc.exists_fixedPoint 0 (hfin 0)
  refine ⟨p, hfixp, fun x => ?_⟩
  obtain ⟨y, hyfix, hytend, -⟩ := hc.exists_fixedPoint x (hfin x)
  rcases hc.eq_or_edist_eq_top_of_fixedPoints hyfix hfixp with heq | htop
  · rw [heq] at hytend
    exact hytend
  · exact absurd htop (edist_ne_top y p)

/-- 特例二的无锚对照 (锚-0 拓扑版): ℝ 上 +1 漂移 (完备空间、非压缩——无锚)
    不收敛于任何点。与 banach_anchor 合读: 完备空间同样沉默, 锚 (压缩条件)
    裁决收敛与否——拓扑层与离散层 (anchor_decides_fate) 同构。 -/
theorem not_tendsto_plus1_real (x c : ℝ) :
    ¬ Filter.Tendsto (fun n : ℕ => (x : ℝ) + n) Filter.atTop (nhds c) := by
  intro h
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.mp h (1 : ℝ) one_pos
  have h1 := hN N (Nat.le_refl N)
  have h2 := hN (N + 10) (by omega)
  simp only [Real.dist_eq] at h1 h2
  push_cast at h1 h2
  obtain ⟨h1a, h1b⟩ := abs_lt.mp h1
  obtain ⟨h2a, h2b⟩ := abs_lt.mp h2
  have hsum : (x : ℝ) + N - c + (c - ((x : ℝ) + (N + 10))) = -10 := by ring
  linarith

/-! ### 特例二补注 (机器化边界)
具象读数 (f = x/2, K = 1/2 的 ContractingWith 构造) 因 NNReal 系数摩擦挂账;
类定理 banach_anchor 本身即特例二证据——锚条件是系统类 (一切 K<1 压缩映射),
非单个构造。 -/

/-- **V1 (动数不完备的机器证据)**: 两个 DynD0 模型——一个漂移无极限, 一个归原点——
    同样满足 D0: **动数公理对"归宿/极限"完全沉默**。
    这是主人判断① (动数公理不完备, 只是特例) 的构造性展示: 缺的变量就是锚。 -/
theorem D0_silent_on_fate :
    DynD0 M_drift_dyn ∧ DynD0 M_well_dyn ∧
      HasDrift (fun x : ℤ => x + 1) ∧
      AllStabilize (fun x : ℕ => if x = 0 then 0 else x - 1) := by
  refine ⟨M_drift_dyn_D0, M_well_dyn_D0, hasDrift_plus1_int, ?_⟩
  intro x
  exact M_well.anchor_lim trivial x


/-! ## 实数锚 (静侧): 锚塌为非动力学的实数锚

主人定调 (2026-09-20 深夜): 锚数的特殊身份 = 两半——**一半是构造数学动数身份**
(动力学侧: D0-D2 吸纳 + FDNE/Banach 特例), **另一半是锚塌为非动力学的实数锚**
(静侧: 动力过程被完备性锚钉死, 塌为静态数结构)。本节为静侧的机器形态:
完备性公理是锚, 柯西序列是动力, 实数点是锚塌产物。 -/

/-- **实数锚 (锚塌定理, 静侧)**: 柯西序列 (动力过程: 无穷逼近的漂移) 在 ℝ 的完备性
    (锚) 下塌为极限点 (静的数结构)。锚塌 = 动力过程 → 静态数结构的变换——
    "动是背景, 静是显化" (起源命题 2') 的数轴实现:
    完备性公理 (锚-1 数轴实现) 把漂移动力显化为静的实数。 -/
theorem real_anchor_collapse (u : ℕ → ℝ) (hu : CauchySeq u) :
    ∃ p, Filter.Tendsto u Filter.atTop (nhds p) :=
  cauchySeq_tendsto_of_complete hu

/-- 锚塌产物唯一: 塌落点唯一——动力过程钉死在唯一静点
    (离散层 stabilize_unique 的静侧对应)。 -/
theorem real_anchor_collapse_unique (u : ℕ → ℝ) (p q : ℝ)
    (hp : Filter.Tendsto u Filter.atTop (nhds p))
    (hq : Filter.Tendsto u Filter.atTop (nhds q)) : p = q :=
  tendsto_nhds_unique hp hq

/-! ## 乙7: D1/D2 相容 (完整公理级吸纳, C2 预检配套)

锚数公理集定稿 (2026-09-20 深夜, E5 替代生效) 后激活: V3 吸纳此前只到 D0 级
(toDyn 中立填充), 本节把吸纳升到全公理级——锚数实例与动层全公理
D0∧D1∧D2a∧D2b∧D2c∧ScaleAx **联立可实现** (相容性), 并给对照件: 中立填充
(scale 恒等) 不承载 D2c——载体必须在缩放作用下传递 (单轨道), 完整吸纳需要
真结构, 自由填充不承载。 -/

/-- 富化锚实例: PosReal 上常值停映 (step = 恒 posOne, 一步钉住于 1)。
    锚-1 非空洞成立 (全空间轨道一步停于 posOne); 锚-0 空洞 (Anchored=True)。 -/
def M_posAnchor : AnchorModel PosReal where
  step := fun _ => posOne
  Anchored := True
  anchor_lim := by
    intro _ x
    refine ⟨posOne, 1, ?_⟩
    intro n hn
    obtain ⟨k, rfl⟩ : ∃ k, n = k + 1 := ⟨n - 1, by omega⟩
    rw [Function.iterate_succ_apply']
  unanchored_free := by
    intro h
    exact (h trivial).elim

/-- 富化注入 toDynFull: 载体 PosReal, gen=M_posAnchor.step (自治停映),
    两成分恒 1, scale=正乘法作用 (真群作用——与 toDyn 的恒等填充相对),
    观测恒 0。D2c 要求载体在缩放作用下传递, PosReal 恰为单轨道。 -/
def toDynFull : DynModel where
  Carrier := PosReal
  gen := fun s _ _ _ => M_posAnchor.step s
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun u k => posMul u k
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

theorem toDynFull_D0 : DynD0 toDynFull :=
  ⟨M_posAnchor.step, fun _ _ _ _ => rfl⟩

theorem toDynFull_D1 : DynD1 toDynFull := fun _ => Iff.rfl

theorem toDynFull_D2a : DynD2a toDynFull := fun _ _ => rfl

theorem toDynFull_D2c : DynD2c toDynFull := by
  intro u v _
  refine ⟨⟨v.1 / u.1, div_pos v.2 u.2⟩, ?_⟩
  apply Subtype.ext
  show u.1 * (v.1 / u.1) = v.1
  rw [← mul_div_assoc]
  exact mul_div_cancel_left₀ v.1 (ne_of_gt u.2)

theorem toDynFull_scale : DynScaleAx toDynFull := by
  constructor
  · intro u
    apply Subtype.ext
    show u.1 * 1 = u.1
    rw [mul_one]
  · intro u a b
    refine Subtype.ext ?_
    simp only [toDynFull, posMul]
    rw [mul_assoc]

/-- **乙7 主件 (D1/D2 相容, 完整公理级吸纳)**: 富化锚实例 M_posAnchor 与动层模型
    toDynFull 联立——锚-1 非空洞成立, 且动层全公理 D0/D1/D2a/D2c/ScaleAx 逐条
    成立, D2b 作定理导出 (观测非单射)。锚数公理与动层全公理相容——
    V3 从 D0 级吸纳升全公理级。 -/
theorem anchor_dyn_compatible :
    AllStabilize M_posAnchor.step ∧
      DynD0 toDynFull ∧ DynD1 toDynFull ∧ DynD2a toDynFull ∧
      DynD2c toDynFull ∧ DynScaleAx toDynFull ∧
      ¬ Function.Injective toDynFull.observe := by
  refine ⟨M_posAnchor.anchor_lim trivial, toDynFull_D0, toDynFull_D1, toDynFull_D2a,
    toDynFull_D2c, toDynFull_scale, ?_⟩
  have hne : (posMul posOne posTwo) ≠ posOne := by
    intro h
    have hv : (posMul posOne posTwo).1 = posOne.1 := congrArg Subtype.val h
    simp only [posMul, posTwo, posOne] at hv
    norm_num at hv
  exact observe_not_injective toDynFull toDynFull_D2a ⟨posOne, posTwo, hne⟩

/-- **乙7 对照件**: 中立填充 toDyn 不满足 D2c——scale 恒等使缩放轨道全部退化
    为单点, 不同状态无法缩放互达。完整吸纳需要真结构 (传递缩放作用),
    自由填充不承载 D2c。 -/
theorem toDyn_not_D2c : ¬ DynD2c (toDyn (M_walled 1)) := by
  intro h
  have h1 := h Nat.zero (Nat.succ Nat.zero) rfl
  obtain ⟨k, hk⟩ := h1
  have h2 : (0 : ℕ) = 1 := hk
  omega

/-! ## 乙8: 锚-0/锚-1 独立性模型对 (C2 预检正式件)

公理集定稿后 C2 级独立性预检: 在 (step, Anchored, 极限行为) 层,
锚-0 (无锚则自发) 与 锚-1 (有锚则有极限) 互相独立——两方向各给分离模型。
结构性注记: 单锚变量下两公理互补覆盖 (Anchored 真则 锚-0 空洞, 假则 锚-1
空洞), 独立性检验的对象是公理**内容**是否被对方蕴含。 -/

/-- 恒等轨道引理。 -/
theorem id_iterate (n : ℕ) (x : ℕ) : (fun y => y)^[n] x = x := by
  induction n with
  | zero => rfl
  | succ k ih => rw [Function.iterate_succ_apply']; exact ih

/-- **分离一 (锚-0 有·锚-1 败): 假锚世界**——Anchored=True 但动力学 +1 漂移不止。
    锚-0 (¬True → _) 空洞成立, 锚-1 失败: 有锚之名无极限之实。
    内容: 锚-1 不被锚-0 蕴含——"声称有锚"白拿不到极限, 锚必须真的钉住
    (锚的诚实性条件)。 -/
theorem sep_ax0_not_ax1 :
    (¬ True → HasDrift (fun x : ℕ => x + 1)) ∧
      ¬ AllStabilize (fun x : ℕ => x + 1) := by
  refine ⟨fun h => absurd trivial h, ?_⟩
  intro hAll
  obtain ⟨x, hx⟩ := hasDrift_plus1_nat
  exact hx (hAll x)

/-- **分离二 (锚-1 有·锚-0 败): 恒等世界**——Anchored=False 但恒等动力学全稳
    (无漂移)。锚-1 (¬False → _) 空洞成立, 锚-0 失败: 无锚之名也无漂移之实。
    内容: 锚-0 不被锚-1 蕴含——"没有锚"不等于"静止", 无锚世界必须自发
    (锚-0 的自发性内容)。 -/
theorem sep_ax1_not_ax0 :
    (¬ False → AllStabilize (fun x : ℕ => x)) ∧
      ¬ HasDrift (fun x : ℕ => x) := by
  refine ⟨fun _ x => ⟨x, 0, fun n _ => id_iterate n x⟩, ?_⟩
  intro h
  obtain ⟨x, hx⟩ := h
  exact hx ⟨x, 0, fun n _ => id_iterate n x⟩

/-! ## 乙5: 拓扑层结构化 (TopAnchorModel)

离散 Stabilizes (最终常数) 是极限的最小实现 (诚实边界①); 本节把锚数结构
升到拓扑层: 收敛语义 = Filter.Tendsto, 极限点要求在空间内 (完备性承接)。
锚的拓扑实例: T_banach_real (压缩族——度量型锚) / T_drift_real (漂移——无锚)。 -/

/-- 拓扑层锚数结构: 极限语义从"最终常数"升为拓扑收敛 (极限点 ∈ 空间)。
    锚-1: 有锚则全空间轨道收敛; 锚-0: 无锚则存在不收敛轨道。 -/
structure TopAnchorModel (X : Type) [TopologicalSpace X] where
  /-- 自治演化 -/
  step : X → X
  /-- 锚 (裸命题, 无动力学模型限制——与离散层同纪律) -/
  Anchored : Prop
  /-- 锚-1 (拓扑版): 有锚则全空间轨道收敛于空间内极限点 -/
  anchor_lim : Anchored → ∀ x : X, ∃ p : X,
    Filter.Tendsto (fun n => step^[n] x) Filter.atTop (nhds p)
  /-- 锚-0 (拓扑版): 无锚则存在不收敛轨道 -/
  unanchored_free : ¬ Anchored → ∃ x : X, ∀ p : X,
    ¬ Filter.Tendsto (fun n => step^[n] x) Filter.atTop (nhds p)

/-- ℝ 上 +1 的轨道公式。 -/
theorem succ_iterate_real (x : ℝ) (n : ℕ) : (fun y : ℝ => y + 1)^[n] x = x + n := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih]
    push_cast
    ring

/-- 拓扑漂移世界: ℝ 上 +1, 无锚——锚-0 拓扑版 (not_tendsto_plus1_real 顶上)。 -/
def T_drift_real : TopAnchorModel ℝ where
  step := fun x => x + 1
  Anchored := False
  anchor_lim := by intro h; exact h.elim
  unanchored_free := by
    intro _
    refine ⟨0, ?_⟩
    intro p hp
    have heq : (fun n => (fun x : ℝ => x + 1)^[n] 0) = fun n : ℕ => (0 : ℝ) + (n : ℝ) := by
      funext n
      exact succ_iterate_real 0 n
    rw [heq] at hp
    exact not_tendsto_plus1_real 0 p hp

/-- 拓扑假锚失败件 (分离一的拓扑版): 声称 Anchored=True 也造不出极限——
    锚-1 的内容不是锚之名而是钉住之实。 -/
theorem topo_fake_anchor_fails :
    ¬ ∀ p : ℝ, Filter.Tendsto (fun n => (fun x : ℝ => x + 1)^[n] (0 : ℝ)) Filter.atTop (nhds p) := by
  intro h
  have heq : (fun n => (fun x : ℝ => x + 1)^[n] (0 : ℝ)) = fun n : ℕ => (0 : ℝ) + (n : ℝ) := by
    funext n
    exact succ_iterate_real 0 n
  rw [heq] at h
  exact not_tendsto_plus1_real 0 0 (h 0)

/-- 拓扑真锚世界 (特例二拓扑化): ℝ 上 K<1 压缩映射族——锚 = 压缩条件,
    全空间轨道收敛于唯一不动点 (banach_anchor 的结构化载体:
    锚条件=系统类, 动力学模型零附加限制的纪律在拓扑层保持)。 -/
def T_banach_real (f : ℝ → ℝ) (K : NNReal) (hc : ContractingWith K f) : TopAnchorModel ℝ where
  step := f
  Anchored := ContractingWith K f
  anchor_lim := by
    intro hA x
    obtain ⟨p, -, htend, -⟩ := hA.exists_fixedPoint x (edist_ne_top x (f x))
    exact ⟨p, htend⟩
  unanchored_free := by
    intro h
    exact (h hc).elim

/-! ## 乙6: 实数锚构造对接 (静半从公理级升构造级)

real_anchor_collapse 用 ℝ 的 CompleteSpace 实例 (公理级完备性); 本节把静半
落到构造: ℚ 的柯西序列在 UniformSpace.Completion ℚ 中塌为极限点——完备空间
由完备化函子**构造**出来, 锚不是公理而是构造。静半的"标准数学血统"
落到构造细节 (与 Bishop 路线的对接面: 正则柯西序列构造 = 锚的构造形态,
丙类检索件核验王冠成色)。 -/

/-- **有理数锚 (构造形态)**: ℚ 中的柯西动力序列在完备化 UniformSpace.Completion ℚ
    中塌为极限点。锚 = 完备化函子的构造产物——"锚塌为静" 的构造级实现。 -/
theorem ration_anchor_collapse (u : ℕ → ℚ) (hu : CauchySeq u) :
    ∃ p : UniformSpace.Completion ℚ,
      Filter.Tendsto (fun n => UniformSpace.Completion.coe' (u n)) Filter.atTop (nhds p) :=
  cauchySeq_tendsto_of_complete
    ((UniformSpace.Completion.uniformContinuous_coe ℚ).comp_cauchySeq hu)

/-- 有理锚塌产物唯一 (real_anchor_collapse_unique 的构造层对应)。 -/
theorem ration_anchor_collapse_unique (u : ℕ → ℚ) (p q : UniformSpace.Completion ℚ)
    (hp : Filter.Tendsto (fun n => UniformSpace.Completion.coe' (u n)) Filter.atTop (nhds p))
    (hq : Filter.Tendsto (fun n => UniformSpace.Completion.coe' (u n)) Filter.atTop (nhds q)) :
    p = q :=
  tendsto_nhds_unique hp hq

/-! ## 特例三 (格序型锚): Tarski-Knaster 完备格单调算子

丙12 检索件 (2026-09-21 晨) 定调的第三异类形态机器化: 锚 = 载体的**序完备性**
(CompleteLattice), 锚条件 = 算子单调 (Monotone——最弱的正则性)。与特例一 (FDNE
势型: 墙+井, 动力学驻留) 和特例二 (Banach 度量型: 压缩速率, 迭代极限) 均异类:
不动点由序结构**一次闭式确定** (lfp = sInf {a | f a ≤ a}), 非迭代非度量非势;
且单调就够 (度量型需压缩)。Davis 1955 逆定理 (格完备 ⟺ 一切保序自映射有不动点)
= "锚在哪里极限就在哪里" 的格论精确化 (逆方向 Mathlib 未载, 挂账)。
三特例并存: 势型 / 度量型 / 格序型——锚数 = 完备动数的三重支撑。 -/

/-- **特例三 (格序型锚, 锚-1 格序版)**: 完备格上任意单调自映射必有不动点
    (Knaster-Tarski, Mathlib OrderHom.lfp)——锚 = 序完备性 (结构类),
    一切单调算子被它钉住。 -/
theorem tarski_anchor (α : Type) [CompleteLattice α] (f : α →o α) :
    ∃ p : α, f p = p :=
  ⟨f.lfp, f.map_lfp⟩

/-- 格序型锚的强形态: 最小不动点存在且由序结构内生确定
    (IsLeast fixedPoints——"极限位置完全由格结构决定" 的机器形态)。 -/
theorem tarski_lfp_least (α : Type) [CompleteLattice α] (f : α →o α) :
    IsLeast (Function.fixedPoints f) f.lfp :=
  f.isLeast_lfp

/-- 特例三的无锚对照 (锚-0 格序版): 非完备格 ℕ 上单调自映射 (+1) 可无不动点
    ——与特例二 not_tendsto_plus1_real 同构: 完备性 (锚) 裁决归宿,
    不完备 + 最弱正则性仍可漂移。 -/
theorem not_tarski_nat_succ :
    Monotone (fun x : ℕ => x + 1) ∧ ¬ ∃ p : ℕ, (fun x => x + 1) p = p := by
  refine ⟨fun a b h => Nat.succ_le_succ h, ?_⟩
  rintro ⟨p, hp⟩
  simp at hp

/-! ## 乙8 完整版: 锚-0 内容 ⊥ D0 自治性 (DynModel 层分离)

sep_ax0_not_ax1 / sep_ax1_not_ax0 在 (step, Anchored) 层分离了锚-0/锚-1;
本节把"锚-0 的漂移内容"与动层 D0 (自治演化) 在 DynModel 层完整分离:
D0 ⊬ 漂移 (自治恒等世界: D0 ✓ 无漂移) 且 漂移 ⊬ D0 (非自治漂移世界:
单步漂移 ✓ 但演化显含时间——D0 ✗)。
诚实标注: DriftD 为单步采样语义 (取 t=1 切片做 iterate)——完整非自治
轨道语义挂账。 -/

/-- 漂移内容 (DynModel 层): 单步函数 (t=1, i=o=0 切片) 存在不停轨道。 -/
def DriftD (m : DynModel) : Prop := HasDrift (fun s => m.gen s 1 0 0)

/-- 自治恒等世界: D0 ✓ 漂移 ✗ (D0 不蕴含漂移内容)。 -/
def M_id_dyn : DynModel where
  Carrier := ℕ
  gen := fun s _ _ _ => s
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun s _ => s
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

/-- 非自治漂移世界: 单步漂移 ✓ D0 ✗ (演化显含时间 t——t>0 加 2 否则加 1,
    漂移内容不蕴含 D0)。 -/
noncomputable def M_nonauto : DynModel where
  Carrier := ℤ
  gen := fun s t _ _ => s + (if 0 < t then 2 else 1)
  dispersive := fun _ => 1
  convective := fun _ => 1
  scale := fun s _ => s
  observe := fun _ => 0
  observePair := fun _ => (0, 0)

/-- ℤ 上 +2 的轨道公式 (单步切片 s+2 的漂移见证)。 -/
theorem plus2_iterate_int (s : ℤ) (n : ℕ) : (fun y : ℤ => y + 2)^[n] s = s + 2 * n := by
  induction n with
  | zero => simp
  | succ k ih => rw [Function.iterate_succ_apply', ih]; push_cast; ring

theorem M_id_dyn_spec : DynD0 M_id_dyn ∧ ¬ DriftD M_id_dyn := by
  refine ⟨⟨fun s => s, fun _ _ _ _ => rfl⟩, ?_⟩
  show ¬ HasDrift (fun s : ℕ => s)
  intro h
  obtain ⟨x, hx⟩ := h
  exact hx ⟨x, 0, fun n _ => id_iterate n x⟩

theorem M_nonauto_spec : DriftD M_nonauto ∧ ¬ DynD0 M_nonauto := by
  have hslice : ∀ s : ℤ, M_nonauto.gen s 1 0 0 = s + 2 := by
    intro s
    show s + (if 0 < (1:ℝ) then 2 else 1) = s + 2
    rw [if_pos (by norm_num : (0:ℝ) < (1:ℝ))]
  have hD : DriftD M_nonauto = HasDrift (fun s : ℤ => s + 2) := by
    unfold DriftD
    congr 1
    funext s
    exact hslice s
  constructor
  · rw [hD]
    refine ⟨0, ?_⟩
    intro hSt
    obtain ⟨x₀, N, hN⟩ := hSt
    have h1 := hN N (le_refl N)
    have h2 := hN (N + 1) (by omega)
    rw [plus2_iterate_int] at h1 h2
    omega
  · rintro ⟨f, hf⟩
    have e0 : (0:ℤ) + (if (0:ℝ) < (0:ℝ) then (2:ℤ) else (1:ℤ)) = f (0:ℤ) :=
      hf (0:ℤ) 0 0 0
    have e1 : (0:ℤ) + (if (0:ℝ) < (1:ℝ) then (2:ℤ) else (1:ℤ)) = f (0:ℤ) :=
      hf (0:ℤ) 1 0 0
    rw [if_neg (by norm_num : ¬ (0:ℝ) < (0:ℝ))] at e0
    rw [if_pos (by norm_num : (0:ℝ) < (1:ℝ))] at e1
    omega

/-- **乙8 主件 (锚-0 内容 ⊥ D0, DynModel 层双向分离)**:
    自治恒等世界 D0 ✓ 无漂移——D0 ⊬ 漂移;
    非自治漂移世界漂移 ✓ D0 ✗——漂移 ⊬ D0。
    与锚-0⊥锚-1 (sep 件) 合并: 锚-0 的公理内容与 D0 完全独立。 -/
theorem D0_independent_of_drift :
    DynD0 M_id_dyn ∧ ¬ DriftD M_id_dyn ∧
      DriftD M_nonauto ∧ ¬ DynD0 M_nonauto :=
  ⟨(M_id_dyn_spec).1, (M_id_dyn_spec).2, (M_nonauto_spec).1, (M_nonauto_spec).2⟩

end AnchorLayer
