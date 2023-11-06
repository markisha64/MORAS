
Theorem b:
  forall (x y z: bool),
    andb (andb (negb (andb (andb (negb x) y) z)) (negb (andb (andb x y) (negb z)))) (andb (andb x (negb y)) z)
      = andb (andb x (negb y)) z.
Proof.
  intros x y z.
  destruct x, y, z; simpl; reflexivity.
Qed.