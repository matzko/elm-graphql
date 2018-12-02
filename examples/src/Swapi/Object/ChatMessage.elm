-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Object.ChatMessage exposing (character, phrase)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Phrase
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


character : SelectionSet decodesTo Swapi.Interface.Character -> SelectionSet (Maybe decodesTo) Swapi.Object.ChatMessage
character object_ =
    Object.selectionForCompositeField "character" [] object_ (identity >> Decode.nullable)


phrase : SelectionSet Swapi.Enum.Phrase.Phrase Swapi.Object.ChatMessage
phrase =
    Object.fieldDecoder "phrase" [] Swapi.Enum.Phrase.decoder
