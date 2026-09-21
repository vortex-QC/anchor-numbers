/-
# 动层 · 动静理论: 公理集 Lean 定义文件 D0/D1/D2 (2026-09-20)
构造数学公理集公开版 §二 (动层 · 动静理论, 一阶构造) 的形式陈述层机器化——
C6 存量必清项 (各层公理的 Lean 定义文件) 之动层件。
对应: papers/构造数学_公理集公开版_v0.1.md §二 (形式陈述层权威抽取) +
  papers/动层构造数学_立项_v0.1.md (D1 同时性语法内容源) +
  DimensionAxioms.lean 模式 (公理以定义引入, 成立与否是模型性质; 模型检验操作内核)。
内容:
  D0 自发动力学: 演化可写成自治形式 (∃ f : Carrier → Carrier, 广义演化与 f 处处一致——
    无显含时间项/外部输入项/观测者项的类型层对应: 三通道为占位参数, 自治表示吸收全部);
  D1 同时性: 两成分 (弥散型×收敛型) 永不单独出现 (∀ u, 弥散 ≠ 0 ↔ 收敛 ≠ 0);
  D2a 标度等价观测: 可观测泛函在正缩放下不变 (绝对量不可观测);
  D2b 单投影必有损: [定理非定义] 标度不变 + 非平凡缩放存在 ⟹ 观测非单射
    (公开版 D2b 的 Brouwer 引用以缩放作用承载, 定理级导出);
  D2c 双比值完备: 双读数相等 ⟹ 同缩放等价类 (最小完备观测基);
  scale_ax: 正缩放的作用律 (单位+结合——"标度等价类"的结构前提)。
  四模型检验: M_full (全实现: 正域 ℝ² 上交换演化+差型/积型两成分+比值观测,
    D0∧D1∧D2a∧D2c∧scale_ax 五件全过) / M_noDual (D0∧¬D1 自治单成分) /
    M_noAuto (D1∧¬D0 双向含时) / M_dualNoScale (D0∧D1∧¬D2a 标度敏感观测)。
诚实边界:
  ① 公理的观察语义层 (C1 审查对象) 与证据指引不域内——本文件只承载形式陈述层的
    操作内核 (DimensionAxioms 同款边界);
  ② D0 的三通道 (时间/输入/观测者) 为占位类型参数——承载"依赖存在性", 不建模通道内容;
  ③ M_full 的 convective = d·(u₁²+1) 是类型层构造 (保证 ↔ 成立的最简非平凡耦合),
    非物理忠实; 演化取分量交换 (非平凡自同构), 非真实动力学;
  ④ D2b 的 Brouwer 定理 (连续单射 ℝ²→ℝ 不存在) 不域内——以缩放作用的代数推论
    承载其操作内核, 维数论强度不冒充;
  ⑤ [引用]E 唯一实存为跨体系声明, 不入本文件 (公开版 §二 引用声明维持)。
零 sorry (模型构造直证)。
-/
import Mathlib

namespace DynamicLayer

/-! ## 正缩放群 (标度等价类的缩放侧) -/

