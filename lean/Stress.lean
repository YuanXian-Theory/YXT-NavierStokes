import "T64"
import "SRM"

/-!
# Topological Stress Module
-/

namespace YXT.Stress

/-- Topological Stress -/
noncomputable def Stress (Γ : ClosedChain) : ℝ :=
  (‖Curv(Γ) - Curv0‖ / ‖Curv0‖) * integral_PSR Γ

theorem stress_growth_control (u : VelocityField) :
  deriv (Stress (Γ u t)) ≤ C * (1 + Stress (Γ u t))^(16/15) := by
  apply stress_growth_inequality

theorem stress_bounded (u : VelocityField) :
  ∀ t, Stress (Γ u t) < Stress_critical := by
  apply gronwall_from_stress_control

end YXT.Stress
