import Test.HUnit

safetail
  = \ xs ->
    case xs of
      [] -> []
      (_ : xs) -> xs


testOnEmpty    = TestCase (assertEqual "ok on empty" ([] :: [Int]) (safetail []))
testOnNonEmpty = TestCase (assertEqual "ok on non empty" [2,3] (safetail [1,2,3]))
tests = TestList [TestLabel "on empty" testOnEmpty, TestLabel "on non empty" testOnNonEmpty]