/-- 正实数 (缩放参数; 只取正——标度等价的缩放群语义) -/
def PosReal := {k : ℝ // 0 < k}

/-- 正实数单位 -/
def posOne : PosReal := ⟨1, by norm_num⟩

/-- 正实数乘法 -/
def posMul (a b : PosReal) : PosReal := ⟨a.1 * b.1, mul_pos a.2 b.2⟩

/-- 正实数 2 (测试用非平凡缩放见证) -/
def posTwo : PosReal := ⟨2, by norm_num⟩

/-! ## 动层模型结构 (广义演化 + 两成分 + 标度作用 + 观测) -/

/-- 动层模型: 一个动力学宇宙。
    gen = 广义演化 (状态×时间×输入×观测者 → 状态——三通道占位, 仅表达依赖存在性);
    dispersive/convective = 弥散型×收敛型两成分 (D1 审查对象);
    scale/observe/observePair = 正缩放作用/单投影/双比值读数 (D2 审查对象)。 -/
structure DynModel where
  Carrier : Type
  gen : Carrier → ℝ → ℝ → ℝ → Carrier
  dispersive : Carrier → ℝ
  convective : Carrier → ℝ
  scale : Carrier → PosReal → Carrier
  observe : Carrier → ℝ
  observePair : Carrier → ℝ × ℝ

/-! ## 动层公理 (操作内核, 以定义引入) -/

/-- D0 自发动力学: 演化可写成自治形式——存在 f : Carrier → Carrier 与广义演化
    处处一致 (无显含时间项/外部输入项/观测者项的类型层对应)。 -/
def DynD0 (m : DynModel) : Prop :=
  ∃ f : m.Carrier → m.Carrier, ∀ s t i o, m.gen s t i o = f s

/-- D1 同时性: 两成分永不单独出现——每个状态上弥散非零 ⟺ 收敛非零。 -/
def DynD1 (m : DynModel) : Prop :=
  ∀ u : m.Carrier, m.dispersive u ≠ 0 ↔ m.convective u ≠ 0

/-- D2a 比值可观测 (标度等价): 可观测泛函在正缩放下不变——绝对量不可观测。 -/
def DynD2a (m : DynModel) : Prop :=
  ∀ (u : m.Carrier) (k : PosReal), m.observe (m.scale u k) = m.observe u

/-- D2c 双比值完备: 双读数相等 ⟹ 同缩放等价类——最小完备观测基。 -/
def DynD2c (m : DynModel) : Prop :=
  ∀ u v : m.Carrier, m.observePair u = m.observePair v →
    ∃ k : PosReal, m.scale u k = v

/-- 缩放作用律: 单位 + 结合 (标度等价类是 PosReal-作用下的轨道)。 -/
def DynScaleAx (m : DynModel) : Prop :=
  (∀ u : m.Carrier, m.scale u posOne = u) ∧
    ∀ (u : m.Carrier) (a b : PosReal), m.scale (m.scale u a) b = m.scale u (posMul a b)

/-! ## D2b: 单投影必有损 (定理非定义) -/

/-- D2b 单投影必有损: 标度不变观测 + 非平凡缩放存在 ⟹ 观测非单射。
    (公开版 D2b 的操作内核: 单一实值投影必有损——以缩放作用承载) -/
theorem observe_not_injective (m : DynModel) (h : DynD2a m)
    (hne : ∃ (u : m.Carrier) (k : PosReal), m.scale u k ≠ u) :
    ¬ Function.Injective m.observe := by
  intro hinj
  obtain ⟨u, k, hk⟩ := hne
  exact hk (hinj (h u k))

/-! ## M_full: 全实现模型 (正域 ℝ² 上五件全过) -/

/-- 正分量对 (Λ² 的具体载体: (0,∞)²) -/
def PosPair := {p : ℝ × ℝ // 0 < p.1 ∧ 0 < p.2}

/-- M_full: 全实现模型。演化=分量交换 (非平凡自同构); 弥散=分量差,
    收敛=差×(u₁²+1) (↔ 成立的最简非平凡耦合); 观测=比值; 双读数=(u₁/u₂, u₂/u₁)。 -/
noncomputable def M_full : DynModel where
  Carrier := PosPair
  gen := fun s _ _ _ => ⟨(s.1.2, s.1.1), ⟨s.2.2, s.2.1⟩⟩
  dispersive := fun u => u.1.1 - u.1.2
  convective := fun u => (u.1.1 - u.1.2) * (u.1.1 * u.1.1 + 1)
  scale := fun u k => ⟨(k.1 * u.1.1, k.1 * u.1.2), ⟨mul_pos k.2 u.2.1, mul_pos k.2 u.2.2⟩⟩
  observe := fun u => u.1.1 / u.1.2
  observePair := fun u => (u.1.1 / u.1.2, u.1.2 / u.1.1)

theorem M_full_D0 : DynD0 M_full :=
  ⟨fun s => ⟨(s.1.2, s.1.1), ⟨s.2.2, s.2.1⟩⟩, fun _ _ _ _ => rfl⟩

theorem M_full_D1 : DynD1 M_full := by
  rintro ⟨⟨a, b⟩, ⟨ha, hb⟩⟩
  show (a - b ≠ 0 ↔ (a - b) * (a * a + 1) ≠ 0)
  constructor
  · intro h hc
    rw [mul_eq_zero] at hc
    rcases hc with hc | hc
    · exact h hc
    · exfalso
      have hpos : 0 < a * a + 1 := by positivity
      linarith
  · intro h hc
    rw [hc, zero_mul] at h
    exact h rfl

theorem M_full_D2a : DynD2a M_full := by
  rintro ⟨⟨a, b⟩, ⟨ha, hb⟩⟩ ⟨k, hk⟩
  show (k * a) / (k * b) = a / b
  field_simp

theorem M_full_scale_ax : DynScaleAx M_full := by
  constructor
  · intro u
    refine Subtype.ext ?_
    show ((1 : ℝ) * u.1.1, (1 : ℝ) * u.1.2) = (u.1.1, u.1.2)
    simp
  · intro u a b
    refine Subtype.ext ?_
    show (b.1 * (a.1 * u.1.1), b.1 * (a.1 * u.1.2)) = (a.1 * b.1 * u.1.1, a.1 * b.1 * u.1.2)
    simp [mul_assoc, mul_comm, mul_left_comm]

theorem M_full_D2c : DynD2c M_full := by
  rintro ⟨⟨a, b⟩, ⟨ha, hb⟩⟩ ⟨⟨c, d⟩, ⟨hc, hd⟩⟩ hp
  have hp' : (a / b, b / a) = (c / d, d / c) := hp
  have hab : a / b = c / d := congrArg Prod.fst hp
  have h2 : a * d = c * b := by
    have h3 : a / b * (b * d) = c / d * (b * d) := by rw [hab]
    calc a * d = a / b * (b * d) := by field_simp
      _ = c / d * (b * d) := h3
      _ = c * b := by field_simp
  have hcomp1 : (c / a) * a = c := by
    rw [div_mul_eq_mul_div, div_eq_iff ha.ne']
  have hcomp2 : (c / a) * b = d := by
    rw [div_mul_eq_mul_div, div_eq_iff ha.ne']
    rw [← h2]
    ring
  refine ⟨⟨c / a, div_pos hc ha⟩, Subtype.ext ?_⟩
  show ((c / a) * a, (c / a) * b) = (c, d)
  rw [hcomp1, hcomp2]

/-- M_full 全量: D0 ∧ D1 ∧ D2a ∧ D2c ∧ scale_ax。 -/
theorem M_full_spec : DynD0 M_full ∧ DynD1 M_full ∧ DynD2a M_full ∧ DynD2c M_full ∧
    DynScaleAx M_full :=
  ⟨M_full_D0, M_full_D1, M_full_D2a, M_full_D2c, M_full_scale_ax⟩

/-! ## M_noDual: D0 ∧ ¬D1 —— 自治单成分 (分离模型) -/

def M_noDual : DynModel where
  Carrier := ℝ
  gen := fun s _ _ _ => -s
  dispersive := fun _ => 1
  convective := fun _ => 0
  scale := fun s _ => s
  observe := id
  observePair := fun s => (s, s)

/-- M_noDual 的载体定义上为 ℝ (供公理检验中把假设 rw 成纯 ℝ 语法) -/
theorem M_noDual_Carrier : M_noDual.Carrier = ℝ := rfl

theorem M_noDual_spec : DynD0 M_noDual ∧ ¬ DynD1 M_noDual := by
  refine ⟨?_, ?_⟩
  · show ∃ f : ℝ → ℝ, ∀ (s t i o : ℝ), -s = f s
    exact ⟨(fun s => -s), fun _ _ _ _ => rfl⟩
  · show ((∀ _u : ℝ, ((1 : ℝ) ≠ 0 ↔ (0 : ℝ) ≠ 0)) → False)
    intro h
    exact absurd (h (0 : ℝ)) (by simp)

/-! ## M_noAuto: D1 ∧ ¬D0 —— 双向但含时 (分离模型) -/

def M_noAuto : DynModel where
  Carrier := ℝ
  gen := fun s t _ _ => s + t
  dispersive := id
  convective := fun s => -s
  scale := fun s _ => s
  observe := id
  observePair := fun s => (s, s)

/-- M_noAuto 的载体定义上为 ℝ -/
theorem M_noAuto_Carrier : M_noAuto.Carrier = ℝ := rfl

theorem M_noAuto_spec : DynD1 M_noAuto ∧ ¬ DynD0 M_noAuto := by
  constructor
  · show ∀ s : ℝ, s ≠ 0 ↔ -s ≠ 0
    intro s
    show s ≠ 0 ↔ -s ≠ 0
    constructor
    · intro h h0
      exact h (by simpa using congrArg Neg.neg h0)
    · intro h h0
      exact h (by simpa using congrArg Neg.neg h0)
  · show (∃ f : ℝ → ℝ, ∀ (s t i o : ℝ), s + t = f s) → False
    rintro ⟨f, hf⟩
    have h1 : (0 : ℝ) + 0 = f (0 : ℝ) := hf 0 0 0 0
    have h2 : (0 : ℝ) + 1 = f (0 : ℝ) := hf (0 : ℝ) (1 : ℝ) 0 0
    linarith

/-! ## M_dualNoScale: D0 ∧ D1 ∧ ¬D2a —— 标度敏感观测 (分离模型) -/

def M_dualNoScale : DynModel where
  Carrier := ℝ
  gen := fun s _ _ _ => -s
  dispersive := id
  convective := fun s => -s
  scale := fun s k => k.1 * s
  observe := id
  observePair := fun s => (s, s)

/-- M_dualNoScale 的载体定义上为 ℝ -/
theorem M_dualNoScale_Carrier : M_dualNoScale.Carrier = ℝ := rfl

theorem M_dualNoScale_spec :
    DynD0 M_dualNoScale ∧ DynD1 M_dualNoScale ∧ ¬ DynD2a M_dualNoScale := by
  refine ⟨?_, ?_, ?_⟩
  · show ∃ f : ℝ → ℝ, ∀ (s t i o : ℝ), -s = f s
    exact ⟨(fun s => -s), fun _ _ _ _ => rfl⟩
  · show ∀ s : ℝ, s ≠ 0 ↔ -s ≠ 0
    intro s
    show s ≠ 0 ↔ -s ≠ 0
    constructor
    · intro h h0
      exact h (by simpa using congrArg Neg.neg h0)
    · intro h h0
      exact h (by simpa using congrArg Neg.neg h0)
  · show (∀ (u : ℝ) (k : PosReal), k.1 * u = u) → False
    intro h2u
    have h2 : (2 : ℝ) * (1 : ℝ) = (1 : ℝ) := h2u (1 : ℝ) posTwo
    norm_num at h2

/-! ## D2b 的实例域说明: D2b 定理作用于满足 D2a 的域 (M_full), 分离模型
    M_dualNoScale 违反 D2a, 不构成 D2b 实例域——不冒充。 -/

end DynamicLayer
