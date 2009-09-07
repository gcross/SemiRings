{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module NLP.SemiRing.Counting where
import NLP.SemiRing

newtype Counting = Counting Integer
    deriving (Eq, Show, Num, Ord) 

instance Multiplicative Counting where
    one = 1
    times = (*) 

instance Monoid Counting where 
    mempty = 0
    mappend = (+)

instance SemiRing Counting 
instance WeightedSemiRing Counting 
