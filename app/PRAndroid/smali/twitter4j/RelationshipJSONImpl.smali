.class Ltwitter4j/RelationshipJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "RelationshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Relationship;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9aebf50accb0979L


# instance fields
.field private final sourceBlockingTarget:Z

.field private final sourceFollowedByTarget:Z

.field private final sourceFollowingTarget:Z

.field private final sourceNotificationsEnabled:Z

.field private final sourceUserId:I

.field private final sourceUserScreenName:Ljava/lang/String;

.field private final targetUserId:I

.field private final targetUserScreenName:Ljava/lang/String;


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
    .line 56
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 57
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 58
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "res"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 68
    :try_start_0
    const-string v4, "relationship"

    invoke-virtual {p2, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 69
    .local v1, relationship:Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 70
    .local v2, sourceJson:Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, targetJson:Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "id"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    .line 72
    const-string v4, "id"

    invoke-static {v4, v3}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    .line 73
    const-string v4, "screen_name"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    .line 74
    const-string v4, "screen_name"

    invoke-static {v4, v3}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    .line 75
    const-string v4, "blocking"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    .line 76
    const-string v4, "following"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    .line 77
    const-string v4, "followed_by"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    .line 78
    const-string v4, "notifications_enabled"

    invoke-static {v4, v2}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 79
    .end local v1           #relationship:Ltwitter4j/internal/org/json/JSONObject;
    .end local v2           #sourceJson:Ltwitter4j/internal/org/json/JSONObject;
    .end local v3           #targetJson:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 80
    .local v0, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 63
    return-void
.end method

.method static createRelationshipList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 9
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 87
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 88
    .local v3, list:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 89
    .local v6, size:I
    new-instance v5, Ltwitter4j/ResponseListImpl;

    invoke-direct {v5, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 90
    .local v5, relationships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 91
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 92
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v4, Ltwitter4j/RelationshipJSONImpl;

    invoke-direct {v4, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 93
    .local v4, relationship:Ltwitter4j/Relationship;
    invoke-static {v4, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-interface {v5, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v4           #relationship:Ltwitter4j/Relationship;
    :cond_0
    invoke-static {v5, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    return-object v5

    .line 98
    .end local v0           #i:I
    .end local v3           #list:Ltwitter4j/internal/org/json/JSONArray;
    .end local v5           #relationships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    .end local v6           #size:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 99
    .local v2, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 100
    .end local v2           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 101
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

    .line 178
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 190
    :goto_0
    return v2

    .line 179
    :cond_0
    instance-of v2, p1, Ltwitter4j/Relationship;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 181
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Relationship;

    move-object v1, v0

    .line 183
    .local v1, that:Ltwitter4j/Relationship;
    iget v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    invoke-interface {v1}, Ltwitter4j/Relationship;->getSourceUserId()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 184
    :cond_2
    iget v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    invoke-interface {v1}, Ltwitter4j/Relationship;->getTargetUserId()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 185
    :cond_3
    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/Relationship;->getSourceUserScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_4
    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/Relationship;->getTargetUserScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 188
    goto :goto_0

    :cond_5
    move v2, v5

    .line 190
    goto :goto_0
.end method

.method public getSourceUserId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    return v0
.end method

.method public getSourceUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    return v0
.end method

.method public getTargetUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    .line 196
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    add-int v0, v1, v2

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    return v0
.end method

.method public isSourceBlockingTarget()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    return v0
.end method

.method public isSourceFollowedByTarget()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public isSourceFollowingTarget()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isSourceNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    return v0
.end method

.method public isTargetFollowedBySource()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isTargetFollowingSource()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RelationshipJSONImpl{sourceUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowingTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowedByTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
