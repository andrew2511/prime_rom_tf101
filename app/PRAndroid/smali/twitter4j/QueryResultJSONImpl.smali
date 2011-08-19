.class final Ltwitter4j/QueryResultJSONImpl;
.super Ljava/lang/Object;
.source "QueryResultJSONImpl.java"

# interfaces
.implements Ltwitter4j/QueryResult;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7db884b56e8fbc26L


# instance fields
.field private completedIn:D

.field private maxId:J

.field private page:I

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private resultsPerPage:I

.field private sinceId:J

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private warning:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/Query;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ltwitter4j/Query;->getSinceId()J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 79
    invoke-virtual {p1}, Ltwitter4j/Query;->getRpp()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    .line 80
    invoke-virtual {p1}, Ltwitter4j/Query;->getPage()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 82
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 8
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 57
    .local v2, json:Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    const-string v5, "since_id"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 58
    const-string v5, "max_id"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    .line 59
    const-string v5, "refresh_url"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    .line 61
    const-string v5, "results_per_page"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v5

    iput v5, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    .line 62
    const-string v5, "warning"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    .line 63
    const-string v5, "completed_in"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getDouble(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)D

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    .line 64
    const-string v5, "page"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v5

    iput v5, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    .line 65
    const-string v5, "query"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getURLDecodedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    .line 66
    const-string v5, "results"

    invoke-virtual {v2, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 67
    .local v0, array:Ltwitter4j/internal/org/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    .line 70
    .local v4, tweet:Ltwitter4j/internal/org/json/JSONObject;
    iget-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    new-instance v6, Ltwitter4j/TweetJSONImpl;

    invoke-direct {v6, v4}, Ltwitter4j/TweetJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0           #array:Ltwitter4j/internal/org/json/JSONArray;
    .end local v1           #i:I
    .end local v4           #tweet:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 73
    .local v3, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 75
    .end local v3           #jsone:Ltwitter4j/internal/org/json/JSONException;
    .restart local v0       #array:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 167
    :goto_0
    return v2

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    .line 152
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/QueryResult;

    move-object v1, v0

    .line 154
    .local v1, that:Ltwitter4j/QueryResult;
    invoke-interface {v1}, Ltwitter4j/QueryResult;->getCompletedIn()D

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_0

    .line 155
    :cond_3
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getMaxId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    .line 156
    :cond_4
    iget v2, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getPage()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v2, v6

    goto :goto_0

    .line 157
    :cond_5
    iget v2, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getResultsPerPage()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v2, v6

    goto :goto_0

    .line 158
    :cond_6
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getSinceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_0

    .line 159
    :cond_7
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v6

    goto :goto_0

    .line 160
    :cond_8
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getRefreshUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v6

    .line 161
    goto :goto_0

    .line 160
    :cond_a
    invoke-interface {v1}, Ltwitter4j/QueryResult;->getRefreshUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 162
    :cond_b
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v2, v6

    .line 163
    goto/16 :goto_0

    .line 162
    :cond_d
    invoke-interface {v1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c

    .line 164
    :cond_e
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getWarning()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v2, v6

    .line 165
    goto/16 :goto_0

    .line 164
    :cond_10
    invoke-interface {v1}, Ltwitter4j/QueryResult;->getWarning()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_11
    move v2, v7

    .line 167
    goto/16 :goto_0
.end method

.method public getCompletedIn()D
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    return-wide v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResultsPerPage()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    return v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    return-wide v0
.end method

.method public getTweets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 174
    iget-wide v3, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    iget-wide v5, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    ushr-long/2addr v5, v9

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 175
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    ushr-long/2addr v6, v9

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 176
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int v0, v3, v4

    .line 177
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    add-int v0, v3, v4

    .line 178
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 179
    iget-wide v3, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    move-wide v1, v3

    .line 180
    .local v1, temp:J
    :goto_2
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v9

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 181
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    add-int v0, v3, v4

    .line 182
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int v0, v3, v4

    .line 184
    return v0

    .end local v1           #temp:J
    :cond_0
    move v4, v8

    .line 176
    goto :goto_0

    :cond_1
    move v4, v8

    .line 178
    goto :goto_1

    .line 179
    :cond_2
    const-wide/16 v3, 0x0

    move-wide v1, v3

    goto :goto_2

    .restart local v1       #temp:J
    :cond_3
    move v4, v8

    .line 183
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "QueryResultJSONImpl{sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", refreshUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resultsPerPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResultJSONImpl;->resultsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", warning=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->warning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", completedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResultJSONImpl;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", tweets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
