module Bingo where

import Html exposing (..)
import String exposing (toUpper, repeat, trimRight, reverse)

title : String -> Int -> Html
title message times =
  message ++ " "
    |> toUpper
    |> repeat times
    |> trimRight
    |> text


reverseText : String -> Html
reverseText text' =
  ("R" ++ reverse text')
    |> text

main : Html
main =
  reverseText "Ogg"
