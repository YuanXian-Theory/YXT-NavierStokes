import "T64"

structure VelocityField (M : Type _) [T64 M] where
  u : M → (Fin 3 → ℝ)
  div_free : ∀ x, divergence u x = 0

noncomputable def kineticEnergy {M : Type _} [T64 M] (u : VelocityField M) : ℝ :=
  ∫ x, (‖u.u x‖² / 2) ∂volume
