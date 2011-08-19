.class Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;
.super Landroid/os/Handler;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    .line 336
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x1f

    const/4 v8, 0x1

    .line 341
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 346
    .local v5, snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->access$100(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/List;)V

    goto :goto_0

    .line 351
    .end local v5           #snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    :pswitch_1
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 352
    .local v0, download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, v6

    shl-long/2addr v6, v9

    iget v8, p1, Landroid/os/Message;->arg2:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    .line 353
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v3

    .line 354
    .local v3, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 355
    .local v4, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_1

    .line 357
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_1
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_0

    .line 362
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    :pswitch_2
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 363
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$500(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, v6

    shl-long/2addr v6, v9

    iget v8, p1, Landroid/os/Message;->arg2:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTransfered:J

    .line 365
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v3

    .line 366
    .restart local v3       #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 367
    .restart local v4       #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_2

    .line 369
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_2
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_0

    .line 374
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    :pswitch_3
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 375
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$600(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    goto/16 :goto_0

    .line 380
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :pswitch_4
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 381
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$700(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$800(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    goto/16 :goto_0

    .line 387
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :pswitch_5
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 388
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$700(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$600(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    goto/16 :goto_0

    .line 391
    :cond_3
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_3
    invoke-static {v6, v0, v7}, Lcom/google/android/youtube/core/transfer/TransferService;->access$900(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 397
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :pswitch_6
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1000(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->releaseWifi()V

    .line 398
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->stopSelf()V

    goto/16 :goto_0

    .line 402
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, filePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1100(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    goto/16 :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
