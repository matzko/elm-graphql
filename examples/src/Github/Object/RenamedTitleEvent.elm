-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RenamedTitleEvent exposing (actor, createdAt, currentTitle, id, previousTitle, subject)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.RenamedTitleEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.RenamedTitleEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the current title of the issue or pull request.
-}
currentTitle : SelectionSet String Github.Object.RenamedTitleEvent
currentTitle =
    Object.fieldDecoder "currentTitle" [] Decode.string


id : SelectionSet Github.Scalar.Id Github.Object.RenamedTitleEvent
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the previous title of the issue or pull request.
-}
previousTitle : SelectionSet String Github.Object.RenamedTitleEvent
previousTitle =
    Object.fieldDecoder "previousTitle" [] Decode.string


{-| Subject that was renamed.
-}
subject : SelectionSet decodesTo Github.Union.RenamedTitleSubject -> SelectionSet decodesTo Github.Object.RenamedTitleEvent
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity
