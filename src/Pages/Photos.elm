module Pages.Photos exposing (Params, Model, Msg, page)

import Spa.Document exposing (Document)
import Spa.Page as Page exposing (Page)
import Spa.Url as Url exposing (Url)


page : Page Params Model Msg
page =
    Page.sandbox
        { init = init
        , update = update
        , view = view
        }



-- INIT


type alias Params =
    ()


type alias Model =
    {}


init : Url Params -> Model
init { params } =
    {}



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> Model
update msg model =
    case msg of
        ReplaceMe ->
            {}



-- VIEW


view : Model -> Document Msg
view model =
    { title = "Photos"
    , body = []
    }