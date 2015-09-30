{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists matching topics.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsList@.
module PubSub.Projects.Topics.List
    (
    -- * REST Resource
      ProjectsTopicsListAPI

    -- * Creating a Request
    , projectsTopicsList
    , ProjectsTopicsList

    -- * Request Lenses
    , ptlXgafv
    , ptlQuotaUser
    , ptlPrettyPrint
    , ptlUploadProtocol
    , ptlProject
    , ptlPp
    , ptlAccessToken
    , ptlUploadType
    , ptlBearerToken
    , ptlKey
    , ptlPageToken
    , ptlOauthToken
    , ptlPageSize
    , ptlFields
    , ptlCallback
    , ptlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsList@ which the
-- 'ProjectsTopicsList' request conforms to.
type ProjectsTopicsListAPI =
     "v1beta2" :>
       "{+project}" :>
         "topics" :>
           QueryParam "pageToken" Text :>
             QueryParam "pageSize" Int32 :>
               Get '[JSON] ListTopicsResponse

-- | Lists matching topics.
--
-- /See:/ 'projectsTopicsList' smart constructor.
data ProjectsTopicsList = ProjectsTopicsList
    { _ptlXgafv          :: !(Maybe Text)
    , _ptlQuotaUser      :: !(Maybe Text)
    , _ptlPrettyPrint    :: !Bool
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlProject        :: !Text
    , _ptlPp             :: !Bool
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlBearerToken    :: !(Maybe Text)
    , _ptlKey            :: !(Maybe Text)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlOauthToken     :: !(Maybe Text)
    , _ptlPageSize       :: !(Maybe Int32)
    , _ptlFields         :: !(Maybe Text)
    , _ptlCallback       :: !(Maybe Text)
    , _ptlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlQuotaUser'
--
-- * 'ptlPrettyPrint'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlProject'
--
-- * 'ptlPp'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlBearerToken'
--
-- * 'ptlKey'
--
-- * 'ptlPageToken'
--
-- * 'ptlOauthToken'
--
-- * 'ptlPageSize'
--
-- * 'ptlFields'
--
-- * 'ptlCallback'
--
-- * 'ptlAlt'
projectsTopicsList
    :: Text -- ^ 'project'
    -> ProjectsTopicsList
projectsTopicsList pPtlProject_ =
    ProjectsTopicsList
    { _ptlXgafv = Nothing
    , _ptlQuotaUser = Nothing
    , _ptlPrettyPrint = True
    , _ptlUploadProtocol = Nothing
    , _ptlProject = pPtlProject_
    , _ptlPp = True
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlBearerToken = Nothing
    , _ptlKey = Nothing
    , _ptlPageToken = Nothing
    , _ptlOauthToken = Nothing
    , _ptlPageSize = Nothing
    , _ptlFields = Nothing
    , _ptlCallback = Nothing
    , _ptlAlt = "json"
    }

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTopicsList' (Maybe Text)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptlQuotaUser :: Lens' ProjectsTopicsList' (Maybe Text)
ptlQuotaUser
  = lens _ptlQuotaUser (\ s a -> s{_ptlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptlPrettyPrint :: Lens' ProjectsTopicsList' Bool
ptlPrettyPrint
  = lens _ptlPrettyPrint
      (\ s a -> s{_ptlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTopicsList' (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | The name of the cloud project that topics belong to.
ptlProject :: Lens' ProjectsTopicsList' Text
ptlProject
  = lens _ptlProject (\ s a -> s{_ptlProject = a})

-- | Pretty-print response.
ptlPp :: Lens' ProjectsTopicsList' Bool
ptlPp = lens _ptlPp (\ s a -> s{_ptlPp = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTopicsList' (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | OAuth bearer token.
ptlBearerToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlBearerToken
  = lens _ptlBearerToken
      (\ s a -> s{_ptlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptlKey :: Lens' ProjectsTopicsList' (Maybe Text)
ptlKey = lens _ptlKey (\ s a -> s{_ptlKey = a})

-- | The value returned by the last ListTopicsResponse; indicates that this
-- is a continuation of a prior ListTopics call, and that the system should
-- return the next page of data.
ptlPageToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | OAuth 2.0 token for the current user.
ptlOauthToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlOauthToken
  = lens _ptlOauthToken
      (\ s a -> s{_ptlOauthToken = a})

-- | Maximum number of topics to return.
ptlPageSize :: Lens' ProjectsTopicsList' (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
ptlFields :: Lens' ProjectsTopicsList' (Maybe Text)
ptlFields
  = lens _ptlFields (\ s a -> s{_ptlFields = a})

-- | JSONP
ptlCallback :: Lens' ProjectsTopicsList' (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

-- | Data format for response.
ptlAlt :: Lens' ProjectsTopicsList' Text
ptlAlt = lens _ptlAlt (\ s a -> s{_ptlAlt = a})

instance GoogleRequest ProjectsTopicsList' where
        type Rs ProjectsTopicsList' = ListTopicsResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsList{..}
          = go _ptlXgafv _ptlQuotaUser _ptlPrettyPrint
              _ptlUploadProtocol
              _ptlProject
              _ptlPp
              _ptlAccessToken
              _ptlUploadType
              _ptlBearerToken
              _ptlKey
              _ptlPageToken
              _ptlOauthToken
              _ptlPageSize
              _ptlFields
              _ptlCallback
              _ptlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsListAPI)
                      r
                      u