.class public interface abstract Ltwitter4j/SiteStreamsListener;
.super Ljava/lang/Object;
.source "SiteStreamsListener.java"

# interfaces
.implements Ltwitter4j/StreamListener;


# virtual methods
.method public abstract onBlock(ILtwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onDeletionNotice(III)V
.end method

.method public abstract onDeletionNotice(ILtwitter4j/StatusDeletionNotice;)V
.end method

.method public abstract onDirectMessage(ILtwitter4j/DirectMessage;)V
.end method

.method public abstract onException(Ljava/lang/Exception;)V
.end method

.method public abstract onFavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
.end method

.method public abstract onFollow(ILtwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onFriendList(I[I)V
.end method

.method public abstract onStatus(ILtwitter4j/Status;)V
.end method

.method public abstract onUnblock(ILtwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onUnfavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
.end method

.method public abstract onUnfollow(ILtwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onUserListCreation(ILtwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListDeletion(ILtwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListMemberAddition(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListMemberDeletion(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListSubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListUnsubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListUpdate(ILtwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserProfileUpdate(ILtwitter4j/User;)V
.end method
