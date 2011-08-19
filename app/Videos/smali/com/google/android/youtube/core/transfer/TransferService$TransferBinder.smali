.class public Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
.super Landroid/os/Binder;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "filePath"
    .parameter "networkUri"
    .parameter "extras"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 467
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 469
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    .local v0, transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->insert(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 471
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 473
    return-void

    .line 466
    .end local v0           #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1200(Lcom/google/android/youtube/core/transfer/TransferService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {p1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onRestored()V

    .line 436
    :cond_0
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSnapshot()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/Transfer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v3}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 456
    .local v1, snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v3}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 457
    .local v2, transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v3, v2, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 459
    .end local v2           #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_0
    return-object v1
.end method

.method public removeTransfer(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 480
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$700(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask;

    .line 483
    .local v0, task:Lcom/google/android/youtube/core/transfer/TransferTask;
    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/TransferTask;->cancel()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->onCanceled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
