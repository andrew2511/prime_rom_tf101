.class Lcom/android/providers/media/MtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v3}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v4}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v4}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorage;

    .line 73
    .local v2, storage:Landroid/mtp/MtpStorage;
    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v4, v2}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V

    goto :goto_0

    .line 77
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #storage:Landroid/mtp/MtpStorage;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 75
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/providers/media/MtpService;->access$202(Lcom/android/providers/media/MtpService;Z)Z

    .line 77
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_2
    return-void
.end method
