-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.DeleteProjectPayload exposing (..)

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

{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) GithubNoFormat.Object.DeleteProjectPayload
clientMutationId =
      Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The repository or organization the project was removed from.
-}
owner : SelectionSet decodesTo GithubNoFormat.Interface.ProjectOwner
 -> SelectionSet decodesTo GithubNoFormat.Object.DeleteProjectPayload
owner object____ =
      Object.selectionForCompositeField "owner" [] (object____) (identity)
