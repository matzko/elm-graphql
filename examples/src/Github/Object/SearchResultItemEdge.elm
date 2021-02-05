-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.SearchResultItemEdge exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String Github.Object.SearchResultItemEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node :
    SelectionSet decodesTo Github.Union.SearchResultItem
    -> SelectionSet (Maybe decodesTo) Github.Object.SearchResultItemEdge
node object____ =
    Object.selectionForCompositeField "node" [] object____ (identity >> Decode.nullable)


{-| Text matches on the result found.
-}
textMatches :
    SelectionSet decodesTo Github.Object.TextMatch
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Github.Object.SearchResultItemEdge
textMatches object____ =
    Object.selectionForCompositeField "textMatches" [] object____ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)
