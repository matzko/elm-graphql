-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ExternalIdentity exposing (..)

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

{-| The GUID for this identity
-}
guid : SelectionSet String GithubNoFormat.Object.ExternalIdentity
guid =
      Object.selectionForField "String" "guid" [] (Decode.string)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ExternalIdentity
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Organization invitation for this SCIM-provisioned external identity
-}
organizationInvitation : SelectionSet decodesTo GithubNoFormat.Object.OrganizationInvitation
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ExternalIdentity
organizationInvitation object____ =
      Object.selectionForCompositeField "organizationInvitation" [] (object____) (identity >> Decode.nullable)


{-| SAML Identity attributes
-}
samlIdentity : SelectionSet decodesTo GithubNoFormat.Object.ExternalIdentitySamlAttributes
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ExternalIdentity
samlIdentity object____ =
      Object.selectionForCompositeField "samlIdentity" [] (object____) (identity >> Decode.nullable)


{-| SCIM Identity attributes
-}
scimIdentity : SelectionSet decodesTo GithubNoFormat.Object.ExternalIdentityScimAttributes
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ExternalIdentity
scimIdentity object____ =
      Object.selectionForCompositeField "scimIdentity" [] (object____) (identity >> Decode.nullable)


{-| User linked to this external identity
-}
user : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ExternalIdentity
user object____ =
      Object.selectionForCompositeField "user" [] (object____) (identity >> Decode.nullable)
