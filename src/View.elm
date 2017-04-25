module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (on)
import Json.Decode as Decode
import Mouse exposing (Position)

import Messages exposing (..)
import Models exposing (Model, getPosition)


-- View

(=>) : a -> b -> (a, b)
(=>) = (,)

view : Model -> Html Msg
view model =
    let
      realPosition = getPosition model
    in
      div
        [ onMouseDown
        , class "drag-target"
        , style 
          [           
             "left" => px realPosition.x,
             "top"  => px realPosition.y
          ]
        ]
        [ text "Drag Me!" 
        ]

px : Int -> String
px number =
  toString number ++ "px"

onMouseDown : Attribute Msg
onMouseDown =
  on "mousedown" (Decode.map DragStart Mouse.position)

