module Pages.Top exposing (Model, Msg, Params, page)

import Element exposing (..)
import Element.Font as Font
import Spa.Document exposing (Document)
import Spa.Generated.Route as Route
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)


type alias Params =
    ()


type alias Model =
    Url Params


type alias Msg =
    Never


page : Page Params Model Msg
page =
    Page.static
        { view = view
        }



-- VIEW


view : Url Params -> Document Msg
view { params } =
    { title = "4321wed"
    , body = [ row [  width fill ]
                [ image [ alignLeft, height (fill |> maximum 500)] {src = "images/save_the_date.png", description = "Save the Date" }
                , image [ padding 15, alignRight, height (fill |> maximum 500)] {src = "images/couple_s.jpg", description = "Couple Photo" }
                ]
    ]

    }
