.class public final Ltwitter4j/json/JSONObjectType;
.super Ljava/lang/Object;
.source "JSONObjectType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK:Ltwitter4j/json/JSONObjectType; = null

.field public static final DELETE:Ltwitter4j/json/JSONObjectType; = null

.field public static final DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType; = null

.field public static final FAVORITE:Ltwitter4j/json/JSONObjectType; = null

.field public static final FOLLOW:Ltwitter4j/json/JSONObjectType; = null

.field public static final FRIENDS:Ltwitter4j/json/JSONObjectType; = null

.field public static final LIMIT:Ltwitter4j/json/JSONObjectType; = null

.field public static final RETWEET:Ltwitter4j/json/JSONObjectType; = null

.field public static final SCRUB_GEO:Ltwitter4j/json/JSONObjectType; = null

.field public static final SENDER:Ltwitter4j/json/JSONObjectType; = null

.field public static final STATUS:Ltwitter4j/json/JSONObjectType; = null

.field public static final UNBLOCK:Ltwitter4j/json/JSONObjectType; = null

.field public static final UNFAVORITE:Ltwitter4j/json/JSONObjectType; = null

.field public static final UNFOLLOW:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_CREATED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_DESTROYED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_MEMBER_ADDED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_MEMBER_DELETED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_SUBSCRIBED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_UNSUBSCRIBED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_LIST_UPDATED:Ltwitter4j/json/JSONObjectType; = null

.field public static final USER_UPDATE:Ltwitter4j/json/JSONObjectType; = null

.field static class$twitter4j$json$JSONObjectType:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = -0x3e4708c21bd8a824L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ltwitter4j/json/JSONObjectType;->class$twitter4j$json$JSONObjectType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.json.JSONObjectType"

    invoke-static {v0}, Ltwitter4j/json/JSONObjectType;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/json/JSONObjectType;->class$twitter4j$json$JSONObjectType:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/json/JSONObjectType;->logger:Ltwitter4j/internal/logging/Logger;

    .line 40
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "SENDER"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->SENDER:Ltwitter4j/json/JSONObjectType;

    .line 41
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->STATUS:Ltwitter4j/json/JSONObjectType;

    .line 42
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "DIRECT_MESSAGE"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType;

    .line 43
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->DELETE:Ltwitter4j/json/JSONObjectType;

    .line 44
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "LIMIT"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->LIMIT:Ltwitter4j/json/JSONObjectType;

    .line 45
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "SCRUB_GEO"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType;

    .line 46
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->FRIENDS:Ltwitter4j/json/JSONObjectType;

    .line 47
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "FAVORITE"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->FAVORITE:Ltwitter4j/json/JSONObjectType;

    .line 48
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "UNFAVORITE"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->UNFAVORITE:Ltwitter4j/json/JSONObjectType;

    .line 49
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "RETWEET"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->RETWEET:Ltwitter4j/json/JSONObjectType;

    .line 50
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "FOLLOW"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->FOLLOW:Ltwitter4j/json/JSONObjectType;

    .line 51
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "UNFOLLOW"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->UNFOLLOW:Ltwitter4j/json/JSONObjectType;

    .line 52
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_MEMBER_ADDED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_ADDED:Ltwitter4j/json/JSONObjectType;

    .line 53
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_MEMBER_DELETED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_DELETED:Ltwitter4j/json/JSONObjectType;

    .line 54
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_SUBSCRIBED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_SUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    .line 55
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_UNSUBSCRIBED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    .line 56
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_CREATED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_CREATED:Ltwitter4j/json/JSONObjectType;

    .line 57
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_UPDATED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_UPDATED:Ltwitter4j/json/JSONObjectType;

    .line 58
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_LIST_DESTROYED"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_LIST_DESTROYED:Ltwitter4j/json/JSONObjectType;

    .line 59
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "USER_UPDATE"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->USER_UPDATE:Ltwitter4j/json/JSONObjectType;

    .line 60
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->BLOCK:Ltwitter4j/json/JSONObjectType;

    .line 61
    new-instance v0, Ltwitter4j/json/JSONObjectType;

    const-string v1, "UNBLOCK"

    invoke-direct {v0, v1}, Ltwitter4j/json/JSONObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/json/JSONObjectType;->UNBLOCK:Ltwitter4j/json/JSONObjectType;

    return-void

    .line 38
    :cond_0
    sget-object v0, Ltwitter4j/json/JSONObjectType;->class$twitter4j$json$JSONObjectType:Ljava/lang/Class;

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
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

