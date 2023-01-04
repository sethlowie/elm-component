module Main exposing (main)

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Component.Container as Container
import Element exposing (..)
import Html exposing (Html)
import Url exposing (Url)



-- MODEL


type alias Model =
    {}


initialModel : Model
initialModel =
    {}



-- MSG


type Msg
    = OnUrlChange Url
    | OnUrlRequest UrlRequest



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- FLAGS


type alias Flags =
    {}



-- INIT


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( initialModel, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Component"
    , body = [ shell ]
    }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = OnUrlChange
        , onUrlRequest = OnUrlRequest
        }



-- SHELL


shell : Html Msg
shell =
   Container.app [] <| 
        el [] <|
            text "Hello!!!"
