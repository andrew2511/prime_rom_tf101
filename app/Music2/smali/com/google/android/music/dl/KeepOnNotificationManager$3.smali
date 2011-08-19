.class Lcom/google/android/music/dl/KeepOnNotificationManager$3;
.super Landroid/content/BroadcastReceiver;
.source "KeepOnNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$3;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 322
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$3;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$1000(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
