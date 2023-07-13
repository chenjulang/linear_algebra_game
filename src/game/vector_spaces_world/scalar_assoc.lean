import vectors.tuple -- hide
import data.real.basic --hide
import vectors.tuple.tactics --hide
import game.vector_spaces_world.scalar_dist_1 --hide
namespace tuple -- hide


/- 

# Vector world

## Level 7: `scalar_assoc` 

-/

/- Lemma

-/

lemma scalar_assoc : ∀ {n : ℕ} (c d : ℝ) (u : ℝ ^ n), c • d • u = (c * d) • u :=
begin 
  intros n c d,
  induction n with n hn,
  { intro v,
    cases v,
    simp, },
  { intro v,
    cases v,
    simp,
    split,
    { linarith, },
    { rw hn, }, },
end

end tuple -- hide
