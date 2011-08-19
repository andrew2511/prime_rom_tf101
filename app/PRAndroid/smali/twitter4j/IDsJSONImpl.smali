.class final Ltwitter4j/IDsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "IDsJSONImpl.java"

# interfaces
.implements Ltwitter4j/IDs;


# static fields
.field private static final serialVersionUID:J = -0x5b62b6c47b2132b9L


# instance fields
.field private ids:[I

.field private nextCursor:J

.field private previousCursor:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 58
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 47
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 59
    invoke-direct {p0, p1}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 3
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .line 51
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 46
    iput-wide v1, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 47
    iput-wide v1, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 52
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, json:Ljava/lang/String;
    invoke-direct {p0, v0}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 55
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 8
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    const-string v5, "{"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v2, p1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, json:Ltwitter4j/internal/org/json/JSONObject;
    const-string v5, "ids"

    invoke-virtual {v2, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 68
    .local v1, idList:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ge v0, v5, :cond_0

    .line 71
    :try_start_1
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 73
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .end local v0           #i:I
    .end local v1           #idList:Ltwitter4j/internal/org/json/JSONArray;
    .end local v2           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 90
    .local v3, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 76
    .end local v3           #jsone:Ltwitter4j/internal/org/json/JSONException;
    .restart local v0       #i:I
    .restart local v1       #idList:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v2       #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    :try_start_3
    const-string v5, "previous_cursor"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 77
    const-string v5, "next_cursor"

    invoke-static {v5, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v5

    iput-wide v5, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 94
    .end local v2           #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    return-void

    .line 79
    .end local v0           #i:I
    .end local v1           #idList:Ltwitter4j/internal/org/json/JSONArray;
    :cond_2
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1, p1}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v1       #idList:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    .line 81
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I
    :try_end_3
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    if-ge v0, v5, :cond_1

    .line 83
    :try_start_4
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 85
    .restart local v4       #nfe:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 164
    :goto_0
    return v2

    .line 158
    :cond_0
    instance-of v2, p1, Ltwitter4j/IDs;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 160
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/IDs;

    move-object v1, v0

    .line 162
    .local v1, iDs:Ltwitter4j/IDs;
    iget-object v2, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-interface {v1}, Ltwitter4j/IDs;->getIDs()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    .line 164
    goto :goto_0
.end method

.method public getIDs()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    return-object v0
.end method

.method public getNextCursor()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IDsJSONImpl{ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", previousCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
