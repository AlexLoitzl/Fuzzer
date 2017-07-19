module Convention
  ( Signature(..)
  ) where

import Data.ByteString.Builder
import Test.QuickCheck


-- |Datatype for function arguments: integers of different sizes and a pointer type
data ArgumentType
  = I8
  | I16
  | I32
  | I64
  | Pointer
  deriving (Eq, Enum, Bounded, Ord, Show)

-- |C syntax for data type
cType :: ArgumentType -> Builder
cType t = case t of
  I8      -> string8 "unsigned char"
  I16     -> string8 "unsigned short"
  I32     -> string8 "unsigned int"
  I64     -> string8 "unsigned long long"
  Pointer -> string8 "void *"

-- |Size of data types in bytes
byteSize :: ArgumentType -> Int
byteSize t = case t of
  I8      -> 1
  I16     -> 2
  I32     -> 4
  I64     -> 8
  Pointer -> 4


-- |A function signature is represented by a list of its argument types
data Signature = Signature [ArgumentType] deriving (Eq, Ord, Show)


-- |Random signatures for QuickCheck
instance Arbitrary Signature where
  arbitrary = Signature <$> sized arguments
    where
      arguments :: Int -> Gen [ArgumentType]
      arguments n = vectorOf n $ elements [minBound..maxBound]
