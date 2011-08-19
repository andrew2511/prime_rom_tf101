.class public Ltwitter4j/SiteStreamsAdapter;
.super Ljava/lang/Object;
.source "SiteStreamsAdapter.java"

# interfaces
.implements Ltwitter4j/SiteStreamsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlock(ILtwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "blockedUser"

    .prologue
    .line 85
    return-void
.end method

.method public onDeletionNotice(III)V
    .locals 0
    .parameter "forUser"
    .parameter "directMessageId"
    .parameter "userId"

    .prologue
    .line 58
    return-void
.end method

.method public onDeletionNotice(ILtwitter4j/StatusDeletionNotice;)V
    .locals 0
    .parameter "forUser"
    .parameter "statusDeletionNotice"

    .prologue
    .line 37
    return-void
.end method

.method public onDirectMessage(ILtwitter4j/DirectMessage;)V
    .locals 0
    .parameter "forUser"
    .parameter "directMessage"

    .prologue
    .line 55
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 91
    return-void
.end method

.method public onFavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "target"
    .parameter "favoritedStatus"

    .prologue
    .line 43
    return-void
.end method

.method public onFollow(ILtwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "followedUser"

    .prologue
    .line 49
    return-void
.end method

.method public onFriendList(I[I)V
    .locals 0
    .parameter "forUser"
    .parameter "friendIds"

    .prologue
    .line 40
    return-void
.end method

.method public onStatus(ILtwitter4j/Status;)V
    .locals 0
    .parameter "forUser"
    .parameter "status"

    .prologue
    .line 34
    return-void
.end method

.method public onUnblock(ILtwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "unblockedUser"

    .prologue
    .line 88
    return-void
.end method

.method public onUnfavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "target"
    .parameter "unfavoritedStatus"

    .prologue
    .line 46
    return-void
.end method

.method public onUnfollow(ILtwitter4j/User;Ltwitter4j/User;)V
    .locals 0
    .parameter "forUser"
    .parameter "source"
    .parameter "followedUser"

    .prologue
    .line 52
    return-void
.end method

.method public onUserListCreation(ILtwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 73
    return-void
.end method

.method public onUserListDeletion(ILtwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 79
    return-void
.end method

.method public onUserListMemberAddition(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "addedUser"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 61
    return-void
.end method

.method public onUserListMemberDeletion(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "deletedUser"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 64
    return-void
.end method

.method public onUserListSubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "subscriber"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 67
    return-void
.end method

.method public onUserListUnsubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "subscriber"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 70
    return-void
.end method

.method public onUserListUpdate(ILtwitter4j/User;Ltwitter4j/UserList;)V
    .locals 0
    .parameter "forUser"
    .parameter "listOwner"
    .parameter "list"

    .prologue
    .line 76
    return-void
.end method

.method public onUserProfileUpdate(ILtwitter4j/User;)V
    .locals 0
    .parameter "forUser"
    .parameter "updatedUser"

    .prologue
    .line 82
    return-void
.end method
