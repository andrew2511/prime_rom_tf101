.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 14
    .parameter "response"

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    .local v3, now:J
    iget-object v2, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 29
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 30
    .local v5, serverDate:J
    const-wide/16 v8, 0x0

    .line 31
    .local v8, serverExpires:J
    const-wide/16 v10, 0x0

    .line 33
    .local v10, softExpire:J
    const/4 v7, 0x0

    .line 36
    .local v7, serverEtag:Ljava/lang/String;
    const-string v12, "Date"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, headerValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 38
    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    .line 41
    :cond_0
    const-string v12, "Expires"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #headerValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 42
    .restart local v1       #headerValue:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 43
    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v8

    .line 46
    :cond_1
    const-string v12, "ETag"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #serverEtag:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 48
    .restart local v7       #serverEtag:Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-lez v12, :cond_2

    cmp-long v12, v8, v5

    if-ltz v12, :cond_2

    .line 52
    sub-long v12, v8, v5

    add-long v10, v3, v12

    .line 55
    :cond_2
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 56
    .local v0, entry:Lcom/android/volley/Cache$Entry;
    iget-object v12, p0, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v12, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 57
    iput-object v7, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 58
    iput-wide v10, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 59
    iget-wide v12, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v12, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 60
    iput-wide v5, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 62
    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 85
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, params:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 87
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, pair:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 89
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 96
    .end local v1           #i:I
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #params:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 86
    .restart local v1       #i:I
    .restart local v2       #pair:[Ljava/lang/String;
    .restart local v3       #params:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1           #i:I
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #params:[Ljava/lang/String;
    :cond_1
    const-string v4, "ISO-8859-1"

    goto :goto_1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 3
    .parameter "dateStr"

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 74
    :goto_0
    return-wide v1

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
