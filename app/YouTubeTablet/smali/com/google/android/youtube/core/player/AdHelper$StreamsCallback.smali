.class Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;
.super Ljava/lang/Object;
.source "AdHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/AdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field private final originalVastAd:Lcom/google/android/youtube/core/model/VastAd;

.field private final originalVideoId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/AdHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .locals 0
    .parameter
    .parameter "videoId"
    .parameter "originalVastAd"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->originalVideoId:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->originalVastAd:Lcom/google/android/youtube/core/model/VastAd;

    .line 183
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 193
    const-string v0, "Error retrieving video streams for the ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->originalVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 195
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 4
    .parameter "request"
    .parameter "videoStreams"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->originalVideoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->originalVastAd:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/VastAd;->buildUpon()Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/AdHelper;->access$500(Lcom/google/android/youtube/core/player/AdHelper;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/VastAd$Builder;->streamUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/VastAd$Builder;->build()Lcom/google/android/youtube/core/model/VastAd;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    return-void

    .line 186
    :cond_0
    iget-object v3, p2, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VideoStreams;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V

    return-void
.end method
