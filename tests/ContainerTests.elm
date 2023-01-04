module ContainerTests exposing (..)

import Component.Theme
import Expect
import Test exposing (..)


spacingTests : List ( Int, Int )
spacingTests =
    [ ( 0, 0 )
    , ( 1, 4 )
    , ( 2, 8 )
    , ( 3, 12 )
    , ( 4, 16 )
    , ( 5, 20 )
    , ( 6, 24 )
    , ( 44, 176 )
    , ( 80, 320 )
    ]


spacingDescription : ( Int, Int ) -> String
spacingDescription val =
    "Value '"
        ++ String.fromInt (Tuple.first val)
        ++ "'"
        ++ " should become '"
        ++ String.fromInt (Tuple.second val)
        ++ "'"


suite : Test
suite =
    describe "spacing"
        (spacingTests
            |> List.map
                (\t ->
                    test (spacingDescription t) <|
                        \_ ->
                            Expect.equal
                                (Component.Theme.spacing (Tuple.first t))
                                (Tuple.second t)
                )
        )
