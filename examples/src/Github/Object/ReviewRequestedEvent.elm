-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReviewRequestedEvent exposing (actor, createdAt, id, pullRequest, requestedReviewer, subject)

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
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.ReviewRequestedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : SelectionSet Github.Scalar.Id Github.Object.ReviewRequestedEvent
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.ReviewRequestedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the reviewer whose review was requested.
-}
requestedReviewer : SelectionSet decodesTo Github.Union.RequestedReviewer -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestedEvent
requestedReviewer object_ =
    Object.selectionForCompositeField "requestedReviewer" [] object_ (identity >> Decode.nullable)


{-| Identifies the user whose review was requested.
-}
subject : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestedEvent
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ (identity >> Decode.nullable)
