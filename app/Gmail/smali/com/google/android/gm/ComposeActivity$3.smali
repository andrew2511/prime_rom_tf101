.class Lcom/google/android/gm/ComposeActivity$3;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageId()J
    .locals 6

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1405
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$600(Lcom/google/android/gm/ComposeActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1408
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$900(Lcom/google/android/gm/ComposeActivity;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v3}, Lcom/google/android/gm/ComposeActivity;->access$900(Lcom/google/android/gm/ComposeActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1411
    .local v0, retrievedMessageId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/ComposeActivity;->access$602(Lcom/google/android/gm/ComposeActivity;J)J

    .line 1416
    .end local v0           #retrievedMessageId:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$600(Lcom/google/android/gm/ComposeActivity;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 1417
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V
    .locals 5
    .parameter

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1376
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v1, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1377
    if-nez v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    const-class v4, Lcom/google/android/gm/EmptyService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v1, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1386
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1388
    :cond_1
    return-void

    .line 1384
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V
    .locals 4
    .parameter "message"
    .parameter "messageId"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity;->access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->access$602(Lcom/google/android/gm/ComposeActivity;J)J

    .line 1393
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$800(Lcom/google/android/gm/ComposeActivity;)V

    .line 1397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1399
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V

    .line 1401
    :cond_0
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V
    .locals 4
    .parameter

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity;->access$1000(Lcom/google/android/gm/ComposeActivity;)V

    .line 1425
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1427
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v1, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1428
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v1, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    if-nez v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    const-class v3, Lcom/google/android/gm/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeActivity;->stopService(Landroid/content/Intent;)Z

    .line 1435
    :cond_0
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1436
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1438
    :cond_1
    return-void

    .line 1429
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
