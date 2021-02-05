-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.RepositoryCollaboratorEdge exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import GithubNoFormat.Enum.RepositoryPermission
cursor : SelectionSet String GithubNoFormat.Object.RepositoryCollaboratorEdge
cursor =
      Object.selectionForField "String" "cursor" [] (Decode.string)


node : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet decodesTo GithubNoFormat.Object.RepositoryCollaboratorEdge
node object____ =
      Object.selectionForCompositeField "node" [] (object____) (identity)


{-| The permission the user has on the repository.
-}
permission : SelectionSet GithubNoFormat.Enum.RepositoryPermission.RepositoryPermission GithubNoFormat.Object.RepositoryCollaboratorEdge
permission =
      Object.selectionForField "Enum.RepositoryPermission.RepositoryPermission" "permission" [] (GithubNoFormat.Enum.RepositoryPermission.decoder)
