
Theorem a:
  forall (x y z: bool), 
    orb (orb (andb x (negb y)) (andb (negb x) (negb y))) (andb (negb x) y) = negb (andb x y).
Proof.
  intros x y z.
  destruct x, y; simpl; reflexivity.
Qed.
  
