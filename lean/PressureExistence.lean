import Mathlib.Analysis.PDE.Laplace
import "Basic"
import "T64"

/-!
# Pressure Field Existence and Smoothness on T⁶⁴
-/

variable {M : Type _} [T64 M]

theorem laplace_invertible_on_T64 :
    ∃ (L : (M → ℝ) → (M → ℝ)), IsInvertible L := by
  -- Hodge theory on compact manifolds guarantees invertibility
  -- of Laplacian on zero-mean functions
  apply laplace_invertible_compact

theorem existence_and_smoothness_of_pressure (u : VelocityField M) (hu : IsSmooth u.u) :
    ∃ (p : M → ℝ), IsSmooth p ∧ laplace p = -divergence (fun x => (u.u x · ∇) (u.u x)) := by
  have h_laplace := laplace_invertible_on_T64
  
  -- Source term is smooth because u is smooth
  have h_source_smooth : IsSmooth (fun x => -divergence (fun y => (u.u y · ∇) (u.u y)) x) := by
    apply smooth_composition hu
  
  -- Existence from invertibility
  obtain ⟨p, hp_smooth, hp_eq⟩ := h_laplace.surj _ h_source_smooth
  
  exact ⟨p, hp_smooth, hp_eq⟩

/-- Pressure is unique up to constant (on compact manifold) -/
theorem pressure_unique_up_to_constant (p1 p2 : M → ℝ)
  (h1 : laplace p1 = source) (h2 : laplace p2 = source) :
    ∃ c : ℝ, p1 = p2 + c := by
  apply laplace_kernel_constant

end YXT.NavierStokes
