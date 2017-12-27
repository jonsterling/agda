{-# LANGUAGE TemplateHaskell #-}

module Internal.Utils.Monoid ( tests ) where

import Agda.Utils.Monoid

import Internal.Helpers

------------------------------------------------------------------------
-- Instances

instance Arbitrary MaxNat where
  arbitrary = do
    NonNegative x <- arbitrary
    return x

------------------------------------------------------------------------------
-- Properties

-- | 'MaxNat' is a monoid.
prop_monoid_MaxNat :: Property3 MaxNat
prop_monoid_MaxNat = isMonoid

------------------------------------------------------------------------
-- Hack to make $quickCheckAll work under ghc-7.8
return []

-- All tests
tests :: IO Bool
tests = do
  putStrLn "Internal.Utils.Monoid"
  $quickCheckAll