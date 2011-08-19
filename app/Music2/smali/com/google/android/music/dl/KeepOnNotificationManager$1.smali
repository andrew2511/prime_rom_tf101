.class Lcom/google/android/music/dl/KeepOnNotificationManager$1;
.super Ljava/lang/Object;
.source "KeepOnNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 122
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$1;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$1;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$100(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    .line 126
    return-void
.end method
