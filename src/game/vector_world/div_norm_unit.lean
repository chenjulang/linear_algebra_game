import vectors.tuple -- hide
import data.real.basic
import game.vector_world.norm_zero_iff --hide

namespace tuple -- hide

/- 
# Vector world

## Level 16: `Div norm unit` 

-/

/- Lemma
||(1 / ||x|| ) *x || = 1

Here we'll be proving that dividing a vector x by it's magnitude yields a unit vector. (Provided that it is not the zero vector.)

In class you are likely to prove this using the formula for the magnitude of a vector. Here we'll be doing it differently. 

To understand this it may be useful to return to the Euclidean idea of a vector: a geometric object with 
magnitude and direction. Dividing a vector by it's own magnitude gives a vector that points in the same direction 
but has unit magnitude. (Imagine a vector of magnitude a. Cut it into a pieces. Every one of those pieces now has magnitude one, and points along the original direction.)

Strategy:




-/

lemma div_norm_unit: ∀ {n : ℕ} (x: ℝ ^ n)
, x ≠ 0 → ‖ ‖x‖⁻¹ • x‖ = 1 :=
begin 
  intros n x xneq,
  rw ← scalar_norm (‖x‖⁻¹) x,
  have j : 0 ≤ (‖x‖⁻¹ : ℝ),
  { simp [has_norm.norm, tuple.norm, norm_sq],
    exact real.sqrt_nonneg _, },
  rw abs_eq_self.mpr j,
  simp [has_norm.norm, tuple.norm, norm_sq],
  apply inv_mul_cancel,
  rw real.sqrt_ne_zero,
  { intro x_dot_0,
    apply xneq,
    rw ← dot_pos_def_2,
    exact x_dot_0, },
  { exact dot_pos_def_1 x, },
end

end tuple -- hide

