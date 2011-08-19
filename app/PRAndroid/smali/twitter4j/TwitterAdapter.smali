.class public Ltwitter4j/TwitterAdapter;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public addedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 233
    return-void
.end method

.method public addedUserListMembers(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 238
    return-void
.end method

.method public checkedUserListMembership(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 247
    return-void
.end method

.method public checkedUserListSubscription(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 265
    return-void
.end method

.method public createdBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 391
    return-void
.end method

.method public createdFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 371
    return-void
.end method

.method public createdFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 289
    return-void
.end method

.method public createdPlace(Ltwitter4j/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 466
    return-void
.end method

.method public createdUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 191
    return-void
.end method

.method public deletedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 243
    return-void
.end method

.method public destroyedBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 396
    return-void
.end method

.method public destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 278
    return-void
.end method

.method public destroyedFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 373
    return-void
.end method

.method public destroyedFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 294
    return-void
.end method

.method public destroyedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "destroyedStatus"

    .prologue
    .line 121
    return-void
.end method

.method public destroyedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 207
    return-void
.end method

.method public disabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 385
    return-void
.end method

.method public enabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 380
    return-void
.end method

.method public gotAccountSettings(Ltwitter4j/AccountSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 351
    return-void
.end method

.method public gotAccountTotals(Ltwitter4j/AccountTotals;)V
    .locals 0
    .parameter "totals"

    .prologue
    .line 346
    return-void
.end method

.method public gotAllUserLists(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, lists:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotAvailableTrends(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, locations:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    return-void
.end method

.method public gotBlockingUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, blockingUsers:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotBlockingUsersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "blockingUsersIDs"

    .prologue
    .line 413
    return-void
.end method

.method public gotCurrentTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 53
    return-void
.end method

.method public gotDailyTrends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public gotDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 283
    return-void
.end method

.method public gotDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, messages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotExistsBlock(Z)V
    .locals 0
    .parameter "blockExists"

    .prologue
    .line 401
    return-void
.end method

.method public gotExistsFriendship(Z)V
    .locals 0
    .parameter "exists"

    .prologue
    .line 299
    return-void
.end method

.method public gotFavorites(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotFollowersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 330
    return-void
.end method

.method public gotFollowersStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 327
    return-void
.end method

.method public gotFriendsStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotGeoDetails(Ltwitter4j/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 461
    return-void
.end method

.method public gotHomeTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotIncomingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 309
    return-void
.end method

.method public gotLocationTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 441
    return-void
.end method

.method public gotMemberSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotMentions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotNearByPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotOutgoingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 314
    return-void
.end method

.method public gotPrivacyPolicy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacyPolicy"

    .prologue
    .line 481
    return-void
.end method

.method public gotProfileImage(Ltwitter4j/ProfileImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 181
    return-void
.end method

.method public gotPublicTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 338
    return-void
.end method

.method public gotRelatedResults(Ltwitter4j/RelatedResults;)V
    .locals 0
    .parameter "relatedResults"

    .prologue
    .line 489
    return-void
.end method

.method public gotRetweetedBy(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotRetweetedByIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 143
    return-void
.end method

.method public gotRetweetedByMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedByUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweets(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, retweets:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetsOfMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotReverseGeoCode(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotSentDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, messages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotShowFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .parameter "relationship"

    .prologue
    .line 304
    return-void
.end method

.method public gotShowStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 117
    return-void
.end method

.method public gotShowUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 203
    return-void
.end method

.method public gotSimilarPlaces(Ltwitter4j/SimilarPlaces;)V
    .locals 0
    .parameter "places"

    .prologue
    .line 454
    return-void
.end method

.method public gotSuggestedUserCategories(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    return-void
.end method

.method public gotTermsOfService(Ljava/lang/String;)V
    .locals 0
    .parameter "tof"

    .prologue
    .line 474
    return-void
.end method

.method public gotTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 48
    return-void
.end method

.method public gotUserDetail(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 146
    return-void
.end method

.method public gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListMemberships(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserListStatuses(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListSubscriptions(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserLists(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotWeeklyTrends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public lookedUpFriendships(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, friendships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    return-void
.end method

.method public lookedupUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
    .locals 0
    .parameter "ex"
    .parameter "method"

    .prologue
    .line 500
    return-void
.end method

.method public reportedSpam(Ltwitter4j/User;)V
    .locals 0
    .parameter "reportedSpammer"

    .prologue
    .line 418
    return-void
.end method

.method public retweetedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "retweetedStatus"

    .prologue
    .line 126
    return-void
.end method

.method public searched(Ltwitter4j/QueryResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 43
    return-void
.end method

.method public searchedPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public searchedUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, userList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public sentDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 273
    return-void
.end method

.method public subscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 257
    return-void
.end method

.method public tested(Z)V
    .locals 0
    .parameter "test"

    .prologue
    .line 493
    return-void
.end method

.method public unsubscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 261
    return-void
.end method

.method public updatedFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .parameter "relationship"

    .prologue
    .line 324
    return-void
.end method

.method public updatedProfile(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 366
    return-void
.end method

.method public updatedProfileBackgroundImage(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 361
    return-void
.end method

.method public updatedProfileColors(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 341
    return-void
.end method

.method public updatedProfileImage(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 356
    return-void
.end method

.method public updatedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 119
    return-void
.end method

.method public updatedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 195
    return-void
.end method

.method public verifiedCredentials(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 335
    return-void
.end method
