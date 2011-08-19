.class public Lcom/google/android/finsky/api/DfeRequest;
.super Lcom/android/volley/Request;
.source "DfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .parameter "url"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 60
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 61
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 62
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    .line 63
    return-void
.end method

.method private handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;
    .locals 4
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 155
    :goto_0
    return-object v1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v0

    .line 143
    .local v0, commands:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->clearCache()V

    .line 152
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    sget-object v1, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 155
    goto :goto_0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 12
    .parameter "response"

    .prologue
    const-wide/16 v10, 0x0

    .line 102
    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 104
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 109
    .local v3, now:J
    :try_start_0
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Soft-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 110
    .local v5, softTtlHeader:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 111
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 114
    :cond_0
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Hard-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, hardTtlHeader:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 116
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2           #hardTtlHeader:Ljava/lang/String;
    .end local v5           #softTtlHeader:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v8, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 127
    return-object v1

    .line 118
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "Invalid TTL: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 121
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    sget-object v0, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .locals 4
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/MicroProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "Null parsed response for %s, request %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/api/DfeRequest;->deliverError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeRequest;->deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    sget-boolean v4, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Response size: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    :try_start_0
    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v4}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v3

    .line 86
    .local v3, wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v2

    .line 87
    .local v2, error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 95
    .end local v2           #error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    .end local v3           #wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    :goto_0
    return-object v4

    .line 91
    .restart local v2       #error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    .restart local v3       #wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeRequest;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 93
    .local v0, cacheEntry:Lcom/android/volley/Cache$Entry;
    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 94
    .end local v0           #cacheEntry:Lcom/android/volley/Cache$Entry;
    .end local v2           #error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    .end local v3           #wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 95
    .local v1, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v4, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_0
.end method

.method public setListener(Lcom/android/volley/Response$Listener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 70
    return-void
.end method
