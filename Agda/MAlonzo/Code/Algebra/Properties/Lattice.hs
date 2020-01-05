{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Structures

name68 = "Algebra.Properties.Lattice._.IsBand"
d68 a0 a1 a2 a3 = ()
name90 = "Algebra.Properties.Lattice._.IsLattice"
d90 a0 a1 a2 a3 a4 = ()
name92 = "Algebra.Properties.Lattice._.IsMagma"
d92 a0 a1 a2 a3 = ()
name102 = "Algebra.Properties.Lattice._.IsSemigroup"
d102 a0 a1 a2 a3 = ()
name104 = "Algebra.Properties.Lattice._.IsSemilattice"
d104 a0 a1 a2 a3 = ()
name1354 = "Algebra.Properties.Lattice._.Idempotent"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1354 = erased
name1418 = "Algebra.Properties.Lattice.∧-idem"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
d1418 v0 v1 v2 v3 = du1418 v2 v3
du1418 :: MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
du1418 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v2
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
               (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1)))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v1)
                     (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1))
                        v1
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (MAlonzo.Code.Algebra.Structures.d720 (coe v3)) v1 v1))))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1)))
                     (coe v1) (coe v1)
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d30
                        (MAlonzo.Code.Algebra.Structures.d720 (coe v4)) v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Algebra.Structures.d706
                                      (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v4 v1))))))))
name1422 = "Algebra.Properties.Lattice.∧-isMagma"
d1422 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T78
d1422 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d718
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1424 = "Algebra.Properties.Lattice.∧-isSemigroup"
d1424 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T114
d1424 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C773
         (coe (d1422 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d716
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1426 = "Algebra.Properties.Lattice.∧-isBand"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T150
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T150
du1426 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1025
         (coe (d1424 (coe v0))) (coe (du1418 (coe v0))))
name1428 = "Algebra.Properties.Lattice.∧-isSemilattice"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T230
d1428 v0 v1 v2 = du1428 v2
du1428 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T230
du1428 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1617
         (coe (du1426 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1430 = "Algebra.Properties.Lattice.∧-semilattice"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1430 v0 v1 v2 = du1430 v2
du1430 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1430 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C1051 v3 v4) erased
      erased (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0))
      (du1428 (coe v0))
name1434
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1434 v0 v1 v2 = du1434 v2
du1434 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1434 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (du1430 (coe v0))))
name1436
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1436 v0 v1 v2 = du1436 v2
du1436 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1436 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (du1430 (coe v0))))
name1438
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1438 v0 v1 v2 = du1438 v2
du1438 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1438 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (du1430 (coe v0))))
name1440
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1440 v0 v1 v2 = du1440 v2
du1440 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1440 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (du1430 (coe v0))))
name1442 = "Algebra.Properties.Lattice.∨-idem"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
d1442 v0 v1 v2 v3 = du1442 v2 v3
du1442 :: MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
du1442 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v2
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
               (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du746
                     (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v1)
                     (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1) v1
                        (du1418 (coe v0) (coe v1)))))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1004 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v1))
                     (coe v1) (coe v1)
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d28
                        (MAlonzo.Code.Algebra.Structures.d720 (coe v4)) v1 v1)
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Algebra.Structures.d706
                                      (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v4 v1))))))))
name1446 = "Algebra.Properties.Lattice.∨-isMagma"
d1446 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T78
d1446 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d712
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1448 = "Algebra.Properties.Lattice.∨-isSemigroup"
d1448 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T114
d1448 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C773
         (coe (d1446 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d710
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1450 = "Algebra.Properties.Lattice.∨-isBand"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T150
d1450 v0 v1 v2 = du1450 v2
du1450 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T150
du1450 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1025
         (coe (d1448 (coe v0))) (coe (du1442 (coe v0))))
name1452 = "Algebra.Properties.Lattice.∨-isSemilattice"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T230
d1452 v0 v1 v2 = du1452 v2
du1452 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T230
du1452 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1617
         (coe (du1450 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))
name1454 = "Algebra.Properties.Lattice.∨-semilattice"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1454 v0 v1 v2 = du1454 v2
du1454 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1454 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C1051 v3 v4) erased
      erased (MAlonzo.Code.Algebra.Bundles.d1004 (coe v0))
      (du1452 (coe v0))
