-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.PullRequestCommit exposing (..)

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

{-| The Git commit object
-}
commit : SelectionSet decodesTo GithubNoFormat.Object.Commit
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequestCommit
commit object____ =
      Object.selectionForCompositeField "commit" [] (object____) (identity)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.PullRequestCommit
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The pull request this commit belongs to
-}
pullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequestCommit
pullRequest object____ =
      Object.selectionForCompositeField "pullRequest" [] (object____) (identity)


{-| The HTTP path for this pull request commit
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequestCommit
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this pull request commit
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequestCommit
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
