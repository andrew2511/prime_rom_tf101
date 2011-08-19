.class Lcom/android/server/sip/SipWakeLock;
.super Ljava/lang/Object;
.source "SipWakeLock.java"


# static fields
.field private static final DEBUGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private mHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .registers 3
    .parameter "powerManager"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 33
    iput-object p1, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    .line 34
    return-void
.end method


# virtual methods
.method declared-synchronized acquire(J)V
    .registers 6
    .parameter "timeout"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_16

    .line 44
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock.timer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    :cond_16
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 49
    monitor-exit p0

    return-void

    .line 43
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized acquire(Ljava/lang/Object;)V
    .registers 5
    .parameter "holder"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_15

    .line 54
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    :cond_15
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 60
    :cond_22
    monitor-exit p0

    return-void

    .line 52
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Ljava/lang/Object;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 66
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 70
    :cond_1f
    monitor-exit p0

    return-void

    .line 63
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 40
    monitor-exit p0

    return-void

    .line 37
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
