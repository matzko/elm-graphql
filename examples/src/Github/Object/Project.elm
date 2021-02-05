-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Project exposing (..)

import Github.Enum.ProjectState
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


{-| The project's description body.
-}
body : SelectionSet (Maybe String) Github.Object.Project
body =
    Object.selectionForField "(Maybe String)" "body" [] (Decode.string |> Decode.nullable)


{-| The projects description body rendered to HTML.
-}
bodyHTML : SelectionSet Github.ScalarCodecs.Html Github.Object.Project
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : SelectionSet Bool Github.Object.Project
closed =
    Object.selectionForField "Bool" "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.Project
closedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


type alias ColumnsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| List of columns in the project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
columns :
    (ColumnsOptionalArguments -> ColumnsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.ProjectColumnConnection
    -> SelectionSet decodesTo Github.Object.Project
columns fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "columns" optionalArgs object____ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Project
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who originally created the project.
-}
creator :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.Project
creator object____ =
    Object.selectionForCompositeField "creator" [] object____ (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.Project
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.Project
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The project's name.
-}
name : SelectionSet String Github.Object.Project
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The project's number.
-}
number : SelectionSet Int Github.Object.Project
number =
    Object.selectionForField "Int" "number" [] Decode.int


{-| The project's owner. Currently limited to repositories and organizations.
-}
owner :
    SelectionSet decodesTo Github.Interface.ProjectOwner
    -> SelectionSet decodesTo Github.Object.Project
owner object____ =
    Object.selectionForCompositeField "owner" [] object____ identity


type alias PendingCardsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| List of pending cards in this project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
pendingCards :
    (PendingCardsOptionalArguments -> PendingCardsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.ProjectCardConnection
    -> SelectionSet decodesTo Github.Object.Project
pendingCards fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pendingCards" optionalArgs object____ identity


{-| The HTTP path for this project
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Project
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Whether the project is open or closed.
-}
state : SelectionSet Github.Enum.ProjectState.ProjectState Github.Object.Project
state =
    Object.selectionForField "Enum.ProjectState.ProjectState" "state" [] Github.Enum.ProjectState.decoder


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Project
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this project
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.Project
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool Github.Object.Project
viewerCanUpdate =
    Object.selectionForField "Bool" "viewerCanUpdate" [] Decode.bool
