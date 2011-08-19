.class Ltwitter4j/UserMentionEntityJSONImpl;
.super Ljava/lang/Object;
.source "UserMentionEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserMentionEntity;


# static fields
.field private static final serialVersionUID:J = 0x116d358c87ecbd57L


# instance fields
.field private end:I

.field private id:I

.field private name:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private start:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 42
    iput v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    .line 49
    invoke-direct {p0, p1}, Ltwitter4j/UserMentionEntityJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 50
    return-void
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 55
    .local v0, indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    .line 58
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 61
    :cond_0
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    .line 64
    :cond_1
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 65
    .end local v0           #indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 66
    .local v1, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 120
    :goto_0
    return v2

    .line 108
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

    .line 110
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/UserMentionEntityJSONImpl;

    move-object v1, v0

    .line 112
    .local v1, that:Ltwitter4j/UserMentionEntityJSONImpl;
    iget v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    iget v3, v1, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 113
    :cond_3
    iget v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:I

    iget v3, v1, Ltwitter4j/UserMentionEntityJSONImpl;->id:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 114
    :cond_4
    iget v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    iget v3, v1, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 115
    :cond_5
    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 116
    goto :goto_0

    .line 115
    :cond_7
    iget-object v2, v1, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 117
    :cond_8
    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v4

    .line 118
    goto :goto_0

    .line 117
    :cond_a
    iget-object v2, v1, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    move v2, v5

    .line 120
    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    iget v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    .line 126
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    add-int v0, v1, v2

    .line 127
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:I

    add-int v0, v1, v2

    .line 130
    return v0

    :cond_0
    move v2, v3

    .line 127
    goto :goto_0

    :cond_1
    move v2, v3

    .line 128
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserMentionEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
