module Component.Container exposing (app)

import Component.Theme as Theme
import Element exposing (Attribute, Element, fill, height, layout, width)
import Element.Background as Background
import Element.Font as Font
import Html exposing (Html)
import Element exposing (padding)


app : List (Attribute msg) -> Element msg -> Html msg
app attr child =
    layout
        ([ width fill
         , height fill
         , Background.color Theme.background
         , Font.color Theme.onBackground
         , padding <|  Theme.spacing 2
         ]
            ++ attr
        )
    <|
        child
