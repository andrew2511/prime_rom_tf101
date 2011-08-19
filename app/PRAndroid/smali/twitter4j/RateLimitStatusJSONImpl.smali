.class final Ltwitter4j/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "RateLimitStatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/RateLimitStatus;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb8d1e8292f717f6L


# instance fields
.field private hourlyLimit:I

.field private remainingHits:I

.field private resetTime:Ljava/util/Date;

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(IIILjava/util/Date;)V
    .locals 4
    .parameter "hourlyLimit"
    .parameter "remainingHits"
    .parameter "resetTimeInSeconds"
    .parameter "resetTime"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    .line 54
    iput p2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    .line 55
    iput-object p4, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    .line 56
    iput p3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 57
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 58
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 62
    .local v0, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {p0, v0}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 63
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 64
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 69
    return-void
.end method

.method static createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 13
    .parameter "res"

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 111
    if-nez p0, :cond_0

    move-object v9, v10

    .line 139
    :goto_0
    return-object v9

    .line 119
    :cond_0
    const-string v9, "X-FeatureRateLimit-Limit"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, limit:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, hourlyLimit:I
    const-string v9, "X-FeatureRateLimit-Remaining"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, remaining:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 131
    .local v5, remainingHits:I
    const-string v9, "X-FeatureRateLimit-Reset"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, reset:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 133
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    .local v2, longReset:J
    div-long v9, v2, v11

    long-to-int v8, v9

    .line 135
    .local v8, resetTimeInSeconds:I
    new-instance v7, Ljava/util/Date;

    mul-long v9, v2, v11

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 139
    .local v7, resetTime:Ljava/util/Date;
    new-instance v9, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v9, v0, v5, v8, v7}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(IIILjava/util/Date;)V

    goto :goto_0

    .end local v0           #hourlyLimit:I
    .end local v2           #longReset:J
    .end local v4           #remaining:Ljava/lang/String;
    .end local v5           #remainingHits:I
    .end local v6           #reset:Ljava/lang/String;
    .end local v7           #resetTime:Ljava/util/Date;
    .end local v8           #resetTimeInSeconds:I
    :cond_1
    move-object v9, v10

    .line 123
    goto :goto_0

    .restart local v0       #hourlyLimit:I
    .restart local v4       #remaining:Ljava/lang/String;
    :cond_2
    move-object v9, v10

    .line 129
    goto :goto_0

    .restart local v5       #remainingHits:I
    .restart local v6       #reset:Ljava/lang/String;
    :cond_3
    move-object v9, v10

    .line 137
    goto :goto_0
.end method

.method static createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 13
    .parameter "res"

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 79
    if-nez p0, :cond_0

    move-object v9, v10

    .line 107
    :goto_0
    return-object v9

    .line 87
    :cond_0
    const-string v9, "X-RateLimit-Limit"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, limit:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, hourlyLimit:I
    const-string v9, "X-RateLimit-Remaining"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, remaining:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 99
    .local v5, remainingHits:I
    const-string v9, "X-RateLimit-Reset"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, reset:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 101
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 102
    .local v2, longReset:J
    div-long v9, v2, v11

    long-to-int v8, v9

    .line 103
    .local v8, resetTimeInSeconds:I
    new-instance v7, Ljava/util/Date;

    mul-long v9, v2, v11

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v7, resetTime:Ljava/util/Date;
    new-instance v9, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v9, v0, v5, v8, v7}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(IIILjava/util/Date;)V

    goto :goto_0

    .end local v0           #hourlyLimit:I
    .end local v2           #longReset:J
    .end local v4           #remaining:Ljava/lang/String;
    .end local v5           #remainingHits:I
    .end local v6           #reset:Ljava/lang/String;
    .end local v7           #resetTime:Ljava/util/Date;
    .end local v8           #resetTimeInSeconds:I
    :cond_1
    move-object v9, v10

    .line 91
    goto :goto_0

    .restart local v0       #hourlyLimit:I
    .restart local v4       #remaining:Ljava/lang/String;
    :cond_2
    move-object v9, v10

    .line 97
    goto :goto_0

    .restart local v5       #remainingHits:I
    .restart local v6       #reset:Ljava/lang/String;
    :cond_3
    move-object v9, v10

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 191
    :goto_0
    return v2

    .line 180
    :cond_0
    instance-of v2, p1, Ltwitter4j/RateLimitStatusJSONImpl;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 182
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/RateLimitStatusJSONImpl;

    move-object v1, v0

    .line 184
    .local v1, that:Ltwitter4j/RateLimitStatusJSONImpl;
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    iget v3, v1, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 185
    :cond_2
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    iget v3, v1, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 186
    :cond_3
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v3, v1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 187
    :cond_4
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget v3, v1, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 188
    :cond_5
    iget-object v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    iget-object v3, v1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 189
    goto :goto_0

    .line 188
    :cond_7
    iget-object v2, v1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    if-nez v2, :cond_6

    :cond_8
    move v2, v5

    .line 191
    goto :goto_0
.end method

.method public getHourlyLimit()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    return v0
.end method

.method public getRemainingHits()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    return v0
.end method

.method public getResetTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    return-object v0
.end method

.method public getResetTimeInSeconds()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    return v0
.end method

.method public getSecondsUntilReset()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 196
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    .line 197
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int v0, v1, v2

    .line 199
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int v0, v1, v2

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 201
    return v0

    .line 200
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "hourly_limit"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    .line 72
    const-string v0, "remaining_hits"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    .line 73
    const-string v0, "reset_time"

    const-string v1, "EEE MMM d HH:mm:ss Z yyyy"

    invoke-static {v0, p1, v1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    .line 74
    const-string v0, "reset_time_in_seconds"

    invoke-static {v0, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 75
    iget-object v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RateLimitStatusJSONImpl{remainingHits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remainingHits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", hourlyLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->hourlyLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resetTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
