.class Lcom/google/android/youtube/videos/PinManager$3;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
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
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v2, 0x0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get streams for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorUnsupportedVideoFormat(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 339
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 342
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$3;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 5
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/VideoStreams;->download:Lcom/google/android/youtube/core/model/Stream;

    iget-wide v1, v1, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 324
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->getAvailableBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1100(Lcom/google/android/youtube/videos/PinManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorInsufficientSpace(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v4}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v4}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1114(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/VideoStreams;->download:Lcom/google/android/youtube/core/model/Stream;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1300(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VideoStreams;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$3;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V

    return-void
.end method
