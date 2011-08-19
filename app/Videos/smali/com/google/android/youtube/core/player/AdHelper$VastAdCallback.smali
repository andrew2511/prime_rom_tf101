.class Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
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
    name = "VastAdCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Lcom/google/android/youtube/core/model/VastAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final originalVideoId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/AdHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "videoId"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->originalVideoId:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 138
    const-string v0, "Error retrieving VAST ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->originalVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 140
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;)V
    .locals 5
    .parameter "request"
    .parameter "ad"

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->originalVideoId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$100(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$300(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/AdHelper;->access$200(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->originalVideoId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p2}, Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;-><init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->this$0:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/AdHelper;->access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->originalVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VastAd;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;->onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;)V

    return-void
.end method
