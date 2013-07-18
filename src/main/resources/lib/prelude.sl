-- Copyright (c) 2010, Andreas Buechele, Florian Lorenzen, Judith Rohloff
-- All rights reserved.

-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are
-- met:

--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials provided
--     with the distribution.
--   * Neither the name of the TU Berlin nor the names of its
--     contributors may be used to endorse or promote products derived
--     from this software without specific prior written permission.

-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
-- LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
-- DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-- THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-- This is a stub for the predefined types and methods of SL, so that we
-- can create the prelude by a combination of compilation and hand coding.

IMPORT EXTERN "_prelude" 

-- Base Types

DATA Int = ExternalInt
DATA Real = ExternalReal
DATA Char = ExternalChar
DATA Void = ExternalVoid
DATA String = ExternalString
DATA DOM a = ExternalDOM a

-- Booleans

PUBLIC DATA Bool = True | False

PUBLIC FUN not : Bool -> Bool
DEF not True = False
DEF not False = True

-- String functions

PUBLIC FUN ++ : (String -> String -> String)
DEF EXTERN ++ = {| _adds |}

-- Monad functions

PUBLIC FUN &= : (DOM a) -> (a -> (DOM b)) -> (DOM b)
DEF EXTERN &= = {| _bind |}

PUBLIC FUN yield : a -> (DOM a)
DEF EXTERN yield =  {| _yield |}

PUBLIC FUN & : (DOM a) -> (DOM b) -> (DOM b)
DEF EXTERN & = {| _bindnr |}

-- Arithmetics on Integers

PUBLIC FUN + : Int -> Int -> Int
DEF EXTERN + = {| _add |}

PUBLIC FUN - : Int -> Int -> Int
DEF EXTERN - = {| _sub |}

PUBLIC FUN * : Int -> Int -> Int
DEF EXTERN * = {| _mul |}

PUBLIC FUN / : Int -> Int -> Int
DEF EXTERN / = {| _div |}

PUBLIC FUN < : Int -> Int -> Bool
DEF EXTERN < = {| _lesser |}

PUBLIC FUN <= : Int -> Int -> Bool
DEF EXTERN <= = {| _leq |}

PUBLIC FUN == : Int -> Int -> Bool
DEF EXTERN == = {| _eq |}

PUBLIC FUN /= : Int -> Int -> Bool
DEF x /= y = not (x == y)

PUBLIC FUN >= : Int -> Int -> Bool
DEF EXTERN >= = {| _geq |}

PUBLIC FUN > : Int -> Int -> Bool
DEF EXTERN > = {| _greater |}


-- iNaN /= iNaN !!
PUBLIC FUN iNaN : Int
DEF EXTERN iNaN = {| NaN |}

PUBLIC FUN isNaN : Int -> Bool
DEF EXTERN isNaN = {| isNaN |}

-------------------------------------

PUBLIC FUN id : a -> a
DEF id a = a

PUBLIC FUN intToStr : Int -> String
DEF EXTERN intToStr = {| function(i){return i.toString();} |}

PUBLIC FUN strToInt : String -> Int
DEF EXTERN strToInt = {| parseInt |}