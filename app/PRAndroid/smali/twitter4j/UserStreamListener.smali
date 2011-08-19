.class public interface abstract Ltwitter4j/UserStreamListener;
.super Ljava/lang/Object;
.source "UserStreamListener.java"

# interfaces
.implements Ltwitter4j/StatusListener;


# virtual methods
.method public abstract onBlock(Ltwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onDeletionNotice(JI)V
.end method

.method public abstract onDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract onFavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
.end method

.method public abstract onFollow(Ltwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onFriendList([I)V
.end method

.method public abstract onRetweet(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
.end method

.method public abstract onUnblock(Ltwitter4j/User;Ltwitter4j/User;)V
.end method

.method public abstract onUnfavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V
.end method

.method public abstract onUserListCreation(Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListDeletion(Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListMemberAddition(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListMemberDeletion(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListSubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListUnsubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserListUpdate(Ltwitter4j/User;Ltwitter4j/UserList;)V
.end method

.method public abstract onUserProfileUpdate(Ltwitter4j/User;)V
.end method
