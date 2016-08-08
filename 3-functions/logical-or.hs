import Prelude hiding ((||))
import Test.HUnit

b || c
  | b == c = b
  | otherwise = True


testTT = TestCase (assertEqual "" True (True || True))
testTF = TestCase (assertEqual "" True (True || False))
testFT = TestCase (assertEqual "" True (False || True))
testFF = TestCase (assertEqual "" False (False || False))
tests  = TestList [
    TestLabel "on TT" testTT,
    TestLabel "on TF" testTF,
    TestLabel "on FT" testFT,
    TestLabel "on FF" testFF
  ]