name1458
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1458 v0 v1 v2 = du1458 v2
du1458 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1458 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (du1454 (coe v0))))
name1460
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1460 v0 v1 v2 = du1460 v2
du1460 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1460 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (du1454 (coe v0))))
name1462
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1462 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (du1454 (coe v0))))
name1464
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1464 v0 v1 v2 = du1464 v2
du1464 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1464 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (du1454 (coe v0))))
name1466 = "Algebra.Properties.Lattice.∧-∨-isLattice"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T684
d1466 v0 v1 v2 = du1466 v2
du1466 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Structures.T684
du1466 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C5979
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d716
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d718
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d710
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d712
               (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)))))
         (coe
            (MAlonzo.Code.Data.Product.du252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d720
                     (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))))))
name1468 = "Algebra.Properties.Lattice.∧-∨-lattice"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T984
d1468 v0 v1 v2 = du1468 v2
du1468 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Algebra.Bundles.T984
du1468 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.Bundles.C3887 v3 v4 v5)
      erased erased (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1004 (coe v0)) (du1466 (coe v0))
name1472 = "Algebra.Properties.Lattice._.poset"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d1472 v0 v1 v2 = du1472 v2
du1472 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du1472 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du138
         (coe (du1430 (coe v0))))
name1476 = "Algebra.Properties.Lattice._._≤_"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny -> ()
d1476 = erased
name1480 = "Algebra.Properties.Lattice.∨-∧-isOrderTheoreticLattice"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1480 v0 v1 v2 = du1480 v2
du1480 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1480 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C7599
         (coe
            (MAlonzo.Code.Relation.Binary.Bundles.d208
               (coe
                  (MAlonzo.Code.Algebra.Properties.Semilattice.du138
                     (coe (du1430 (coe v0)))))))
         (coe (du1524 (coe v0)))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1846
               (coe (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0)))
               (coe (du1428 (coe v0))))))
name1492 = "Algebra.Properties.Lattice._._._≤_"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny -> ()
d1492 = erased
name1504 = "Algebra.Properties.Lattice._.sound"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1504 v0 v1 v2 v3 v4 v5 = du1504 v2 v3 v4 v5
du1504 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1504 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d706
         (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
      (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2) v1
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v1)
                     (coe v2) (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1)
                     (coe v3)))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2))
                     (coe v1)
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du738
                           (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d708
                              (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v1)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1006 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2))
                           (coe v1) (coe v1)
                           (let v7 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d30
                              (MAlonzo.Code.Algebra.Structures.d720 (coe v7)) v1 v2)
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d706
                                            (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v1))))))))))
name1516 = "Algebra.Properties.Lattice._.complete"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1516 v0 v1 v2 v3 v4 v5 = du1516 v2 v3 v4 v5
du1516 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d706
         (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
      (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1) v2
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2))
               (coe v2)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du746
                     (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v2)
                     (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
                     (coe v3)))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1))
                     (coe v2)
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du746
                           (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))) (coe v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d714
                              (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v1 v2)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (coe (MAlonzo.Code.Algebra.Bundles.du1050 (coe v0))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v1))
                           (coe v2) (coe v2)
                           (let v7 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d720 (coe v7)) v2 v1)
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d706
                                            (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v2))))))))))
