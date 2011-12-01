STM
===

inc :: TVar Int -> STM ()
inc var = do
  val <- readTVar var
  writeTVar var (val + 1)

tvarExample = do
  var <- newTVarIO 0
  result <- atomically $ do inc var
                            readTVar var
  putStrLn $ show result


