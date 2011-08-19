.class Lcom/google/android/gm/BulkOperationHelper$6;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$clonedConversations:Ljava/util/Set;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$labelOperation:Lcom/google/android/gm/LabelOperations;

.field final synthetic val$operation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$operation:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$account:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$labelOperation:Lcom/google/android/gm/LabelOperations;

    iput-object p6, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$clonedConversations:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    const-class v3, Lcom/google/android/gm/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 524
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 527
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    invoke-static {v0}, Lcom/google/android/gm/BulkOperationHelper;->access$200(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    move-result-object v0

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->FINISHED:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    invoke-static {v1, v2}, Lcom/google/android/gm/BulkOperationHelper;->access$202(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/BulkOperationHelper$ThreadState;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 529
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->access$300(Lcom/google/android/gm/BulkOperationHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    invoke-static {v1}, Lcom/google/android/gm/BulkOperationHelper;->access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/BulkOperationHelper$6$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/BulkOperationHelper$6$1;-><init>(Lcom/google/android/gm/BulkOperationHelper$6;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 538
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$6;->val$context:Landroid/content/Context;

    const-class v3, Lcom/google/android/gm/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 542
    return-void

    .line 538
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