name1524 = "Algebra.Properties.Lattice._.supremum"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1524 v0 v1 v2 v3 v4 = du1524 v2 v3 v4
du1524 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1524 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (du1504
               (coe v0) (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2)
               (let v3
                      = MAlonzo.Code.Algebra.Properties.Semilattice.du154
                          (coe (du1454 (coe v0))) in
                coe
                  (MAlonzo.Code.Agda.Builtin.Sigma.d28
                     (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2)))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.C32
               (coe
                  (du1504
                     (coe v0) (coe v2) (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2)
                     (let v3
                            = MAlonzo.Code.Algebra.Properties.Semilattice.du154
                                (coe (du1454 (coe v0))) in
                      coe
                        (MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (coe
                              (MAlonzo.Code.Agda.Builtin.Sigma.d30
                                 (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2)))))))
               (coe
                  (\ v3 v4 v5 ->
                     du1504
                       (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v1 v2) (coe v3)
                       (let v6
                              = MAlonzo.Code.Algebra.Properties.Semilattice.du154
                                  (coe (du1454 (coe v0))) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d30
                          (MAlonzo.Code.Agda.Builtin.Sigma.d30
                             (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v6 v1 v2))
                          v3 (du1516 (coe v0) (coe v1) (coe v3) (coe v4))
                          (du1516 (coe v0) (coe v2) (coe v3) (coe v5))))))))
name1536 = "Algebra.Properties.Lattice.∨-∧-orderTheoreticLattice"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1536 v0 v1 v2 = du1536 v2
du1536 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1536 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Lattice.C8689 v4 v5 v6)
      erased erased erased (MAlonzo.Code.Algebra.Bundles.d1004 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0)) (du1480 (coe v0))
name1544 = "Algebra.Properties.Lattice.replace-equality"
d1544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T984
d1544 v0 v1 v2 v3 v4 = du1544 v2 v4
du1544 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T984
du1544 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 -> MAlonzo.Code.Algebra.Bundles.C3887 v4 v5 v6)
      erased erased (MAlonzo.Code.Algebra.Bundles.d1004 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1006 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C5979
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.C97
               (coe
                  (\ v2 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v2))
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d34
                          (MAlonzo.Code.Algebra.Structures.d706
                             (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
                          v2)))
               (coe
                  (\ v2 v3 v4 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v3 v2))
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d36
                          (MAlonzo.Code.Algebra.Structures.d706
                             (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
                          v2 v3
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4))))
               (coe
                  (\ v2 v3 v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v4))
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d38
                          (MAlonzo.Code.Algebra.Structures.d706
                             (coe (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0))))
                          v2 v3 v4
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v5)
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v3 v4)) v6))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d708
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1004 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d710
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d712
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d714
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1006 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d716
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d718
                    (MAlonzo.Code.Algebra.Bundles.d1008 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.C32
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d1004 v0 v2
                                (coe MAlonzo.Code.Algebra.Bundles.d1006 v0 v2 v3))
                             v2))
                       (let v4 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d28
                          (MAlonzo.Code.Algebra.Structures.d720 (coe v4)) v2 v3)))
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d1006 v0 v2
                                (coe MAlonzo.Code.Algebra.Bundles.d1004 v0 v2 v3))
                             v2))
                       (let v4 = MAlonzo.Code.Algebra.Bundles.d1008 (coe v0) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d30
                          (MAlonzo.Code.Algebra.Structures.d720 (coe v4)) v2 v3))))))
name1606 = "Algebra.Properties.Lattice.∧-idempotent"
d1606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
d1606 v0 v1 v2 = du1606 v2
du1606 :: MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
du1606 v0 = coe (du1418 (coe v0))
name1608 = "Algebra.Properties.Lattice.∨-idempotent"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 = du1608 v2
du1608 :: MAlonzo.Code.Algebra.Bundles.T984 -> AgdaAny -> AgdaAny
du1608 v0 = coe (du1442 (coe v0))
name1610 = "Algebra.Properties.Lattice.isOrderTheoreticLattice"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1610 v0 v1 v2 = du1610 v2
du1610 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1610 v0 = coe (du1480 (coe v0))
name1612 = "Algebra.Properties.Lattice.orderTheoreticLattice"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1612 v0 v1 v2 = du1612 v2
du1612 ::
  MAlonzo.Code.Algebra.Bundles.T984 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1612 v0 = coe (du1536 (coe v0))
