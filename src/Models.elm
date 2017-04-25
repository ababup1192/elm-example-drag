module Models exposing (..)

import Mouse exposing (Position)

-- Model
type alias Model =
    { position: Position
    , drag: Maybe Drag
    }

type alias Drag =
    { start : Position
    , current : Position
    }

initialModel : Model
initialModel = Model (Position 200 200) Nothing 

getPosition : Model -> Position
getPosition {position, drag} =
  case drag of
    Nothing ->
      position

    Just {start,current} ->
      Position
        (position.x + current.x - start.x)
        (position.y + current.y - start.y)