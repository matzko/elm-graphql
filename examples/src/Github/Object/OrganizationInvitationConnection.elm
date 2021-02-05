-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.OrganizationInvitationConnection exposing (..)

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


{-| A list of edges.
-}
edges :
    SelectionSet decodesTo Github.Object.OrganizationInvitationEdge
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Github.Object.OrganizationInvitationConnection
edges object____ =
    Object.selectionForCompositeField "edges" [] object____ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes :
    SelectionSet decodesTo Github.Object.OrganizationInvitation
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Github.Object.OrganizationInvitationConnection
nodes object____ =
    Object.selectionForCompositeField "nodes" [] object____ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo :
    SelectionSet decodesTo Github.Object.PageInfo
    -> SelectionSet decodesTo Github.Object.OrganizationInvitationConnection
pageInfo object____ =
    Object.selectionForCompositeField "pageInfo" [] object____ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int Github.Object.OrganizationInvitationConnection
totalCount =
    Object.selectionForField "Int" "totalCount" [] Decode.int
