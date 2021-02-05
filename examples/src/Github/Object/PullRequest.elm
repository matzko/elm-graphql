-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.PullRequest exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.Enum.LockReason
import Github.Enum.MergeableState
import Github.Enum.PullRequestReviewState
import Github.Enum.PullRequestState
import Github.Enum.ReactionContent
import Github.Enum.SubscriptionState
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


{-| Reason that the conversation was locked.
-}
activeLockReason : SelectionSet (Maybe Github.Enum.LockReason.LockReason) Github.Object.PullRequest
activeLockReason =
    Object.selectionForField "(Maybe Enum.LockReason.LockReason)" "activeLockReason" [] (Github.Enum.LockReason.decoder |> Decode.nullable)


{-| The number of additions in this pull request.
-}
additions : SelectionSet Int Github.Object.PullRequest
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


type alias AssigneesOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of Users assigned to this object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
assignees :
    (AssigneesOptionalArguments -> AssigneesOptionalArguments)
    -> SelectionSet decodesTo Github.Object.UserConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
assignees fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "assignees" optionalArgs object____ identity


{-| The actor who authored the comment.
-}
author :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
author object____ =
    Object.selectionForCompositeField "author" [] object____ (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.PullRequest
authorAssociation =
    Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the base Ref associated with the pull request.
-}
baseRef :
    SelectionSet decodesTo Github.Object.Ref
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
baseRef object____ =
    Object.selectionForCompositeField "baseRef" [] object____ (identity >> Decode.nullable)


{-| Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
-}
baseRefName : SelectionSet String Github.Object.PullRequest
baseRefName =
    Object.selectionForField "String" "baseRefName" [] Decode.string


{-| Identifies the oid of the base ref associated with the pull request, even if the ref has been deleted.
-}
baseRefOid : SelectionSet Github.ScalarCodecs.GitObjectID Github.Object.PullRequest
baseRefOid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "baseRefOid" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| Identifies the body of the pull request.
-}
body : SelectionSet String Github.Object.PullRequest
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| Identifies the body of the pull request rendered to HTML.
-}
bodyHTML : SelectionSet Github.ScalarCodecs.Html Github.Object.PullRequest
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the body of the pull request rendered to text.
-}
bodyText : SelectionSet String Github.Object.PullRequest
bodyText =
    Object.selectionForField "String" "bodyText" [] Decode.string


{-| The number of changed files in this pull request.
-}
changedFiles : SelectionSet Int Github.Object.PullRequest
changedFiles =
    Object.selectionForField "Int" "changedFiles" [] Decode.int


{-| `true` if the pull request is closed
-}
closed : SelectionSet Bool Github.Object.PullRequest
closed =
    Object.selectionForField "Bool" "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.PullRequest
closedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of comments associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments :
    (CommentsOptionalArguments -> CommentsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.IssueCommentConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
comments fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object____ identity


type alias CommitsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of commits present in this pull request's head branch not present in the base branch.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
commits :
    (CommitsOptionalArguments -> CommitsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.PullRequestCommitConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
commits fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "commits" optionalArgs object____ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.PullRequest
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool Github.Object.PullRequest
createdViaEmail =
    Object.selectionForField "Bool" "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.PullRequest
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The number of deletions in this pull request.
-}
deletions : SelectionSet Int Github.Object.PullRequest
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


{-| The actor who edited this pull request's body.
-}
editor :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
editor object____ =
    Object.selectionForCompositeField "editor" [] object____ (identity >> Decode.nullable)


{-| Identifies the head Ref associated with the pull request.
-}
headRef :
    SelectionSet decodesTo Github.Object.Ref
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
headRef object____ =
    Object.selectionForCompositeField "headRef" [] object____ (identity >> Decode.nullable)


{-| Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
-}
headRefName : SelectionSet String Github.Object.PullRequest
headRefName =
    Object.selectionForField "String" "headRefName" [] Decode.string


{-| Identifies the oid of the head ref associated with the pull request, even if the ref has been deleted.
-}
headRefOid : SelectionSet Github.ScalarCodecs.GitObjectID Github.Object.PullRequest
headRefOid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "headRefOid" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The repository associated with this pull request's head Ref.
-}
headRepository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
headRepository object____ =
    Object.selectionForCompositeField "headRepository" [] object____ (identity >> Decode.nullable)


{-| The owner of the repository associated with this pull request's head Ref.
-}
headRepositoryOwner :
    SelectionSet decodesTo Github.Interface.RepositoryOwner
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
headRepositoryOwner object____ =
    Object.selectionForCompositeField "headRepositoryOwner" [] object____ (identity >> Decode.nullable)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.PullRequest
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The head and base repositories are different.
-}
isCrossRepository : SelectionSet Bool Github.Object.PullRequest
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


type alias LabelsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of labels associated with the object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
labels :
    (LabelsOptionalArguments -> LabelsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.LabelConnection
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
labels fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "labels" optionalArgs object____ (identity >> Decode.nullable)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.PullRequest
lastEditedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| `true` if the pull request is locked
-}
locked : SelectionSet Bool Github.Object.PullRequest
locked =
    Object.selectionForField "Bool" "locked" [] Decode.bool


{-| The commit that was created when this pull request was merged.
-}
mergeCommit :
    SelectionSet decodesTo Github.Object.Commit
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
mergeCommit object____ =
    Object.selectionForCompositeField "mergeCommit" [] object____ (identity >> Decode.nullable)


{-| Whether or not the pull request can be merged based on the existence of merge conflicts.
-}
mergeable : SelectionSet Github.Enum.MergeableState.MergeableState Github.Object.PullRequest
mergeable =
    Object.selectionForField "Enum.MergeableState.MergeableState" "mergeable" [] Github.Enum.MergeableState.decoder


