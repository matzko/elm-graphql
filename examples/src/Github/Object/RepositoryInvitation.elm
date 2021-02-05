-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryInvitation exposing (..)

import Github.Enum.RepositoryPermission
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


id : SelectionSet Github.ScalarCodecs.Id Github.Object.RepositoryInvitation
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The user who received the invitation.
-}
invitee :
    SelectionSet decodesTo Github.Object.User
    -> SelectionSet decodesTo Github.Object.RepositoryInvitation
invitee object____ =
    Object.selectionForCompositeField "invitee" [] object____ identity


{-| The user who created the invitation.
-}
inviter :
    SelectionSet decodesTo Github.Object.User
    -> SelectionSet decodesTo Github.Object.RepositoryInvitation
inviter object____ =
    Object.selectionForCompositeField "inviter" [] object____ identity


{-| The permission granted on this repository by this invitation.
-}
permission : SelectionSet Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryInvitation
permission =
    Object.selectionForField "Enum.RepositoryPermission.RepositoryPermission" "permission" [] Github.Enum.RepositoryPermission.decoder


{-| The Repository the user is invited to.
-}
repository :
    SelectionSet decodesTo Github.Object.RepositoryInvitationRepository
    -> SelectionSet (Maybe decodesTo) Github.Object.RepositoryInvitation
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ (identity >> Decode.nullable)
