{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Autoscaler.Autoscalers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.update@.
module Network.Google.API.Autoscaler.Autoscalers.Update
    (
    -- * REST Resource
      AutoscalersUpdateAPI

    -- * Creating a Request
    , autoscalersUpdate'
    , AutoscalersUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auProject
    , auUserIp
    , auZone
    , auKey
    , auAutoscaler
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.Compute.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for autoscaler.autoscalers.update which the
-- 'AutoscalersUpdate'' request conforms to.
type AutoscalersUpdateAPI =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               Capture "autoscaler" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Put '[JSON] Operation

-- | Update the entire content of the Autoscaler resource.
--
-- /See:/ 'autoscalersUpdate'' smart constructor.
data AutoscalersUpdate' = AutoscalersUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auProject     :: !Text
    , _auUserIp      :: !(Maybe Text)
    , _auZone        :: !Text
    , _auKey         :: !(Maybe Text)
    , _auAutoscaler  :: !Text
    , _auOauthToken  :: !(Maybe Text)
    , _auFields      :: !(Maybe Text)
    , _auAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auProject'
--
-- * 'auUserIp'
--
-- * 'auZone'
--
-- * 'auKey'
--
-- * 'auAutoscaler'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
autoscalersUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersUpdate'
autoscalersUpdate' pAuProject_ pAuZone_ pAuAutoscaler_ =
    AutoscalersUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auProject = pAuProject_
    , _auUserIp = Nothing
    , _auZone = pAuZone_
    , _auKey = Nothing
    , _auAutoscaler = pAuAutoscaler_
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AutoscalersUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AutoscalersUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | Project ID of Autoscaler resource.
auProject :: Lens' AutoscalersUpdate' Text
auProject
  = lens _auProject (\ s a -> s{_auProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' AutoscalersUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | Zone name of Autoscaler resource.
auZone :: Lens' AutoscalersUpdate' Text
auZone = lens _auZone (\ s a -> s{_auZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AutoscalersUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | Name of the Autoscaler resource.
auAutoscaler :: Lens' AutoscalersUpdate' Text
auAutoscaler
  = lens _auAutoscaler (\ s a -> s{_auAutoscaler = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AutoscalersUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AutoscalersUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AutoscalersUpdate' Alt
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AutoscalersUpdate' where
        type Rs AutoscalersUpdate' = Operation
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u AutoscalersUpdate'{..}
          = go _auQuotaUser (Just _auPrettyPrint) _auProject
              _auUserIp
              _auZone
              _auKey
              _auAutoscaler
              _auOauthToken
              _auFields
              (Just _auAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersUpdateAPI)
                      r
                      u