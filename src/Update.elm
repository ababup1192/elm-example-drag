module Update exposing (..)

import Models exposing (Model, Drag, getPosition)
import Messages exposing (..)

-- Update
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( updateHelp msg model, Cmd.none )

updateHelp : Msg -> Model -> Model
updateHelp msg ({position, drag} as model) =
    case msg of
        DragStart xy ->
            Model position (Just (Drag xy xy))

        DragAt xy ->
            Model position (Maybe.map (\{start} -> Drag start xy) drag)
        
        DragEnd _ ->
            Model (getPosition model) Nothing

