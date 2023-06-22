import vectors.tuple -- hide
import data.real.basic --hide
import vectors.tuple.tactics --hide
import game.vector_spaces_world.level1 --hide
namespace tuple -- hide


/- 

# Vector world

## Level 2: `vector_assoc` 

-/

/- Lemma

-/

lemma vec_comm : ∀ {n : ℕ } (u v : tuple n), u + v = v + u :=
begin 
   intro n,
   induction n with n hn,
   {intros u v,
   casesm* (tuple 0),
   refl,},
   {intros u v,
   casesm* (tuple n.succ),
   simp,
   split,
   {linarith,},
   {rw hn,},}
end

end tuple -- hide