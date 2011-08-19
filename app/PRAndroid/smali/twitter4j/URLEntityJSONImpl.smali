.class final Ltwitter4j/URLEntityJSONImpl;
.super Ljava/lang/Object;
.source "URLEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/URLEntity;


# static fields
.field private static final serialVersionUID:J = 0x102b94bf50a65174L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private end:I

.field private expandedURL:Ljava/net/URL;

.field private start:I

.field private url:Ljava/net/URL;


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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 45
    iput v0, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    .line 54
    invoke-direct {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 55
    return-void
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/URLEntityJSONImpl;->end:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string v3, "url"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_0
    :try_start_2
    const-string v2, "expanded_url"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :try_start_3
    new-instance v2, Ljava/net/URL;

    const-string v3, "expanded_url"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    :cond_0
    :goto_1
    :try_start_4
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;
    :try_end_4
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :cond_1
    return-void

    .line 77
    .end local v0           #indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 78
    .local v1, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 71
    .end local v1           #jsone:Ltwitter4j/internal/org/json/JSONException;
    .restart local v0       #indicesArray:Ltwitter4j/internal/org/json/JSONArray;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 65
    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 133
    :goto_0
    return v2

    .line 120
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

    .line 122
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/URLEntityJSONImpl;

    move-object v1, v0

    .line 124
    .local v1, that:Ltwitter4j/URLEntityJSONImpl;
    iget v2, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    iget v3, v1, Ltwitter4j/URLEntityJSONImpl;->end:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 125
    :cond_3
    iget v2, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    iget v3, v1, Ltwitter4j/URLEntityJSONImpl;->start:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 126
    :cond_4
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 127
    goto :goto_0

    .line 126
    :cond_6
    iget-object v2, v1, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 128
    :cond_7
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    iget-object v3, v1, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v2, v4

    .line 129
    goto :goto_0

    .line 128
    :cond_9
    iget-object v2, v1, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-nez v2, :cond_8

    .line 130
    :cond_a
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    iget-object v3, v1, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v2, v4

    .line 131
    goto :goto_0

    .line 130
    :cond_c
    iget-object v2, v1, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-nez v2, :cond_b

    :cond_d
    move v2, v5

    .line 133
    goto :goto_0
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    return v0
.end method

.method public getExpandedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v0, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    .line 139
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 143
    return v0

    :cond_0
    move v2, v3

    .line 140
    goto :goto_0

    :cond_1
    move v2, v3

    .line 141
    goto :goto_1

    :cond_2
    move v2, v3

    .line 142
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "URLEntityJSONImpl{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/URLEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/URLEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", expandedURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
