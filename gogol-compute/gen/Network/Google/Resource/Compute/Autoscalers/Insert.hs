{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersInsert@.
module Compute.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertAPI

    -- * Creating a Request
    , autoscalersInsert
    , AutoscalersInsert

    -- * Request Lenses
    , autQuotaUser
    , autPrettyPrint
    , autProject
    , autUserIp
    , autZone
    , autKey
    , autOauthToken
    , autFields
    , autAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersInsert@ which the
-- 'AutoscalersInsert' request conforms to.
type AutoscalersInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :> Post '[JSON] Operation

-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'autoscalersInsert' smart constructor.
data AutoscalersInsert = AutoscalersInsert
    { _autQuotaUser   :: !(Maybe Text)
    , _autPrettyPrint :: !Bool
    , _autProject     :: !Text
    , _autUserIp      :: !(Maybe Text)
    , _autZone        :: !Text
    , _autKey         :: !(Maybe Text)
    , _autOauthToken  :: !(Maybe Text)
    , _autFields      :: !(Maybe Text)
    , _autAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autQuotaUser'
--
-- * 'autPrettyPrint'
--
-- * 'autProject'
--
-- * 'autUserIp'
--
-- * 'autZone'
--
-- * 'autKey'
--
-- * 'autOauthToken'
--
-- * 'autFields'
--
-- * 'autAlt'
autoscalersInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersInsert
autoscalersInsert pAutProject_ pAutZone_ =
    AutoscalersInsert
    { _autQuotaUser = Nothing
    , _autPrettyPrint = True
    , _autProject = pAutProject_
    , _autUserIp = Nothing
    , _autZone = pAutZone_
    , _autKey = Nothing
    , _autOauthToken = Nothing
    , _autFields = Nothing
    , _autAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
autQuotaUser :: Lens' AutoscalersInsert' (Maybe Text)
autQuotaUser
  = lens _autQuotaUser (\ s a -> s{_autQuotaUser = a})

-- | Returns response with indentations and line breaks.
autPrettyPrint :: Lens' AutoscalersInsert' Bool
autPrettyPrint
  = lens _autPrettyPrint
      (\ s a -> s{_autPrettyPrint = a})

-- | Name of the project scoping this request.
autProject :: Lens' AutoscalersInsert' Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
autUserIp :: Lens' AutoscalersInsert' (Maybe Text)
autUserIp
  = lens _autUserIp (\ s a -> s{_autUserIp = a})

-- | Name of the zone scoping this request.
autZone :: Lens' AutoscalersInsert' Text
autZone = lens _autZone (\ s a -> s{_autZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
autKey :: Lens' AutoscalersInsert' (Maybe Text)
autKey = lens _autKey (\ s a -> s{_autKey = a})

-- | OAuth 2.0 token for the current user.
autOauthToken :: Lens' AutoscalersInsert' (Maybe Text)
autOauthToken
  = lens _autOauthToken
      (\ s a -> s{_autOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
autFields :: Lens' AutoscalersInsert' (Maybe Text)
autFields
  = lens _autFields (\ s a -> s{_autFields = a})

-- | Data format for the response.
autAlt :: Lens' AutoscalersInsert' Text
autAlt = lens _autAlt (\ s a -> s{_autAlt = a})

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersInsert{..}
          = go _autQuotaUser _autPrettyPrint _autProject
              _autUserIp
              _autZone
              _autKey
              _autOauthToken
              _autFields
              _autAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersInsertAPI)
                      r
                      u