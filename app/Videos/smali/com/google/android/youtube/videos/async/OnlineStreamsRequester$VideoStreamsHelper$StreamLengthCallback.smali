.class final Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;
.super Ljava/lang/Object;
.source "OnlineStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamLengthCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/StreamLengthRequest;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Long;)V

    .line 202
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    check-cast p1, Lcom/google/android/youtube/videos/StreamLengthRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;->onError(Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;)V
    .locals 5
    .parameter "request"
    .parameter "response"

    .prologue
    .line 191
    move-object v0, p2

    .line 192
    .local v0, downloadStreamLength:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v1, v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Long;)V

    .line 197
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    check-cast p1, Lcom/google/android/youtube/videos/StreamLengthRequest;

    .end local p1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;->onResponse(Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;)V

    return-void
.end method
