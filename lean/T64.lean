import Mathlib.Topology.Compactness.Compact
import Mathlib.MeasureTheory.Measure.Lebesgue

/-!
# T⁶⁴ Compact Torus in YuanXian Theory
-/

class T64 (M : Type _) [TopologicalSpace M] where
  compactSpace : CompactSpace M
  volume_finite : MeasureTheory.volume (Set.univ : Set M) < ∞ := by apply CompactSpace.volume_lt_top
