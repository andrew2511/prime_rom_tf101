.class Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;
.super Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;
.source "RemoteVideoChatAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionReadyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;-><init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V

    return-void
.end method


# virtual methods
.method public onSessionReady(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .locals 6
    .parameter "session"

    .prologue
    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v2, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-static {v2}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$200(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2

    .line 114
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-static {v3}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$300(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-static {v3}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$300(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .local v1, task:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;
    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;->runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error running VideoChatTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$400(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #task:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 123
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-static {v3}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$500(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V

    .line 124
    iget-object v3, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$202(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 125
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :cond_1
    return-void
.end method
