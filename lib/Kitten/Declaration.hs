{-|
Module      : Kitten.Declaration
Description : Declarations of intrinsics and traits
Copyright   : (c) Jon Purdy, 2016
License     : MIT
Maintainer  : evincarofautumn@gmail.com
Stability   : experimental
Portability : GHC
-}

module Kitten.Declaration
  ( Category(..)
  , Declaration(..)
  ) where

import Kitten.Name (Qualified)
import Kitten.Origin (Origin)
import Kitten.Signature (Signature)

-- | The type of declaration.

data Category
  -- | @intrinsic@, a built-in/external function.
  = Intrinsic
  -- | @trait@, a generic function.
  | Trait
  deriving (Eq, Show)

data Declaration = Declaration
  { category :: !Category
  , name :: !Qualified
  , origin :: !Origin
  , signature :: !Signature
  } deriving (Show)
