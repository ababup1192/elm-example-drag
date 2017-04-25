module Tests exposing (..)

-- Test modules
import Test exposing (..)
import TestExp exposing (..)

-- Test target modules

all : Test
all =
    describe "All Test"
    [
      "Passed" =>
        True === True
    ]
