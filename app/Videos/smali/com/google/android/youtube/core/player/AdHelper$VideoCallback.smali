.class Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;
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
    name = "VideoCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Video;",
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
    .line 153
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVideoId:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVastAd:Lcom/google/android/youtube/core/model/VastAd;

    .line 156
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 169
    const-string v0, "Error retrieving video for the ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 171
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 6
    .parameter "request"
    .parameter "adVideo"

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$400(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVideoId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVastAd:Lcom/google/android/youtube/core/model/VastAd;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;-><init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->originalVideoId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
