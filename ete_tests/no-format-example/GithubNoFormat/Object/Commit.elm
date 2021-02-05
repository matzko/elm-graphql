-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.Commit exposing (..)

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
import GithubNoFormat.Enum.SubscriptionState
{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String GithubNoFormat.Object.Commit
abbreviatedOid =
      Object.selectionForField "String" "abbreviatedOid" [] (Decode.string)


{-| The number of additions in this commit.
-}
additions : SelectionSet Int GithubNoFormat.Object.Commit
additions =
      Object.selectionForField "Int" "additions" [] (Decode.int)


{-| Authorship details of the commit.
-}
author : SelectionSet decodesTo GithubNoFormat.Object.GitActor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Commit
author object____ =
      Object.selectionForCompositeField "author" [] (object____) (identity >> Decode.nullable)


{-| Check if the committer and the author match.
-}
authoredByCommitter : SelectionSet Bool GithubNoFormat.Object.Commit
authoredByCommitter =
      Object.selectionForField "Bool" "authoredByCommitter" [] (Decode.bool)


{-| The datetime when this commit was authored.
-}
authoredDate : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.Commit
authoredDate =
      Object.selectionForField "ScalarCodecs.DateTime" "authoredDate" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias BlameRequiredArguments = { path : String }

{-| Fetches `git blame` information.

  - path - The file whose Git blame information you want.

-}
blame : BlameRequiredArguments
 -> SelectionSet decodesTo GithubNoFormat.Object.Blame
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
blame requiredArgs object____ =
      Object.selectionForCompositeField "blame" [ Argument.required "path" requiredArgs.path (Encode.string) ] (object____) (identity)


{-| The number of changed files in this commit.
-}
changedFiles : SelectionSet Int GithubNoFormat.Object.Commit
changedFiles =
      Object.selectionForField "Int" "changedFiles" [] (Decode.int)


type alias CommentsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| Comments made on the commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitCommentConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
comments fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "comments" optionalArgs (object____) (identity)


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
commitResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "commitResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
commitUrl =
      Object.selectionForField "ScalarCodecs.Uri" "commitUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The datetime when this commit was committed.
-}
committedDate : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.Commit
committedDate =
      Object.selectionForField "ScalarCodecs.DateTime" "committedDate" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if commited via GitHub web UI.
-}
committedViaWeb : SelectionSet Bool GithubNoFormat.Object.Commit
committedViaWeb =
      Object.selectionForField "Bool" "committedViaWeb" [] (Decode.bool)


{-| Committership details of the commit.
-}
committer : SelectionSet decodesTo GithubNoFormat.Object.GitActor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Commit
committer object____ =
      Object.selectionForCompositeField "committer" [] (object____) (identity >> Decode.nullable)


{-| The number of deletions in this commit.
-}
deletions : SelectionSet Int GithubNoFormat.Object.Commit
deletions =
      Object.selectionForField "Int" "deletions" [] (Decode.int)


type alias HistoryOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String
 , path : OptionalArgument String
 , author : OptionalArgument GithubNoFormat.InputObject.CommitAuthor
 , since : OptionalArgument GithubNoFormat.ScalarCodecs.GitTimestamp
 , until : OptionalArgument GithubNoFormat.ScalarCodecs.GitTimestamp }

{-| The linear commit history starting from (and including) this commit, in the same order as `git log`.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - path - If non-null, filters history to only show commits touching files under this path.
  - author - If non-null, filters history to only show commits with matching authorship.
  - since - Allows specifying a beginning time or date for fetching commits.
  - until - Allows specifying an ending time or date for fetching commits.

-}
history : (HistoryOptionalArguments -> HistoryOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitHistoryConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
history fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, path = Absent, author = Absent, since = Absent, until = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "path" filledInOptionals.path (Encode.string), Argument.optional "author" filledInOptionals.author (GithubNoFormat.InputObject.encodeCommitAuthor), Argument.optional "since" filledInOptionals.since ((GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapEncoder .codecGitTimestamp)), Argument.optional "until" filledInOptionals.until ((GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapEncoder .codecGitTimestamp)) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "history" optionalArgs (object____) (identity)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.Commit
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The Git commit message
-}
message : SelectionSet String GithubNoFormat.Object.Commit
message =
      Object.selectionForField "String" "message" [] (Decode.string)


{-| The Git commit message body
-}
messageBody : SelectionSet String GithubNoFormat.Object.Commit
messageBody =
      Object.selectionForField "String" "messageBody" [] (Decode.string)


{-| The commit message body rendered to HTML.
-}
messageBodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.Commit
messageBodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "messageBodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The Git commit message headline
-}
messageHeadline : SelectionSet String GithubNoFormat.Object.Commit
messageHeadline =
      Object.selectionForField "String" "messageHeadline" [] (Decode.string)


{-| The commit message headline rendered to HTML.
-}
messageHeadlineHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.Commit
messageHeadlineHTML =
      Object.selectionForField "ScalarCodecs.Html" "messageHeadlineHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The Git object ID
-}
oid : SelectionSet GithubNoFormat.ScalarCodecs.GitObjectID GithubNoFormat.Object.Commit
oid =
      Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


type alias ParentsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| The parents of a commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
parents : (ParentsOptionalArguments -> ParentsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
parents fillInOptionals object____ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "parents" optionalArgs (object____) (identity)


{-| The datetime when this commit was pushed.
-}
pushedDate : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.Commit
pushedDate =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "pushedDate" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The Repository this commit belongs to
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
repository object____ =
      Object.selectionForCompositeField "repository" [] (object____) (identity)


{-| The HTTP path for this commit
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Commit signing information, if present.
-}
signature : SelectionSet decodesTo GithubNoFormat.Interface.GitSignature
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Commit
signature object____ =
      Object.selectionForCompositeField "signature" [] (object____) (identity >> Decode.nullable)


{-| Status information for this commit
-}
status : SelectionSet decodesTo GithubNoFormat.Object.Status
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Commit
status object____ =
      Object.selectionForCompositeField "status" [] (object____) (identity >> Decode.nullable)


{-| Returns a URL to download a tarball archive for a repository.                      Note: For private repositories, these links are temporary and expire after five minutes.
-}
tarballUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
tarballUrl =
      Object.selectionForField "ScalarCodecs.Uri" "tarballUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Commit's root Tree
-}
tree : SelectionSet decodesTo GithubNoFormat.Object.Tree
 -> SelectionSet decodesTo GithubNoFormat.Object.Commit
tree object____ =
      Object.selectionForCompositeField "tree" [] (object____) (identity)


{-| The HTTP path for the tree of this commit
-}
treeResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
treeResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "treeResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for the tree of this commit
-}
treeUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
treeUrl =
      Object.selectionForField "ScalarCodecs.Uri" "treeUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this commit
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool GithubNoFormat.Object.Commit
viewerCanSubscribe =
      Object.selectionForField "Bool" "viewerCanSubscribe" [] (Decode.bool)


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet GithubNoFormat.Enum.SubscriptionState.SubscriptionState GithubNoFormat.Object.Commit
viewerSubscription =
      Object.selectionForField "Enum.SubscriptionState.SubscriptionState" "viewerSubscription" [] (GithubNoFormat.Enum.SubscriptionState.decoder)


{-| Returns a URL to download a zipball archive for a repository.                      Note: For private repositories, these links are temporary and expire after five minutes.
-}
zipballUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Commit
zipballUrl =
      Object.selectionForField "ScalarCodecs.Uri" "zipballUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
