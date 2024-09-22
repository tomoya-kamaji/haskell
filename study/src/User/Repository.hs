module User.Repository (UserRepository(..)) where

import User.Domain (User, UserId)

class UserRepository repo where
  addUser :: repo -> User -> IO ()
  getUser :: repo -> UserId -> IO (Maybe User)