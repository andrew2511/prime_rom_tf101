.class public Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
.super Ljava/lang/Object;
.source "RemoteVideoChatAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;,
        Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPendingRequest:Ljava/lang/Boolean;

.field private mServiceBound:Ljava/lang/Boolean;

.field private mSessionReadyCallback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

.field private mVideoChatTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "remoteBareJid"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    .line 79
    new-instance v0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;-><init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mConnection:Landroid/content/ServiceConnection;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mVideoChatTaskQueue:Ljava/util/Queue;

    .line 32
    iput-wide p3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mAccountId:J

    .line 33
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->onVideoChatServiceBound(Lcom/google/android/talk/videochat/IVideoChatServiceBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mVideoChatTaskQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->unbind()V

    return-void
.end method

.method private bindVideoChatService()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 131
    const-string v0, "Talk:videochat"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private onVideoChatServiceBound(Lcom/google/android/talk/videochat/IVideoChatServiceBinder;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 100
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mSessionReadyCallback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/talk/videochat/IVideoChatServiceBinder;->requestVideoChatSession(JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
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
    const-string v1, "Talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVideoChatServiceBound] RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestVideoChatSession(Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
    .locals 2
    .parameter "sessionReadyCallback"

    .prologue
    .line 73
    const-string v0, "Talk:videochat"

    const-string v1, "[RemoteVideoChatAccessor] requestSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mSessionReadyCallback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    .line 75
    invoke-direct {p0}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->bindVideoChatService()V

    .line 76
    return-void
.end method

.method private unbind()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mServiceBound:Ljava/lang/Boolean;

    .line 66
    :cond_0
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;-><init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;)V

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->requestVideoChatSession(Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V

    .line 55
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mPendingRequest:Ljava/lang/Boolean;

    .line 56
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->mVideoChatTaskQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
