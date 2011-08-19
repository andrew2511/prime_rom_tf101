.class public Ltwitter4j/AsyncTwitter;
.super Ltwitter4j/TwitterOAuthSupportBase;
.source "AsyncTwitter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/api/SearchMethodsAsync;
.implements Ltwitter4j/api/TrendsMethodsAsync;
.implements Ltwitter4j/api/TimelineMethodsAsync;
.implements Ltwitter4j/api/StatusMethodsAsync;
.implements Ltwitter4j/api/UserMethodsAsync;
.implements Ltwitter4j/api/ListMethodsAsync;
.implements Ltwitter4j/api/ListMembersMethodsAsync;
.implements Ltwitter4j/api/ListSubscribersMethodsAsync;
.implements Ltwitter4j/api/DirectMessageMethodsAsync;
.implements Ltwitter4j/api/FriendshipMethodsAsync;
.implements Ltwitter4j/api/FriendsFollowersMethodsAsync;
.implements Ltwitter4j/api/AccountMethodsAsync;
.implements Ltwitter4j/api/FavoriteMethodsAsync;
.implements Ltwitter4j/api/NotificationMethodsAsync;
.implements Ltwitter4j/api/BlockMethodsAsync;
.implements Ltwitter4j/api/SpamReportingMethodsAsync;
.implements Ltwitter4j/api/SavedSearchesMethodsAsync;
.implements Ltwitter4j/api/LocalTrendsMethodsAsync;
.implements Ltwitter4j/api/GeoMethodsAsync;
.implements Ltwitter4j/api/LegalResourcesAsync;
.implements Ltwitter4j/api/NewTwitterMethodsAsync;
.implements Ltwitter4j/api/HelpMethodsAsync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AsyncTwitter$AsyncTask;
    }
.end annotation


# static fields
.field static class$twitter4j$AsyncTwitter:Ljava/lang/Class; = null

.field private static transient dispatcher:Ltwitter4j/internal/async/Dispatcher; = null

.field private static final serialVersionUID:J = -0x1be038d7c798e703L


# instance fields
.field private final listener:Ltwitter4j/TwitterListener;

.field private shutdown:Z

.field private final twitter:Ltwitter4j/Twitter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "screenName"
    .parameter "password"
    .parameter "listener"

    .prologue
    .line 89
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 90
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/TwitterFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    .line 91
    iput-object p3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    .line 92
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/TwitterListener;)V
    .locals 1
    .parameter "conf"
    .parameter "auth"
    .parameter "listener"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 97
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0, p2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    .line 98
    iput-object p3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    .line 99
    return-void
.end method

.method static access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 1977
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getDispatcher()Ltwitter4j/internal/async/Dispatcher;
    .locals 2

    .prologue
    .line 1989
    iget-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-eqz v0, :cond_0

    .line 1990
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v0, :cond_1

    .line 1993
    new-instance v0, Ltwitter4j/internal/async/DispatcherFactory;

    iget-object v1, p0, Ltwitter4j/AsyncTwitter;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V

    invoke-virtual {v0}, Ltwitter4j/internal/async/DispatcherFactory;->getInstance()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 1995
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    return-object v0
.end method


# virtual methods
.method public addUserListMember(II)V
    .locals 7
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 981
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$72;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$72;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method

