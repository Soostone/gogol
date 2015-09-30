{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersList@.
module Compute.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListAPI

    -- * Creating a Request
    , instanceGroupManagersList
    , InstanceGroupManagersList

    -- * Request Lenses
    , igmlQuotaUser
    , igmlPrettyPrint
    , igmlProject
    , igmlUserIp
    , igmlZone
    , igmlKey
    , igmlFilter
    , igmlPageToken
    , igmlOauthToken
    , igmlMaxResults
    , igmlFields
    , igmlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersList@ which the
-- 'InstanceGroupManagersList' request conforms to.
type InstanceGroupManagersListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] InstanceGroupManagerList

-- | Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ 'instanceGroupManagersList' smart constructor.
data InstanceGroupManagersList = InstanceGroupManagersList
    { _igmlQuotaUser   :: !(Maybe Text)
    , _igmlPrettyPrint :: !Bool
    , _igmlProject     :: !Text
    , _igmlUserIp      :: !(Maybe Text)
    , _igmlZone        :: !Text
    , _igmlKey         :: !(Maybe Text)
    , _igmlFilter      :: !(Maybe Text)
    , _igmlPageToken   :: !(Maybe Text)
    , _igmlOauthToken  :: !(Maybe Text)
    , _igmlMaxResults  :: !Word32
    , _igmlFields      :: !(Maybe Text)
    , _igmlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlQuotaUser'
--
-- * 'igmlPrettyPrint'
--
-- * 'igmlProject'
--
-- * 'igmlUserIp'
--
-- * 'igmlZone'
--
-- * 'igmlKey'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlOauthToken'
--
-- * 'igmlMaxResults'
--
-- * 'igmlFields'
--
-- * 'igmlAlt'
instanceGroupManagersList
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersList
instanceGroupManagersList pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList
    { _igmlQuotaUser = Nothing
    , _igmlPrettyPrint = True
    , _igmlProject = pIgmlProject_
    , _igmlUserIp = Nothing
    , _igmlZone = pIgmlZone_
    , _igmlKey = Nothing
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlOauthToken = Nothing
    , _igmlMaxResults = 500
    , _igmlFields = Nothing
    , _igmlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmlQuotaUser :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlQuotaUser
  = lens _igmlQuotaUser
      (\ s a -> s{_igmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmlPrettyPrint :: Lens' InstanceGroupManagersList' Bool
igmlPrettyPrint
  = lens _igmlPrettyPrint
      (\ s a -> s{_igmlPrettyPrint = a})

-- | The project ID for this request.
igmlProject :: Lens' InstanceGroupManagersList' Text
igmlProject
  = lens _igmlProject (\ s a -> s{_igmlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmlUserIp :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlUserIp
  = lens _igmlUserIp (\ s a -> s{_igmlUserIp = a})

-- | The URL of the zone where the managed instance group is located.
igmlZone :: Lens' InstanceGroupManagersList' Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmlKey :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlKey = lens _igmlKey (\ s a -> s{_igmlKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
igmlFilter :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlFilter
  = lens _igmlFilter (\ s a -> s{_igmlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igmlPageToken :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlPageToken
  = lens _igmlPageToken
      (\ s a -> s{_igmlPageToken = a})

-- | OAuth 2.0 token for the current user.
igmlOauthToken :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlOauthToken
  = lens _igmlOauthToken
      (\ s a -> s{_igmlOauthToken = a})

-- | Maximum count of results to be returned.
igmlMaxResults :: Lens' InstanceGroupManagersList' Word32
igmlMaxResults
  = lens _igmlMaxResults
      (\ s a -> s{_igmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
igmlFields :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlFields
  = lens _igmlFields (\ s a -> s{_igmlFields = a})

-- | Data format for the response.
igmlAlt :: Lens' InstanceGroupManagersList' Text
igmlAlt = lens _igmlAlt (\ s a -> s{_igmlAlt = a})

instance GoogleRequest InstanceGroupManagersList'
         where
        type Rs InstanceGroupManagersList' =
             InstanceGroupManagerList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupManagersList{..}
          = go _igmlQuotaUser _igmlPrettyPrint _igmlProject
              _igmlUserIp
              _igmlZone
              _igmlKey
              _igmlFilter
              _igmlPageToken
              _igmlOauthToken
              (Just _igmlMaxResults)
              _igmlFields
              _igmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersListAPI)
                      r
                      u