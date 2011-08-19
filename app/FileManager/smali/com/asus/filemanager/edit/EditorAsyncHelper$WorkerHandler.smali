.class Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "EditorAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/edit/EditorAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field private args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

.field private mTerminate:Z

.field mWaleLock:Landroid/os/PowerManager$WakeLock;

.field private result:Lcom/asus/filemanager/edit/EditResult;

.field final synthetic this$0:Lcom/asus/filemanager/edit/EditorAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/edit/EditorAsyncHelper;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "looper"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->this$0:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    .line 43
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    invoke-static {}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->access$000()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000001a

    const-string v2, "EditorAysncHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    return-void
.end method


# virtual methods
.method public copyFileTerminate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 101
    sput-boolean v0, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    .line 102
    iput-boolean v0, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mTerminate:Z

    .line 103
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 53
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 54
    const-string v1, "EditorAysncHelper"

    const-string v2, "handle COPY_FILE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    .line 57
    const/4 v1, 0x0

    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mQuit:Z

    .line 58
    const/4 v1, 0x0

    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    .line 59
    const/4 v1, 0x0

    sput-boolean v1, Lcom/asus/filemanager/edit/EditUtil;->mApplyAll:Z

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mTerminate:Z

    .line 62
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/asus/filemanager/main/FileInfo;->getArrayInfo([Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;

    move-result-object v0

    .line 64
    .local v0, info:Lcom/asus/filemanager/main/FileInfo;
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mTerminate:Z

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v2, v2, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    const/16 v3, 0x1450

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    :cond_0
    new-instance v1, Lcom/asus/filemanager/edit/EditResult;

    invoke-direct {v1}, Lcom/asus/filemanager/edit/EditResult;-><init>()V

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    .line 69
    iget-boolean v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mTerminate:Z

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v2, v2, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v3, v3, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-boolean v4, v4, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->srcDelete:Z

    invoke-static {v1, v2, v3, v4}, Lcom/asus/filemanager/edit/EditUtil;->Copy2Path([Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;Z)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v2, v2, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    const/16 v3, 0x1454

    iget-object v4, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    iget v4, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-boolean v6, v6, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->showsuccess:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v6, v6, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->path:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_3
    move-object v6, v7

    .line 74
    goto :goto_1

    .line 78
    .end local v0           #info:Lcom/asus/filemanager/main/FileInfo;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 83
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 84
    const-string v1, "EditorAysncHelper"

    const-string v2, "handle DELETE_FILE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    .line 86
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    invoke-static {v1}, Lcom/asus/filemanager/edit/EditUtil;->DeleteFiles([Ljava/io/File;)Lcom/asus/filemanager/edit/EditResult;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    .line 88
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v2, v2, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    const/16 v3, 0x13ee

    iget-object v4, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    iget v4, v4, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    iget-object v5, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->result:Lcom/asus/filemanager/edit/EditResult;

    iget v5, v5, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    iget-object v6, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    iget-object v6, v6, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->mWaleLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCopyFileOverWrite(ZZ)V
    .locals 0
    .parameter "isOverWrite"
    .parameter "isApplyAll"

    .prologue
    .line 106
    sput-boolean p1, Lcom/asus/filemanager/edit/EditUtil;->mOverWrite:Z

    .line 107
    sput-boolean p2, Lcom/asus/filemanager/edit/EditUtil;->mApplyAll:Z

    .line 108
    return-void
.end method
