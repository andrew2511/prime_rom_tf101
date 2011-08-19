.class Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;
.super Ljava/lang/Object;
.source "WakelockedThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/WakelockedThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakelockedRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "name"
    .parameter "context"
    .parameter "runnable"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    iget-object v2, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 34
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 35
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 36
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/util/WakelockedThread$WakelockedRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 42
    return-void

    .line 40
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
