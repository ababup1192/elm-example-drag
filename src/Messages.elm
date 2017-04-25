module Messages exposing (..)

import Mouse exposing (Position)

-- Message
type Msg
    = DragStart Position 
    | DragAt Position
    | DragEnd Position

