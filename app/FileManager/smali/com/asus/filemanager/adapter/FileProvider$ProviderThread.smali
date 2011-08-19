.class Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;
.super Ljava/lang/Thread;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mWaitingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/adapter/FileProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;-><init>()V

    return-void
.end method


# virtual methods
.method public SendMsg(IIILjava/lang/Object;)V
    .locals 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 192
    iget-object v7, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    monitor-enter v7

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 195
    .local v6, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .end local v6           #msg:Landroid/os/Message;
    :goto_0
    monitor-exit v7

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v8, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    new-instance v0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;-><init>(Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;IIILjava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 176
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/asus/filemanager/adapter/FileProvider$ProviderMsgLoop;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/asus/filemanager/adapter/FileProvider$ProviderMsgLoop;-><init>(Lcom/asus/filemanager/adapter/FileProvider$1;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    .line 177
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 180
    iget-object v2, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    monitor-enter v2

    .line 181
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mWaitingEvents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;

    .line 184
    .local v1, q:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;
    iget-object v3, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    iget v4, v1, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_what:I

    iget v5, v1, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_arg1:I

    iget v6, v1, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_arg2:I

    iget-object v7, v1, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;->m_obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #q:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread$QueueEvent;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-void
.end method
