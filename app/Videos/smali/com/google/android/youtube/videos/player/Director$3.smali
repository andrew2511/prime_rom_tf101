.class Lcom/google/android/youtube/videos/player/Director$3;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$3;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 595
    instance-of v0, p2, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$3;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$700(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$3;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$600(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video streams [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$3;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->access$800(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$3;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 1
    .parameter "request"
    .parameter "streams"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$3;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 593
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VideoStreams;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$3;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V

    return-void
.end method
