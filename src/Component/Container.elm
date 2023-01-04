module Component.Container exposing (app)

import Component.Theme as Theme
import Element exposing (Attribute, Element, fill, height, layout, width)
import Element.Background as Background
import Element.Font as Font
import Html exposing (Html)


app : List (Attribute msg) -> Element msg -> Html msg
app attr child =
    layout
        ([ width fill
         , height fill
         , Background.color Theme.background
         , Font.color Theme.onBackground
         ]
            ++ attr
        )
    <|
        child
