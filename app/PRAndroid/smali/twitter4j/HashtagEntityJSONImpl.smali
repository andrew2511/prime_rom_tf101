.class Ltwitter4j/HashtagEntityJSONImpl;
.super Ljava/lang/Object;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;


# static fields
.field private static final serialVersionUID:J = 0x3877f7012d9cd490L


# instance fields
.field private end:I

.field private start:I

.field private text:Ljava/lang/String;


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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 41
    iput v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    .line 47
    invoke-direct {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 48
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
    .line 52
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    .line 56
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-void

    .line 59
    .end local v0           #indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 60
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

    .line 87
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 97
    :goto_0
    return v2

    .line 88
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

    .line 90
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/HashtagEntityJSONImpl;

    move-object v1, v0

    .line 92
    .local v1, that:Ltwitter4j/HashtagEntityJSONImpl;
    iget v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    iget v3, v1, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 93
    :cond_3
    iget v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    iget v3, v1, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 94
    :cond_4
    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 95
    goto :goto_0

    .line 94
    :cond_6
    iget-object v2, v1, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7
    move v2, v5

    .line 97
    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    .line 103
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    add-int v0, v1, v2

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 105
    return v0

    .line 104
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HashtagEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