{-| Whether or not the pull request was merged.
-}
merged : SelectionSet Bool Github.Object.PullRequest
merged =
    Object.selectionForField "Bool" "merged" [] Decode.bool


{-| The date and time that the pull request was merged.
-}
mergedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.PullRequest
mergedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "mergedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the milestone associated with the pull request.
-}
milestone :
    SelectionSet decodesTo Github.Object.Milestone
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
milestone object____ =
    Object.selectionForCompositeField "milestone" [] object____ (identity >> Decode.nullable)


{-| Identifies the pull request number.
-}
number : SelectionSet Int Github.Object.PullRequest
number =
    Object.selectionForField "Int" "number" [] Decode.int


type alias ParticipantsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of Users that are participating in the Pull Request conversation.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
participants :
    (ParticipantsOptionalArguments -> ParticipantsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.UserConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
participants fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "participants" optionalArgs object____ identity


{-| The commit that GitHub automatically generated to test if this pull request could be merged. This field will not return a value if the pull request is merged, or if the test merge commit is still being generated. See the `mergeable` field for more details on the mergeability of the pull request.
-}
potentialMergeCommit :
    SelectionSet decodesTo Github.Object.Commit
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
potentialMergeCommit object____ =
    Object.selectionForCompositeField "potentialMergeCommit" [] object____ (identity >> Decode.nullable)


type alias ProjectCardsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| List of project cards associated with this pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
projectCards :
    (ProjectCardsOptionalArguments -> ProjectCardsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.ProjectCardConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
projectCards fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "projectCards" optionalArgs object____ identity


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.PullRequest
publishedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups :
    SelectionSet decodesTo Github.Object.ReactionGroup
    -> SelectionSet (Maybe (List decodesTo)) Github.Object.PullRequest
reactionGroups object____ =
    Object.selectionForCompositeField "reactionGroups" [] object____ (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , content : OptionalArgument Github.Enum.ReactionContent.ReactionContent
    , orderBy : OptionalArgument Github.InputObject.ReactionOrder
    }


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions :
    (ReactionsOptionalArguments -> ReactionsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.ReactionConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
reactions fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reactions" optionalArgs object____ identity


{-| The repository associated with this node.
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.PullRequest
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ identity


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.PullRequest
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP path for reverting this pull request.
-}
revertResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.PullRequest
revertResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "revertResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for reverting this pull request.
-}
revertUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.PullRequest
revertUrl =
    Object.selectionForField "ScalarCodecs.Uri" "revertUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias ReviewRequestsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of review requests associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
reviewRequests :
    (ReviewRequestsOptionalArguments -> ReviewRequestsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.ReviewRequestConnection
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
reviewRequests fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviewRequests" optionalArgs object____ (identity >> Decode.nullable)


type alias ReviewsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , states : OptionalArgument (List Github.Enum.PullRequestReviewState.PullRequestReviewState)
    , author : OptionalArgument String
    }


{-| A list of reviews associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - states - A list of states to filter the reviews.
  - author - Filter by author of the review.

-}
reviews :
    (ReviewsOptionalArguments -> ReviewsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.PullRequestReviewConnection
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
reviews fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, author = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.PullRequestReviewState.toString |> Encode.list), Argument.optional "author" filledInOptionals.author Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviews" optionalArgs object____ (identity >> Decode.nullable)


{-| Identifies the state of the pull request.
-}
state : SelectionSet Github.Enum.PullRequestState.PullRequestState Github.Object.PullRequest
state =
    Object.selectionForField "Enum.PullRequestState.PullRequestState" "state" [] Github.Enum.PullRequestState.decoder


{-| A list of reviewer suggestions based on commit history and past review comments.
-}
suggestedReviewers :
    SelectionSet decodesTo Github.Object.SuggestedReviewer
    -> SelectionSet (List (Maybe decodesTo)) Github.Object.PullRequest
suggestedReviewers object____ =
    Object.selectionForCompositeField "suggestedReviewers" [] object____ (identity >> Decode.nullable >> Decode.list)


type alias TimelineOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , since : OptionalArgument Github.ScalarCodecs.DateTime
    }


{-| A list of events, comments, commits, etc. associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - since - Allows filtering timeline events by a `since` timestamp.

-}
timeline :
    (TimelineOptionalArguments -> TimelineOptionalArguments)
    -> SelectionSet decodesTo Github.Object.PullRequestTimelineConnection
    -> SelectionSet decodesTo Github.Object.PullRequest
timeline fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, since = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "since" filledInOptionals.since (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapEncoder .codecDateTime) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "timeline" optionalArgs object____ identity


{-| Identifies the pull request title.
-}
title : SelectionSet String Github.Object.PullRequest
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.PullRequest
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this pull request.
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.PullRequest
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias UserContentEditsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits :
    (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.UserContentEditConnection
    -> SelectionSet (Maybe decodesTo) Github.Object.PullRequest
userContentEdits fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "userContentEdits" optionalArgs object____ (identity >> Decode.nullable)


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool Github.Object.PullRequest
viewerCanReact =
    Object.selectionForField "Bool" "viewerCanReact" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Github.Object.PullRequest
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool Github.Object.PullRequest
viewerCanUpdate =
    Object.selectionForField "Bool" "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.PullRequest
viewerCannotUpdateReasons =
    Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool Github.Object.PullRequest
viewerDidAuthor =
    Object.selectionForField "Bool" "viewerDidAuthor" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet Github.Enum.SubscriptionState.SubscriptionState Github.Object.PullRequest
viewerSubscription =
    Object.selectionForField "Enum.SubscriptionState.SubscriptionState" "viewerSubscription" [] Github.Enum.SubscriptionState.decoder
