.class Ltwitter4j/FriendshipJSONImpl;
.super Ljava/lang/Object;
.source "FriendshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Friendship;


# static fields
.field private static final serialVersionUID:J = -0x695cf65ed996ccf8L


# instance fields
.field private followedBy:Z

.field private following:Z

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/FriendshipJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 51
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 52
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 47
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    .line 58
    :try_start_0
    const-string v4, "id"

    invoke-static {v4, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    .line 59
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    .line 60
    const-string v4, "screen_name"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    .line 61
    const-string v4, "connections"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 62
    .local v1, connections:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 63
    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, connection:Ljava/lang/String;
    const-string v4, "following"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const-string v4, "followed_by"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v0           #connection:Ljava/lang/String;
    .end local v1           #connections:Ltwitter4j/internal/org/json/JSONArray;
    .end local v2           #i:I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 71
    .local v3, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 73
    .end local v3           #jsone:Ltwitter4j/internal/org/json/JSONException;
    .restart local v1       #connections:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v2       #i:I
    :cond_2
    return-void
.end method

.method static createFriendshipList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 9
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 78
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 79
    .local v5, list:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 80
    .local v6, size:I
    new-instance v1, Ltwitter4j/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 81
    .local v1, friendshipList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 82
    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 83
    .local v3, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v0, Ltwitter4j/FriendshipJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/FriendshipJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 84
    .local v0, friendship:Ltwitter4j/Friendship;
    invoke-static {v0, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0           #friendship:Ltwitter4j/Friendship;
    .end local v3           #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    invoke-static {v1, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    return-object v1

    .line 89
    .end local v1           #friendshipList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    .end local v2           #i:I
    .end local v5           #list:Ltwitter4j/internal/org/json/JSONArray;
    .end local v6           #size:I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 90
    .local v4, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 91
    .end local v4           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 92
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 129
    :goto_0
    return v2

    .line 119
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

    .line 121
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/FriendshipJSONImpl;

    move-object v1, v0

    .line 123
    .local v1, that:Ltwitter4j/FriendshipJSONImpl;
    iget-boolean v2, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    iget-boolean v3, v1, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 124
    :cond_3
    iget-boolean v2, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    iget-boolean v3, v1, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 125
    :cond_4
    iget v2, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    iget v3, v1, Ltwitter4j/FriendshipJSONImpl;->id:I

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 126
    :cond_5
    iget-object v2, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    .line 127
    :cond_6
    iget-object v2, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    .line 129
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    iget v0, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    .line 135
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    add-int v0, v1, v2

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    add-int v0, v1, v2

    .line 139
    return v0

    :cond_0
    move v2, v3

    .line 137
    goto :goto_0

    :cond_1
    move v2, v3

    .line 138
    goto :goto_1
.end method

.method public isFollowedBy()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ConnectionsJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/FriendshipJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
