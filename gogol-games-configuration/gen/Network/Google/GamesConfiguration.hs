{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesConfiguration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Publishing API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference>
module Network.Google.GamesConfiguration
    (
    -- * API
      GamesConfigurationAPI
    , gamesConfigurationAPI
    , gamesConfigurationURL

    -- * Service Methods

    -- * REST Resources

    -- ** GamesConfigurationAchievementConfigurationsDelete
    , module GamesConfiguration.AchievementConfigurations.Delete

    -- ** GamesConfigurationAchievementConfigurationsGet
    , module GamesConfiguration.AchievementConfigurations.Get

    -- ** GamesConfigurationAchievementConfigurationsInsert
    , module GamesConfiguration.AchievementConfigurations.Insert

    -- ** GamesConfigurationAchievementConfigurationsList
    , module GamesConfiguration.AchievementConfigurations.List

    -- ** GamesConfigurationAchievementConfigurationsPatch
    , module GamesConfiguration.AchievementConfigurations.Patch

    -- ** GamesConfigurationAchievementConfigurationsUpdate
    , module GamesConfiguration.AchievementConfigurations.Update

    -- ** GamesConfigurationImageConfigurationsUpload
    , module GamesConfiguration.ImageConfigurations.Upload

    -- ** GamesConfigurationLeaderboardConfigurationsDelete
    , module GamesConfiguration.LeaderboardConfigurations.Delete

    -- ** GamesConfigurationLeaderboardConfigurationsGet
    , module GamesConfiguration.LeaderboardConfigurations.Get

    -- ** GamesConfigurationLeaderboardConfigurationsInsert
    , module GamesConfiguration.LeaderboardConfigurations.Insert

    -- ** GamesConfigurationLeaderboardConfigurationsList
    , module GamesConfiguration.LeaderboardConfigurations.List

    -- ** GamesConfigurationLeaderboardConfigurationsPatch
    , module GamesConfiguration.LeaderboardConfigurations.Patch

    -- ** GamesConfigurationLeaderboardConfigurationsUpdate
    , module GamesConfiguration.LeaderboardConfigurations.Update

    -- * Types

    -- ** ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icUrl
    , icImageType

    -- ** LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- ** GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- ** AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- ** LeaderboardConfiguration
    , LeaderboardConfiguration
    , leaderboardConfiguration
    , lcScoreMax
    , lcKind
    , lcPublished
    , lcToken
    , lcScoreMin
    , lcDraft
    , lcId
    , lcScoreOrder

    -- ** AchievementConfiguration
    , AchievementConfiguration
    , achievementConfiguration
    , acAchievementType
    , acStepsToUnlock
    , acKind
    , acPublished
    , acToken
    , acInitialState
    , acDraft
    , acId

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- ** GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- ** LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconUrl

    -- ** LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations

    -- ** AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconUrl
    , acdDescription
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
import           Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update

{- $resources
TODO
-}

type GamesConfigurationAPI =
     ImageConfigurations :<|> LeaderboardConfigurations
       :<|> AchievementConfigurations

gamesConfigurationAPI :: Proxy GamesConfigurationAPI
gamesConfigurationAPI = Proxy