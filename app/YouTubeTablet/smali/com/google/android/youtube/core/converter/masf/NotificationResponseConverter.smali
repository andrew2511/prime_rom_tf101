.class public Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;
.super Ljava/lang/Object;
.source "NotificationResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;->convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Ljava/lang/Void;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/NotificationException;
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 24
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v2

    .line 25
    .local v2, responseProto:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    new-instance v3, Lcom/google/android/youtube/core/converter/NotificationException;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/NotificationException;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #responseProto:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 30
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/converter/NotificationException;

    const-string v4, "IO error converting notification data response"

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/core/converter/NotificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 28
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    .restart local v2       #responseProto:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
