.class public Ltwitter4j/UserStreamAdapter;
.super Ltwitter4j/StatusAdapter;
.source "UserStreamAdapter.java"

# interfaces
.implements Ltwitter4j/UserStreamListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltwitter4j/StatusAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlock(Ltwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "source"
    .parameter "blockedUser"

    .prologue
    .line 80
    return-void
.end method

.method public onDeletionNotice(JI)V
    .locals 0
    .parameter "directMessageId"
    .parameter "userId"

    .prologue
    .line 35
    return-void
.end method

.method public onDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "directMessage"

    .prologue
    .line 53
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 86
    return-void
.end method

.method public onFavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
    .locals 0
    .parameter "source"
    .parameter "target"
    .parameter "favoritedStatus"

    .prologue
    .line 41
    return-void
.end method

.method public onFollow(Ltwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "source"
    .parameter "followedUser"

    .prologue
    .line 44
    return-void
.end method

.method public onFriendList([I)V
    .locals 0
    .parameter "friendIds"

    .prologue
    .line 38
    return-void
.end method

.method public onRetweet(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
    .locals 0
    .parameter "source"
    .parameter "target"
    .parameter "retweetedStatus"

    .prologue
    .line 50
    return-void
.end method

.method public onUnblock(Ltwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "source"
    .parameter "unblockedUser"

    .prologue
    .line 83
    return-void
.end method

.method public onUnfavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
    .locals 0
    .parameter "source"
    .parameter "target"
    .parameter "unfavoritedStatus"

    .prologue
    .line 47
    return-void
.end method

.method public onUserListCreation(Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 68
    return-void
.end method

.method public onUserListDeletion(Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 74
    return-void
.end method

.method public onUserListMemberAddition(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "addedMember"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 56
    return-void
.end method

.method public onUserListMemberDeletion(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "deletedMember"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 59
    return-void
.end method

.method public onUserListSubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "subscriber"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 62
    return-void
.end method

.method public onUserListUnsubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "subscriber"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 65
    return-void
.end method

.method public onUserListUpdate(Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 71
    return-void
.end method

.method public onUserProfileUpdate(Ltwitter4j/User;)V
    .locals 0
    .parameter "updatedUser"

    .prologue
    .line 77
    return-void
.end method
