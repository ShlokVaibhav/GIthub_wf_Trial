import PhysLean.Meta.Informal.Basic
import PhysLean.Meta.Informal.SemiFormal
import PhysLean.QuantumMechanics.FiniteTarget.HilbertSpace

import Mathlib.Algebra.GeomSum
set_option trace.Meta.Tactic.simp.rewrite true
set_option diagnostics true
namespace CondensedMatter

/-- The physical parameters making up the tight binding chain. -/
structure TightBindingChain where
  /-- The number of sites, or atoms, in the chain -/
  N : Nat
  [N_ne_zero : NeZero N]
  /-- The distance between the sites -/
  a : ℝ
  a_pos : 0 < a
  /-- The energy associate with a particle sitting at a fixed site. -/
  E0 : ℝ
  /-- The hopping parameter. -/
  t : ℝ

namespace TightBindingChain
open InnerProductSpace
variable (T : TightBindingChain)



  lemma h11 (): ↑T.N *(Real.pi * (↑k2 - ↑k1))  = ↑T.N *(Real.pi * (↑m * ↑T.N))  := by
    sorry

  have h8: (Real.pi *(↑k2 - ↑k1)) = (Real.pi * ( ↑m * ↑T.N)) := by
    simp only [mul_left_cancel] at h11
