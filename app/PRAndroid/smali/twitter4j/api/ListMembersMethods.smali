.class public interface abstract Ltwitter4j/api/ListMembersMethods;
.super Ljava/lang/Object;
.source "ListMembersMethods.java"


# virtual methods
.method public abstract addUserListMember(II)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract addUserListMembers(I[I)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract addUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract checkUserListMembership(Ljava/lang/String;II)Ltwitter4j/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract deleteUserListMember(II)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getUserListMembers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
