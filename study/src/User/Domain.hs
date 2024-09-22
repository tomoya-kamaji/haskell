module User.Domain (User (..), UserId, UserName) where

type UserId = Int

type UserName = String

data User = User
  { userId :: UserId,
    userName :: UserName
  }
  deriving (Show, Eq)