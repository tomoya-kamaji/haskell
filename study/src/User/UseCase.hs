module User.UseCase (UserUseCase (..), createUser) where

import User.Domain (User (..), UserId, UserName)
import User.Repository (UserRepository (..))

newtype UserUseCase repo = UserUseCase
  { repo :: repo
  }

-- | 'createUser' 関数は、新しいユーザーを作成し、リポジトリに追加します。
--   この関数は、ユーザーIDとユーザー名を受け取り、新しいユーザーを作成します。
--
-- ==== __引数__
--
-- * 'UserUseCase repo' - ユースケースのインスタンス
-- * 'UserId' - 新しいユーザーのID
-- * 'UserName' - 新しいユーザーの名前
--
-- ==== __戻り値__
--
-- この関数は 'IO ()' を返し、ユーザーが作成されたことを標準出力に表示します。
createUser :: UserRepository repo => UserUseCase repo -> UserId -> UserName -> IO ()
createUser useCase uid uname = do
  let user = User {userId = uid, userName = uname}
  addUser (repo useCase) user
  putStrLn $ "User created: " ++ show user