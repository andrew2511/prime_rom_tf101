.class Lcom/google/android/youtube/videos/PinManager$4;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->requestLicenseForPinning(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
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

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

.field final synthetic val$stream:Lcom/google/android/youtube/core/model/Stream;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iput-object p4, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .locals 4
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v3, 0x0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get offline rights "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1122(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 385
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$videoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorLicenseException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 390
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$4;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .locals 7
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v4}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$videoId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathForVideoId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, filePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got offline rights for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "stream_length"

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iget-wide v4, v4, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 357
    iget-object v3, p2, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    if-eqz v3, :cond_0

    .line 358
    const-string v3, "license_ids"

    iget-object v4, p2, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1000(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1600(Lcom/google/android/youtube/videos/PinManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/youtube/videos/PinManager;->access$1602(Lcom/google/android/youtube/videos/PinManager;Z)Z

    .line 366
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v4}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/videos/DownloadJanitorService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v4}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 373
    .local v2, userPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$videoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v3, v4}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_2
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-static {v3, v6}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$4;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method
