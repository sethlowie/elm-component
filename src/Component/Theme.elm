module Component.Theme exposing (background, onBackground, spacing)

import Element exposing (Color, rgba255)


background : Color
background =
    rgba255 13 45 89 1


onBackground : Color
onBackground =
    rgba255 240 240 240 1


spacing : Int -> Int
spacing mp =
    round <| (toFloat mp) * 16.0 * 0.25


