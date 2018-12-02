-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TextMatch exposing (fragment, highlights, property)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The specific text fragment within the property matched on.
-}
fragment : SelectionSet String Github.Object.TextMatch
fragment =
    Object.fieldDecoder "fragment" [] Decode.string


{-| Highlights within the matched fragment.
-}
highlights : SelectionSet decodesTo Github.Object.TextMatchHighlight -> SelectionSet (List (Maybe decodesTo)) Github.Object.TextMatch
highlights object_ =
    Object.selectionForCompositeField "highlights" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| The property matched on.
-}
property : SelectionSet String Github.Object.TextMatch
property =
    Object.fieldDecoder "property" [] Decode.string
