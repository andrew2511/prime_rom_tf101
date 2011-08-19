.class public final Ltwitter4j/json/DataObjectFactory;
.super Ljava/lang/Object;
.source "DataObjectFactory.java"


# static fields
.field private static final IDsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/IDs;",
            ">;"
        }
    .end annotation
.end field

.field private static final accountTotalsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/AccountTotals;",
            ">;"
        }
    .end annotation
.end field

.field private static final categoryConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation
.end field

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$twitter4j$internal$org$json$JSONArray:Ljava/lang/Class;

.field static class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

.field private static final directMessageConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final locationConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final placeConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation
.end field

.field private static final rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static final relatedResultsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/RelatedResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final relationshipConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation
.end field

.field private static final savedSearchConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/StatusDeletionNotice;",
            ">;"
        }
    .end annotation
.end field

.field private static final trendConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Trend;",
            ">;"
        }
    .end annotation
.end field

.field private static final trendsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation
.end field

.field private static final tweetConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private static final userConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final userListConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    const-string v1, "twitter4j.StatusJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_0
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    .line 69
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 71
    const-string v1, "twitter4j.UserJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_1
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    .line 72
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 74
    const-string v1, "twitter4j.TweetJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_2
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    .line 75
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 77
    const-string v1, "twitter4j.RelationshipJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_3
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    .line 78
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 80
    const-string v1, "twitter4j.PlaceJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_4

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_4
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    .line 81
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 83
    const-string v1, "twitter4j.SavedSearchJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_5
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    .line 84
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 86
    const-string v1, "twitter4j.TrendJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_6

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_6
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    .line 87
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 89
    const-string v1, "twitter4j.TrendsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_7

    const-string v4, "java.lang.String"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    :goto_7
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    .line 90
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 92
    const-string v1, "twitter4j.IDsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_8

    const-string v4, "java.lang.String"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    .line 93
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 95
    const-string v1, "twitter4j.RateLimitStatusJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_9

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_9
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    .line 96
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 98
    const-string v1, "twitter4j.CategoryJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_a

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_a
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    .line 99
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 101
    const-string v1, "twitter4j.DirectMessageJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_b

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_b
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    .line 102
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 104
    const-string v1, "twitter4j.LocationJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_c

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_c
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    .line 105
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 107
    const-string v1, "twitter4j.UserListJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_d

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_d
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    .line 108
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 110
    const-string v1, "twitter4j.RelatedResultsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONArray:Ljava/lang/Class;

    if-nez v4, :cond_e

    const-string v4, "twitter4j.internal.org.json.JSONArray"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONArray:Ljava/lang/Class;

    :goto_e
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    .line 111
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 113
    const-string v1, "twitter4j.StatusDeletionNoticeImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_f

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_f
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    .line 114
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 116
    const-string v1, "twitter4j.AccountTotalsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    if-nez v4, :cond_10

    const-string v4, "twitter4j.internal.org.json.JSONObject"

    invoke-static {v4}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    :goto_10
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    .line 117
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    new-instance v1, Ltwitter4j/json/DataObjectFactory$1;

    invoke-direct {v1}, Ltwitter4j/json/DataObjectFactory$1;-><init>()V

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    return-void

    .line 68
    :cond_0
    :try_start_1
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_0

    .line 71
    :cond_1
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_1

    .line 74
    :cond_2
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_2

    .line 77
    :cond_3
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_3

    .line 80
    :cond_4
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_4

    .line 83
    :cond_5
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_5

    .line 86
    :cond_6
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_6

    .line 89
    :cond_7
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_7

    .line 92
    :cond_8
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_8

    .line 95
    :cond_9
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_9

    .line 98
    :cond_a
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_a

    .line 101
    :cond_b
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_b

    .line 104
    :cond_c
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_c

    .line 107
    :cond_d
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_d

    .line 110
    :cond_e
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONArray:Ljava/lang/Class;

    goto/16 :goto_e

    .line 113
    :cond_f
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;

    goto :goto_f

    .line 116
    :cond_10
    sget-object v4, Ltwitter4j/json/DataObjectFactory;->class$twitter4j$internal$org$json$JSONObject:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    .line 118
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
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

.method static clearThreadLocalMap()V
    .locals 1

    .prologue
    .line 557
    sget-object v0, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 558
    return-void
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/AccountTotals;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 207
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 208
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 209
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 211
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 212
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 213
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 397
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Category;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 399
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 400
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 401
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 402
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 403
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 404
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 405
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 406
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 419
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/DirectMessage;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 421
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 422
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 423
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 424
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 425
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 426
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 427
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 428
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 4
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/IDs;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    .line 357
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 358
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 359
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 360
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 361
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 362
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 441
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Location;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 443
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 444
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 445
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 446
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 447
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 448
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 449
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 450
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 518
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-static {v1}, Ltwitter4j/json/JSONObjectType;->determine(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/json/JSONObjectType;

    move-result-object v2

    .line 520
    .local v2, jsonObjectType:Ltwitter4j/json/JSONObjectType;
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SENDER:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_0

    .line 521
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "direct_message"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 538
    :goto_0
    return-object v3

    .line 522
    :cond_0
    sget-object v3, Ltwitter4j/json/JSONObjectType;->STATUS:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_1

    .line 523
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 524
    :cond_1
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_2

    .line 525
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "direct_message"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 526
    :cond_2
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DELETE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_3

    .line 527
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 528
    :cond_3
    sget-object v3, Ltwitter4j/json/JSONObjectType;->LIMIT:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_4

    move-object v3, v1

    .line 531
    goto :goto_0

    .line 532
    :cond_4
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v3, v2, :cond_5

    move-object v3, v1

    .line 535
    goto :goto_0

    :cond_5
    move-object v3, v1

    .line 538
    goto :goto_0

    .line 540
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v2           #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 541
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 542
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 543
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 544
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 545
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 546
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 547
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Place;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 273
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 274
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 275
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 276
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 277
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 278
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 279
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 280
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ltwitter4j/RateLimitStatus;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/RateLimitStatus;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 377
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 378
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 379
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 380
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 381
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 382
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 383
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 384
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRelatedResults(Ljava/lang/String;)Ltwitter4j/RelatedResults;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 485
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, json:Ltwitter4j/internal/org/json/JSONArray;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/RelatedResults;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 487
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 488
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 489
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 490
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 491
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 492
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 493
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 494
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Relationship;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 251
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 252
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 253
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 254
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 255
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 256
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 257
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 258
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/SavedSearch;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 295
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 296
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 297
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 298
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 299
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 300
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 301
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 302
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Status;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 163
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 165
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 167
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 168
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 169
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 170
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Trend;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 317
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 318
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 319
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 320
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 321
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 322
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 323
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 324
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .locals 4
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Trends;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    .line 338
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 339
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 340
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 341
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 342
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 343
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static createTweet(Ljava/lang/String;)Ltwitter4j/Tweet;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Tweet;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 229
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 230
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 231
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 232
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 233
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 234
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 235
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 236
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/User;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 185
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 187
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 189
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 191
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 192
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 463
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/UserList;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 465
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 466
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 467
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 468
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 469
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 470
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 471
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 472
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 141
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, json:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Ljava/lang/String;

    .end local v0           #json:Ljava/lang/Object;
    move-object v1, v0

    .line 148
    :goto_0
    return-object v1

    .line 144
    .restart local v0       #json:Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, key:Ljava/lang/Object;,"TT;"
    sget-object v0, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object p0
.end method
