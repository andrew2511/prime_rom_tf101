.class public Lcom/android/i18n/addressinput/NotifyingListener;
.super Ljava/lang/Object;
.source "NotifyingListener.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# instance fields
.field private mDone:Z

.field private mSleeper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "sleeper"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    .line 29
    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public dataLoadingEnd()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    return-void

    .line 37
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 40
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method waitLoadingEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-boolean v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mDone:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    iget-object v0, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/NotifyingListener;->mSleeper:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 49
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 46
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
