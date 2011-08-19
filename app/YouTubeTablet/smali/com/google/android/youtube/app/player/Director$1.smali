.class Lcom/google/android/youtube/app/player/Director$1;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/player/Director;->initCallbacks()V
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
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director$1;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$1;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$200(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayErrorGData"

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director$1;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/app/player/Director;->access$100(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$1;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/player/Director;->access$300(Lcom/google/android/youtube/app/player/Director;Ljava/lang/Exception;)V

    .line 793
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/Director$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$1;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/player/Director;->access$000(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/model/Video;)V

    .line 788
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/Director$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
