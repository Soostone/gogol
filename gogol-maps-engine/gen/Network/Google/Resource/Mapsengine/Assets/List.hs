{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Assets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all assets readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineAssetsList@.
module Mapsengine.Assets.List
    (
    -- * REST Resource
      AssetsListAPI

    -- * Creating a Request
    , assetsList
    , AssetsList

    -- * Request Lenses
    , alCreatedAfter
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alCreatorEmail
    , alRole
    , alKey
    , alBbox
    , alModifiedAfter
    , alModifiedBefore
    , alPageToken
    , alProjectId
    , alType
    , alOauthToken
    , alSearch
    , alMaxResults
    , alTags
    , alFields
    , alCreatedBefore
    , alAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineAssetsList@ which the
-- 'AssetsList' request conforms to.
type AssetsListAPI =
     "assets" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" Text :>
             QueryParam "bbox" Text :>
               QueryParam "modifiedAfter" UTCTime :>
                 QueryParam "modifiedBefore" UTCTime :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "type" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" UTCTime :>
                                 Get '[JSON] AssetsListResponse

-- | Return all assets readable by the current user.
--
-- /See:/ 'assetsList' smart constructor.
data AssetsList = AssetsList
    { _alCreatedAfter   :: !(Maybe UTCTime)
    , _alQuotaUser      :: !(Maybe Text)
    , _alPrettyPrint    :: !Bool
    , _alUserIp         :: !(Maybe Text)
    , _alCreatorEmail   :: !(Maybe Text)
    , _alRole           :: !(Maybe Text)
    , _alKey            :: !(Maybe Text)
    , _alBbox           :: !(Maybe Text)
    , _alModifiedAfter  :: !(Maybe UTCTime)
    , _alModifiedBefore :: !(Maybe UTCTime)
    , _alPageToken      :: !(Maybe Text)
    , _alProjectId      :: !(Maybe Text)
    , _alType           :: !(Maybe Text)
    , _alOauthToken     :: !(Maybe Text)
    , _alSearch         :: !(Maybe Text)
    , _alMaxResults     :: !(Maybe Word32)
    , _alTags           :: !(Maybe Text)
    , _alFields         :: !(Maybe Text)
    , _alCreatedBefore  :: !(Maybe UTCTime)
    , _alAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alCreatedAfter'
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alCreatorEmail'
--
-- * 'alRole'
--
-- * 'alKey'
--
-- * 'alBbox'
--
-- * 'alModifiedAfter'
--
-- * 'alModifiedBefore'
--
-- * 'alPageToken'
--
-- * 'alProjectId'
--
-- * 'alType'
--
-- * 'alOauthToken'
--
-- * 'alSearch'
--
-- * 'alMaxResults'
--
-- * 'alTags'
--
-- * 'alFields'
--
-- * 'alCreatedBefore'
--
-- * 'alAlt'
assetsList
    :: AssetsList
assetsList =
    AssetsList
    { _alCreatedAfter = Nothing
    , _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alCreatorEmail = Nothing
    , _alRole = Nothing
    , _alKey = Nothing
    , _alBbox = Nothing
    , _alModifiedAfter = Nothing
    , _alModifiedBefore = Nothing
    , _alPageToken = Nothing
    , _alProjectId = Nothing
    , _alType = Nothing
    , _alOauthToken = Nothing
    , _alSearch = Nothing
    , _alMaxResults = Nothing
    , _alTags = Nothing
    , _alFields = Nothing
    , _alCreatedBefore = Nothing
    , _alAlt = "json"
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
alCreatedAfter :: Lens' AssetsList' (Maybe UTCTime)
alCreatedAfter
  = lens _alCreatedAfter
      (\ s a -> s{_alCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AssetsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AssetsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AssetsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
alCreatorEmail :: Lens' AssetsList' (Maybe Text)
alCreatorEmail
  = lens _alCreatorEmail
      (\ s a -> s{_alCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
alRole :: Lens' AssetsList' (Maybe Text)
alRole = lens _alRole (\ s a -> s{_alRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AssetsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
alBbox :: Lens' AssetsList' (Maybe Text)
alBbox = lens _alBbox (\ s a -> s{_alBbox = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
alModifiedAfter :: Lens' AssetsList' (Maybe UTCTime)
alModifiedAfter
  = lens _alModifiedAfter
      (\ s a -> s{_alModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
alModifiedBefore :: Lens' AssetsList' (Maybe UTCTime)
alModifiedBefore
  = lens _alModifiedBefore
      (\ s a -> s{_alModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
alPageToken :: Lens' AssetsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
alProjectId :: Lens' AssetsList' (Maybe Text)
alProjectId
  = lens _alProjectId (\ s a -> s{_alProjectId = a})

-- | A comma separated list of asset types. Returned assets will have one of
-- the types from the provided list. Supported values are \'map\',
-- \'layer\', \'rasterCollection\' and \'table\'.
alType :: Lens' AssetsList' (Maybe Text)
alType = lens _alType (\ s a -> s{_alType = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AssetsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
alSearch :: Lens' AssetsList' (Maybe Text)
alSearch = lens _alSearch (\ s a -> s{_alSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
alMaxResults :: Lens' AssetsList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
alTags :: Lens' AssetsList' (Maybe Text)
alTags = lens _alTags (\ s a -> s{_alTags = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AssetsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
alCreatedBefore :: Lens' AssetsList' (Maybe UTCTime)
alCreatedBefore
  = lens _alCreatedBefore
      (\ s a -> s{_alCreatedBefore = a})

-- | Data format for the response.
alAlt :: Lens' AssetsList' Text
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AssetsList' where
        type Rs AssetsList' = AssetsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsList{..}
          = go _alCreatedAfter _alQuotaUser _alPrettyPrint
              _alUserIp
              _alCreatorEmail
              _alRole
              _alKey
              _alBbox
              _alModifiedAfter
              _alModifiedBefore
              _alPageToken
              _alProjectId
              _alType
              _alOauthToken
              _alSearch
              _alMaxResults
              _alTags
              _alFields
              _alCreatedBefore
              _alAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AssetsListAPI) r u