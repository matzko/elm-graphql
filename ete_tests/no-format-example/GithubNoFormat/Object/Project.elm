-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.Project exposing (..)

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
import GithubNoFormat.Enum.ProjectState
{-| The project's description body.
-}
body : SelectionSet (Maybe String) GithubNoFormat.Object.Project
body =
      Object.selectionForField "(Maybe String)" "body" [] (Decode.string |> Decode.nullable)


{-| The projects description body rendered to HTML.
-}
bodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.Project
bodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : SelectionSet Bool GithubNoFormat.Object.Project
closed =
      Object.selectionForField "Bool" "closed" [] (Decode.bool)


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.Project
closedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


type alias ColumnsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| List of columns in the project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
columns : (ColumnsOptionalArguments -> ColumnsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ProjectColumnConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.Project
columns fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "columns" optionalArgs (object____) (identity)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.Project
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who originally created the project.
-}
creator : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Project
creator object____ =
      Object.selectionForCompositeField "creator" [] (object____) (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.Project
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.Project
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The project's name.
-}
name : SelectionSet String GithubNoFormat.Object.Project
name =
      Object.selectionForField "String" "name" [] (Decode.string)


{-| The project's number.
-}
number : SelectionSet Int GithubNoFormat.Object.Project
number =
      Object.selectionForField "Int" "number" [] (Decode.int)


{-| The project's owner. Currently limited to repositories and organizations.
-}
owner : SelectionSet decodesTo GithubNoFormat.Interface.ProjectOwner
 -> SelectionSet decodesTo GithubNoFormat.Object.Project
owner object____ =
      Object.selectionForCompositeField "owner" [] (object____) (identity)


type alias PendingCardsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| List of pending cards in this project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
pendingCards : (PendingCardsOptionalArguments -> PendingCardsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ProjectCardConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.Project
pendingCards fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "pendingCards" optionalArgs (object____) (identity)


{-| The HTTP path for this project
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Project
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Whether the project is open or closed.
-}
state : SelectionSet GithubNoFormat.Enum.ProjectState.ProjectState GithubNoFormat.Object.Project
state =
      Object.selectionForField "Enum.ProjectState.ProjectState" "state" [] (GithubNoFormat.Enum.ProjectState.decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.Project
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this project
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Project
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool GithubNoFormat.Object.Project
viewerCanUpdate =
      Object.selectionForField "Bool" "viewerCanUpdate" [] (Decode.bool)