.method public addUserListMembers(I[I)V
    .locals 7
    .parameter "listId"
    .parameter "userIds"

    .prologue
    .line 992
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$73;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$73;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I[I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 997
    return-void
.end method

.method public addUserListMembers(I[Ljava/lang/String;)V
    .locals 7
    .parameter "listId"
    .parameter "screenNames"

    .prologue
    .line 1003
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$74;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$74;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I[Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1008
    return-void
.end method

.method public checkUserListMembership(Ljava/lang/String;II)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1024
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$76;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$76;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public checkUserListSubscription(Ljava/lang/String;II)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1070
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$80;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$80;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method public createBlock(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1713
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$135;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$135;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1718
    return-void
.end method

.method public createBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1702
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$134;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$134;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1707
    return-void
.end method

.method public createFavorite(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1634
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$128;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$128;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1639
    return-void
.end method

.method public createFriendship(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1184
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$90;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$90;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1189
    return-void
.end method

.method public createFriendship(IZ)V
    .locals 7
    .parameter "userId"
    .parameter "follow"

    .prologue
    .line 1206
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$92;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$92;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IZ)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method

.method public createFriendship(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1173
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$89;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$89;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1178
    return-void
.end method

.method public createFriendship(Ljava/lang/String;Z)V
    .locals 7
    .parameter "screenName"
    .parameter "follow"

    .prologue
    .line 1195
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$91;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$91;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1200
    return-void
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .parameter "containedWithin"
    .parameter "token"
    .parameter "location"
    .parameter "streetAddress"

    .prologue
    .line 1913
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitter$153;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_PLACE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitter$153;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1918
    return-void
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "listName"
    .parameter "isPublicList"
    .parameter "description"

    .prologue
    .line 859
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$61;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$61;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method

.method public deleteUserListMember(II)V
    .locals 7
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1013
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$75;

    sget-object v2, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$75;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1018
    return-void
.end method

.method public destroyBlock(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1735
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$137;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$137;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1740
    return-void
.end method

.method public destroyBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1724
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$136;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$136;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1729
    return-void
.end method

.method public destroyDirectMessage(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1149
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$87;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$87;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1154
    return-void
.end method

.method public destroyFavorite(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1645
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$129;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$129;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1650
    return-void
.end method

.method public destroyFriendship(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1228
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$94;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$94;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1233
    return-void
.end method

.method public destroyFriendship(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1217
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$93;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$93;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1222
    return-void
.end method

.method public destroyStatus(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 546
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$36;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$36;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public destroyUserList(I)V
    .locals 4
    .parameter "listId"

    .prologue
    .line 903
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$65;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$65;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method

.method public disableNotification(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1689
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$133;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$133;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1694
    return-void
.end method

.method public disableNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1678
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$132;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$132;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1683
    return-void
.end method

.method public enableNotification(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1667
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$131;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$131;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1672
    return-void
.end method

.method public enableNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1656
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$130;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$130;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1661
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public existsBlock(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1757
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$139;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$139;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1762
    return-void
.end method

.method public existsBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1746
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$138;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$138;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1751
    return-void
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "userA"
    .parameter "userB"

    .prologue
    .line 1239
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$95;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$95;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1244
    return-void
.end method

.method public getAccountSettings()V
    .locals 4

    .prologue
    .line 735
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$53;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_SETTINGS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$53;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method public getAccountTotals()V
    .locals 4

    .prologue
    .line 724
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$52;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_TOTALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$52;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 729
    return-void
.end method

.method public getAllSubscribingUserLists(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 958
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$70;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$70;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public getAllSubscribingUserLists(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 947
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$69;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$69;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method public getAvailableTrends()V
    .locals 4

    .prologue
    .line 1827
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$145;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$145;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1832
    return-void
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 1838
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$146;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$146;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoLocation;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1843
    return-void
.end method

.method public getBlockingUsers()V
    .locals 4

    .prologue
    .line 1768
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$140;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$140;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1773
    return-void
.end method

.method public getBlockingUsers(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 1779
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$141;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$141;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1784
    return-void
.end method

.method public getBlockingUsersIDs()V
    .locals 4

    .prologue
    .line 1790
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$142;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$142;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1795
    return-void
.end method

.method public getConfiguration()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->getConfiguration()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrends()V
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$3;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$3;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public getCurrentTrends(Z)V
    .locals 4
    .parameter "excludeHashTags"

    .prologue
    .line 171
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$4;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$4;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Z)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public getDailyTrends()V
    .locals 4

    .prologue
    .line 183
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$5;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$5;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public getDailyTrends(Ljava/util/Date;Z)V
    .locals 7
    .parameter "date"
    .parameter "excludeHashTags"

    .prologue
    .line 195
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$6;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$6;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public getDirectMessages()V
    .locals 4

    .prologue
    .line 1083
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$81;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$81;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 1094
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$82;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$82;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1099
    return-void
.end method

.method public getFavorites()V
    .locals 4

    .prologue
    .line 1590
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$124;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$124;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1595
    return-void
.end method

.method public getFavorites(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 1601
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$125;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$125;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1606
    return-void
.end method

.method public getFavorites(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1612
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$126;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$126;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1617
    return-void
.end method

.method public getFavorites(Ljava/lang/String;I)V
    .locals 7
    .parameter "id"
    .parameter "page"

    .prologue
    .line 1623
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$127;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$127;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1628
    return-void
.end method

.method public getFollowersIDs()V
    .locals 4

    .prologue
    .line 1412
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$110;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$110;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1417
    return-void
.end method

.method public getFollowersIDs(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1434
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$112;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$112;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1439
    return-void
.end method

.method public getFollowersIDs(IJ)V
    .locals 8
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 1445
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$113;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$113;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1450
    return-void
.end method

.method public getFollowersIDs(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1423
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$111;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$111;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1428
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1456
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$114;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$114;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1461
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 1467
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$115;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$115;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1472
    return-void
.end method

.method public getFollowersStatuses()V
    .locals 2

    .prologue
    .line 804
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(J)V

    .line 805
    return-void
.end method

.method public getFollowersStatuses(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 829
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(IJ)V

    .line 830
    return-void
.end method

.method public getFollowersStatuses(IJ)V
    .locals 8
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 847
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$60;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$60;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 852
    return-void
.end method

.method public getFollowersStatuses(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 811
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$58;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$58;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;)V
    .locals 2
    .parameter "screenName"

    .prologue
    .line 822
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFollowersStatuses(Ljava/lang/String;J)V

    .line 823
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 836
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$59;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$59;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method public getFriendsIDs()V
    .locals 4

    .prologue
    .line 1344
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$104;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$104;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1349
    return-void
.end method

.method public getFriendsIDs(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1367
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$106;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$106;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1372
    return-void
.end method

.method public getFriendsIDs(IJ)V
    .locals 8
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 1378
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$107;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$107;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1383
    return-void
.end method

.method public getFriendsIDs(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1355
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$105;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$105;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1361
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1389
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$108;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$108;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1394
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 1400
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$109;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$109;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1406
    return-void
.end method

.method public getFriendsStatuses()V
    .locals 4

    .prologue
    .line 746
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$54;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$54;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method public getFriendsStatuses(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 775
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFriendsStatuses(IJ)V

    .line 776
    return-void
.end method

.method public getFriendsStatuses(IJ)V
    .locals 8
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 793
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$57;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$57;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method public getFriendsStatuses(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 757
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$55;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$55;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;)V
    .locals 2
    .parameter "screenName"

    .prologue
    .line 768
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/AsyncTwitter;->getFriendsStatuses(Ljava/lang/String;J)V

    .line 769
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 782
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$56;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$56;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public getFriendsTimeline()V
    .locals 4

    .prologue
    .line 264
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$12;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$12;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 275
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$13;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$13;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public getGeoDetails(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1904
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$152;

    sget-object v2, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$152;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1909
    return-void
.end method

.method public getHomeTimeline()V
    .locals 4

    .prologue
    .line 242
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$10;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$10;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 253
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$11;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$11;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getId()I

    move-result v0

    return v0
.end method

.method public getIncomingFriendships(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1272
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$98;

    sget-object v2, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$98;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1277
    return-void
.end method

.method public getLocationTrends(I)V
    .locals 4
    .parameter "woeid"

    .prologue
    .line 1849
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$147;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$147;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1854
    return-void
.end method

.method public getMemberSuggestions(Ljava/lang/String;)V
    .locals 4
    .parameter "categorySlug"

    .prologue
    .line 702
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$50;

    sget-object v2, Ltwitter4j/TwitterMethod;->MEMBER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$50;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public getMentions()V
    .locals 4

    .prologue
    .line 348
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$18;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$18;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public getMentions(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 359
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$19;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$19;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public getNearbyPlaces(Ltwitter4j/GeoQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 1882
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$150;

    sget-object v2, Ltwitter4j/TwitterMethod;->NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$150;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1887
    return-void
.end method

.method public getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2032
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2041
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2076
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2084
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    new-instance v1, Ltwitter4j/http/RequestToken;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2050
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "requestToken"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2059
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2011
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 1
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2019
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1283
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$99;

    sget-object v2, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$99;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public getPrivacyPolicy()V
    .locals 4

    .prologue
    .line 1935
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$155;

    sget-object v2, Ltwitter4j/TwitterMethod;->PRIVACY_POLICY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$155;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1940
    return-void
.end method

.method public getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V
    .locals 7
    .parameter "screenName"
    .parameter "size"

    .prologue
    .line 713
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$51;

    sget-object v2, Ltwitter4j/TwitterMethod;->PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$51;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 718
    return-void
.end method

.method public getPublicTimeline()V
    .locals 4

    .prologue
    .line 231
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$9;

    sget-object v2, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$9;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public getRateLimitStatus()V
    .locals 4

    .prologue
    .line 1502
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$118;

    sget-object v2, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$118;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1507
    return-void
.end method

.method public getRelatedResults(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 1945
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$156;

    sget-object v2, Ltwitter4j/TwitterMethod;->RELATED_RESULTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$156;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1951
    return-void
.end method

.method public getRetweetedBy(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 579
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$39;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$39;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public getRetweetedBy(JLtwitter4j/Paging;)V
    .locals 8
    .parameter "statusId"
    .parameter "paging"

    .prologue
    .line 590
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$40;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$40;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method public getRetweetedByIDs(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 601
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$41;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$41;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method public getRetweetedByIDs(JLtwitter4j/Paging;)V
    .locals 8
    .parameter "statusId"
    .parameter "paging"

    .prologue
    .line 612
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$42;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$42;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public getRetweetedByMe()V
    .locals 4

    .prologue
    .line 370
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$20;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$20;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 381
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$21;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$21;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method public getRetweetedByUser(ILtwitter4j/Paging;)V
    .locals 7
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 447
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$27;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$27;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILtwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 436
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$26;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$26;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public getRetweetedToMe()V
    .locals 4

    .prologue
    .line 392
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$22;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$22;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 403
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$23;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$23;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public getRetweetedToUser(ILtwitter4j/Paging;)V
    .locals 7
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 469
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$29;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$29;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILtwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public getRetweetedToUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 458
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$28;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$28;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public getRetweets(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 568
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$38;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$38;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method

.method public getRetweetsOfMe()V
    .locals 4

    .prologue
    .line 414
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$24;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$24;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 425
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$25;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$25;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages()V
    .locals 4

    .prologue
    .line 1105
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$83;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$83;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 1116
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$84;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$84;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1121
    return-void
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "location"
    .parameter "name"
    .parameter "containedWithin"
    .parameter "streetAddress"

    .prologue
    .line 1870
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$149;

    sget-object v2, Ltwitter4j/TwitterMethod;->SIMILAR_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$149;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1875
    return-void
.end method

.method public getSuggestedUserCategories()V
    .locals 4

    .prologue
    .line 680
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$48;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$48;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public getTermsOfService()V
    .locals 4

    .prologue
    .line 1924
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$154;

    sget-object v2, Ltwitter4j/TwitterMethod;->TERMS_OF_SERVICE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$154;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1929
    return-void
.end method

.method public getTrends()V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$2;

    sget-object v2, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$2;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"

    .prologue
    .line 970
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$71;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$71;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 975
    return-void
.end method

.method public getUserListMemberships(Ljava/lang/String;J)V
    .locals 8
    .parameter "listMemberScreenName"
    .parameter "cursor"

    .prologue
    .line 925
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$67;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$67;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 930
    return-void
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "id"
    .parameter "paging"

    .prologue
    .line 914
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$66;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$66;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ILtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 919
    return-void
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"

    .prologue
    .line 1037
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$77;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$77;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1042
    return-void
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "cursor"

    .prologue
    .line 936
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$68;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$68;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 941
    return-void
.end method

.method public getUserLists(Ljava/lang/String;J)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "cursor"

    .prologue
    .line 881
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$63;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$63;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method

.method public getUserSuggestions(Ljava/lang/String;)V
    .locals 4
    .parameter "categorySlug"

    .prologue
    .line 691
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$49;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$49;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public getUserTimeline()V
    .locals 4

    .prologue
    .line 337
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$17;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$17;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public getUserTimeline(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 330
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->getUserTimeline(ILtwitter4j/Paging;)V

    .line 331
    return-void
.end method

.method public getUserTimeline(ILtwitter4j/Paging;)V
    .locals 7
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 299
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$15;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$15;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILtwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;)V
    .locals 1
    .parameter "screenName"

    .prologue
    .line 323
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V

    .line 324
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 286
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$14;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$14;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 311
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$16;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$16;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method public getWeeklyTrends()V
    .locals 4

    .prologue
    .line 207
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$7;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$7;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)V
    .locals 7
    .parameter "date"
    .parameter "excludeHashTags"

    .prologue
    .line 219
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$8;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$8;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    return-void
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->isOAuthEnabled()Z

    move-result v0

    return v0
.end method

.method public lookupFriendships([I)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 1305
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$101;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$101;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1310
    return-void
.end method

.method public lookupFriendships([Ljava/lang/String;)V
    .locals 4
    .parameter "screenNames"

    .prologue
    .line 1294
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$100;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$100;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1299
    return-void
.end method

.method public lookupUsers([I)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 658
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$46;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$46;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method public lookupUsers([Ljava/lang/String;)V
    .locals 4
    .parameter "screenNames"

    .prologue
    .line 647
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$45;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$45;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method public reportSpam(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 1803
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$143;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$143;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1808
    return-void
.end method

.method public reportSpam(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1814
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$144;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$144;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1819
    return-void
.end method

.method public retweetStatus(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 557
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$37;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$37;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 1893
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$151;

    sget-object v2, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$151;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1898
    return-void
.end method

.method public search(Ltwitter4j/Query;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 136
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$1;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$1;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Query;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 1861
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$148;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$148;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1866
    return-void
.end method

.method public searchUsers(Ljava/lang/String;I)V
    .locals 7
    .parameter "query"
    .parameter "page"

    .prologue
    .line 669
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$47;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$47;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method public sendDirectMessage(ILjava/lang/String;)V
    .locals 7
    .parameter "userId"
    .parameter "text"

    .prologue
    .line 1138
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$86;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$86;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1143
    return-void
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "screenName"
    .parameter "text"

    .prologue
    .line 1127
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$85;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$85;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1132
    return-void
.end method

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 2098
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 2067
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 2068
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 2003
    iget-object v0, p0, Ltwitter4j/AsyncTwitter;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V

    return-void
.end method

.method public showDirectMessage(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1160
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$88;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$88;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1165
    return-void
.end method

.method public showFriendship(II)V
    .locals 7
    .parameter "sourceId"
    .parameter "targetId"

    .prologue
    .line 1261
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$97;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$97;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1266
    return-void
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "sourceScreenName"
    .parameter "targetScreenName"

    .prologue
    .line 1250
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$96;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$96;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1255
    return-void
.end method

.method public showStatus(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 480
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$30;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$30;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public showUser(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 636
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$44;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$44;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public showUser(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 625
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$43;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$43;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public showUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "id"

    .prologue
    .line 892
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$64;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$64;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 897
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 1976
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->shutdown()V

    .line 1977
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.AsyncTwitter"

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 1978
    :try_start_0
    iget-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-eqz v1, :cond_1

    .line 1979
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1977
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    goto :goto_0

    .line 1981
    :cond_1
    :try_start_1
    sget-object v1, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-eqz v1, :cond_2

    .line 1982
    sget-object v1, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    invoke-interface {v1}, Ltwitter4j/internal/async/Dispatcher;->shutdown()V

    .line 1983
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 1985
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 1986
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    return-void
.end method

.method public subscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "listId"

    .prologue
    .line 1048
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$78;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$78;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1053
    return-void
.end method

.method public test()V
    .locals 4

    .prologue
    .line 1959
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$157;

    sget-object v2, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$157;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1964
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "listId"

    .prologue
    .line 1059
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$79;

    sget-object v2, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$79;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1064
    return-void
.end method

.method public updateFriendship(IZZ)V
    .locals 8
    .parameter "userId"
    .parameter "enableDeviceNotification"
    .parameter "retweet"

    .prologue
    .line 1330
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$103;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$103;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IZZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1336
    return-void
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "screenName"
    .parameter "enableDeviceNotification"
    .parameter "retweet"

    .prologue
    .line 1317
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$102;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$102;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ZZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1323
    return-void
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "url"
    .parameter "location"
    .parameter "description"

    .prologue
    .line 1490
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$117;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$117;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1496
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)V
    .locals 7
    .parameter "image"
    .parameter "tile"

    .prologue
    .line 1559
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$122;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$122;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/File;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1568
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)V
    .locals 7
    .parameter "image"
    .parameter "tile"

    .prologue
    .line 1575
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$123;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$123;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/InputStream;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"

    .prologue
    .line 1516
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitter$119;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitter$119;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1526
    return-void
.end method

.method public updateProfileImage(Ljava/io/File;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 1532
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$120;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$120;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1539
    return-void
.end method

.method public updateProfileImage(Ljava/io/InputStream;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 1545
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$121;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$121;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1552
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 491
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$31;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$31;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method public updateStatus(Ljava/lang/String;J)V
    .locals 8
    .parameter "status"
    .parameter "inReplyToStatusId"

    .prologue
    .line 513
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitter$33;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitter$33;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public updateStatus(Ljava/lang/String;JLtwitter4j/GeoLocation;)V
    .locals 9
    .parameter "status"
    .parameter "inReplyToStatusId"
    .parameter "location"

    .prologue
    .line 524
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$34;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$34;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;JLtwitter4j/GeoLocation;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method public updateStatus(Ljava/lang/String;Ltwitter4j/GeoLocation;)V
    .locals 7
    .parameter "status"
    .parameter "location"

    .prologue
    .line 502
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitter$32;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitter$32;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/GeoLocation;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)V
    .locals 4
    .parameter "latestStatus"

    .prologue
    .line 535
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$35;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitter$35;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/StatusUpdate;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .parameter "listId"
    .parameter "newListName"
    .parameter "isPublicList"
    .parameter "newDescription"

    .prologue
    .line 870
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitter$62;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitter$62;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public verifyCredentials()V
    .locals 4

    .prologue
    .line 1478
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$116;

    sget-object v2, Ltwitter4j/TwitterMethod;->VERIFY_CREDENTIALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter$116;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1483
    return-void
.end method