.method public static determine(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/json/JSONObjectType;
    .locals 5
    .parameter "json"

    .prologue
    .line 92
    const-string v2, "sender"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    sget-object v2, Ltwitter4j/json/JSONObjectType;->SENDER:Ltwitter4j/json/JSONObjectType;

    .line 151
    :goto_0
    return-object v2

    .line 94
    :cond_0
    const-string v2, "text"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    sget-object v2, Ltwitter4j/json/JSONObjectType;->STATUS:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 96
    :cond_1
    const-string v2, "direct_message"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    sget-object v2, Ltwitter4j/json/JSONObjectType;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "delete"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    sget-object v2, Ltwitter4j/json/JSONObjectType;->DELETE:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 100
    :cond_3
    const-string v2, "limit"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    sget-object v2, Ltwitter4j/json/JSONObjectType;->LIMIT:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 102
    :cond_4
    const-string v2, "scrub_geo"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 103
    sget-object v2, Ltwitter4j/json/JSONObjectType;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 104
    :cond_5
    const-string v2, "friends"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 105
    sget-object v2, Ltwitter4j/json/JSONObjectType;->FRIENDS:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 106
    :cond_6
    const-string v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 109
    :try_start_0
    const-string v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, event:Ljava/lang/String;
    const-string v2, "favorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    sget-object v2, Ltwitter4j/json/JSONObjectType;->FAVORITE:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 112
    :cond_7
    const-string v2, "unfavorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    sget-object v2, Ltwitter4j/json/JSONObjectType;->UNFAVORITE:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 114
    :cond_8
    const-string v2, "retweet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    sget-object v2, Ltwitter4j/json/JSONObjectType;->RETWEET:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 117
    :cond_9
    const-string v2, "follow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 118
    sget-object v2, Ltwitter4j/json/JSONObjectType;->FOLLOW:Ltwitter4j/json/JSONObjectType;

    goto :goto_0

    .line 119
    :cond_a
    const-string v2, "unfollow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 120
    sget-object v2, Ltwitter4j/json/JSONObjectType;->UNFOLLOW:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 121
    :cond_b
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 122
    const-string v2, "list_member_added"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 123
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_ADDED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 124
    :cond_c
    const-string v2, "list_member_removed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 125
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_DELETED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 126
    :cond_d
    const-string v2, "list_user_subscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 127
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_SUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 128
    :cond_e
    const-string v2, "list_user_unsubscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 129
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 130
    :cond_f
    const-string v2, "list_created"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 131
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_CREATED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 132
    :cond_10
    const-string v2, "list_updated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 133
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_UPDATED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 134
    :cond_11
    const-string v2, "list_destroyed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 135
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_LIST_DESTROYED:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 137
    :cond_12
    const-string v2, "user_update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 138
    sget-object v2, Ltwitter4j/json/JSONObjectType;->USER_UPDATE:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 139
    :cond_13
    const-string v2, "block"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 140
    sget-object v2, Ltwitter4j/json/JSONObjectType;->BLOCK:Ltwitter4j/json/JSONObjectType;

    goto/16 :goto_0

    .line 141
    :cond_14
    const-string v2, "unblock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 142
    sget-object v2, Ltwitter4j/json/JSONObjectType;->UNBLOCK:Ltwitter4j/json/JSONObjectType;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v0           #event:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 146
    .local v1, jsone:Ltwitter4j/internal/org/json/JSONException;
    :try_start_1
    sget-object v2, Ltwitter4j/json/JSONObjectType;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v3, "Failed to get event element: "

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v1           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :cond_15
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v1       #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 164
    :goto_0
    return v2

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 159
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/json/JSONObjectType;

    move-object v1, v0

    .line 161
    .local v1, that:Ltwitter4j/json/JSONObjectType;
    iget-object v2, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 162
    goto :goto_0

    .line 161
    :cond_4
    iget-object v2, v1, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_5
    move v2, v5

    .line 164
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltwitter4j/json/JSONObjectType;->name:Ljava/lang/String;

    return-object v0
.end method
