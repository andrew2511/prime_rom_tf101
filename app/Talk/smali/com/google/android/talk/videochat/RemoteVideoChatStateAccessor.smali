.class public Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
.super Ljava/lang/Object;
.source "RemoteVideoChatStateAccessor.java"


# instance fields
.field private mAccountId:J

.field private mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

.field private mContext:Landroid/content/Context;

.field private mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

.field private mSoftConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;-><init>(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mSoftConnection:Landroid/content/ServiceConnection;

    .line 70
    iput-wide p2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mAccountId:J

    .line 71
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->onSoftVideoChatServiceBound(Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)Lcom/google/android/talk/videochat/ICallStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    return-object v0
.end method

.method private bindVideoChatService()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mSoftConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 113
    return-void
.end method

.method private onSoftVideoChatServiceBound(Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)V
    .locals 5
    .parameter "service"

    .prologue
    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    .line 98
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;->addRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mAccountId:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;->requestCallStateUpdate(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteVideoChatStateAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVideoChatStateBound] RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onDisconnected()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public registerCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 29
    const-string v0, "RemoteVideoChatStateAccessor"

    const-string v1, "registerCallStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->bindVideoChatService()V

    .line 31
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    .line 32
    return-void
.end method

.method public requestCallStateUpdate()V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mAccountId:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;->requestCallStateUpdate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteVideoChatStateAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem requesting call state update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterCallStateListener()V
    .locals 5

    .prologue
    .line 51
    const-string v1, "RemoteVideoChatStateAccessor"

    const-string v2, "unregisterCallStateListner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mServiceBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;->removeRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->mSoftConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteVideoChatStateAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem removing ICallStateListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "RemoteVideoChatStateAccessor"

    const-string v2, "Problem unbinding service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
