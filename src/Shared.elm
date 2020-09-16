module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    , view
    )

import Browser.Navigation exposing (Key)
import Element exposing (..)
import Element.Font as Font
import Element.Background as Background
import Color.OneDark as OneDark
import Spa.Document exposing (Document)
import Spa.Generated.Route as Route
import Url exposing (Url)



-- INIT


type alias Flags =
    ()


type alias Model =
    { url : Url
    , key : Key
    }


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model url key
    , Cmd.none
    )



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view :
    { page : Document msg, toMsg : Msg -> msg }
    -> Model
    -> Document msg
view { page, toMsg } model =
    { title = page.title
    , body =
        [ column [ Background.color OneDark.blue, padding 20, height fill, width fill ]
            [ row [  width fill, spacing 20 ]
                [ image [ alignLeft, height (fill |> maximum 500)] {src = "images/octopus1.png", description = "Wedding Rings" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Top, label = text "Home" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Travel, label = text "Travel" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Things, label = text "Things To Do" } 
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Schedule, label = text "Schedule" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Photos, label = text "Photos" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.Registry, label = text "Registry" }
                , link [ centerX, Font.color (rgb 0 0.25 0.5), Font.underline ] { url = Route.toString Route.RSVP, label = text "RSVP" }
                ]
            , column [ Background.color OneDark.lightYellow, height fill, width fill, centerX ] page.body
            ]
        ]
    }
