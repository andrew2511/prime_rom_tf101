.class Lcom/google/android/youtube/videos/PinManager$2;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
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
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iput-object p3, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .locals 6
    .parameter "request"
    .parameter "error"

    .prologue
    const-wide/16 v4, 0x0

    .line 297
    instance-of v1, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-eq v1, v2, :cond_1

    .line 299
    :cond_0
    const-string v1, "unexpected unpin result"

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$1000(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager;->access$1122(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 303
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 304
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1, v4, v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 305
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1, v4, v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 306
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 308
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1200(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$2;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onUnpinError(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$2;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method
