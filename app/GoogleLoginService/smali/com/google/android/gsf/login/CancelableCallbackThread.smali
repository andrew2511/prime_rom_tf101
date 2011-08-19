.class Lcom/google/android/gsf/login/CancelableCallbackThread;
.super Ljava/lang/Thread;
.source "BackendStub.java"


# instance fields
.field private mActualRunnable:Ljava/lang/Runnable;

.field private mCallbackMessage:Landroid/os/Message;

.field private mIsCanceled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1129
    return-void
.end method

.method public static startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 2
    .parameter "actualRunnable"
    .parameter "callbackMessage"

    .prologue
    .line 1161
    new-instance v0, Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-direct {v0}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>()V

    .line 1162
    .local v0, thread:Lcom/google/android/gsf/login/CancelableCallbackThread;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Z

    .line 1163
    iput-object p0, v0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mActualRunnable:Ljava/lang/Runnable;

    .line 1164
    iput-object p1, v0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    .line 1166
    invoke-virtual {v0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 1168
    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 1149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-void

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mActualRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1136
    monitor-enter p0

    .line 1137
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1144
    :goto_0
    monitor-exit p0

    .line 1145
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
