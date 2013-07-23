IMPORT EXTERN "_prelude"


PUBLIC FUN round : Real -> Int
DEF EXTERN round = {| Math.round |}

PUBLIC FUN fromInt : Int -> Real
DEF EXTERN fromInt = {| function(i){return i;} |}

-------------------------------------
-- Arithmetics on Reals

PUBLIC FUN + : Real -> Real -> Real
DEF EXTERN + = {| _add |}

PUBLIC FUN - : Real -> Real -> Real
DEF EXTERN - = {| _sub |}

PUBLIC FUN * : Real -> Real -> Real
DEF EXTERN * = {| _mul |}

PUBLIC FUN / : Real -> Real -> Real
DEF EXTERN / = {| _div |}

PUBLIC FUN pow : Real -> Real -> Real
DEF EXTERN pow = {| function(a){return function(b){return Math.pow(a,b)} |}

PUBLIC FUN < : Real -> Real -> Bool
DEF EXTERN < = {| _lesser |}

PUBLIC FUN <= : Real -> Real -> Bool
DEF EXTERN <= = {| _leq |}

PUBLIC FUN eps : Real
DEF eps = 1.0e-16

PUBLIC FUN == : Real -> Real -> Bool
DEF a == b = abs (a-b) < eps

PUBLIC FUN /= : Real -> Real -> Bool
DEF x /= y = not (x == y)

PUBLIC FUN >= : Real -> Real -> Bool
DEF EXTERN >= = {| _geq |}

PUBLIC FUN > : Real -> Real -> Bool
DEF EXTERN > = {| _greater |}

PUBLIC FUN iNaN : Real
DEF EXTERN iNaN = {| NaN |}
-- iNaN /= iNaN !!

PUBLIC FUN isNaN : Real -> Bool
DEF EXTERN isNaN = {| isNaN |}

PUBLIC FUN abs : Real -> Real
DEF EXTERN abs = {| Math.abs |}

PUBLIC FUN sin : Real -> Real
DEF EXTERN sin = {| Math.sin |}

PUBLIC FUN cos : Real -> Real
DEF EXTERN cos = {| Math.cos |}

PUBLIC FUN tan : Real -> Real
DEF EXTERN tan = {| Math.tan |}

PUBLIC FUN sqrt : Real -> Real
DEF EXTERN sqrt = {| Math.sqrt |}

PUBLIC FUN log : Real -> Real
DEF EXTERN log = {| Math.log |}