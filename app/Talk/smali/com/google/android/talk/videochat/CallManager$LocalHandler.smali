.class Lcom/google/android/talk/videochat/CallManager$LocalHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$LocalHandler;->this$0:Lcom/google/android/talk/videochat/CallManager;

    .line 1278
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1279
    return-void
.end method

.method public constructor <init>(Lcom/google/android/talk/videochat/CallManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$LocalHandler;->this$0:Lcom/google/android/talk/videochat/CallManager;

    .line 1282
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 1287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    .line 1288
    .local v0, callState:Lcom/google/android/talk/videochat/CallState;
    const/4 v5, 0x0

    .line 1290
    .local v5, requestReply:Z
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1311
    const-string v6, "talk:videochat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :goto_0
    return-void

    .line 1292
    :pswitch_0
    const/4 v5, 0x1

    .line 1294
    :pswitch_1
    iget-object v6, p0, Lcom/google/android/talk/videochat/CallManager$LocalHandler;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v6}, Lcom/google/android/talk/videochat/CallManager;->access$1700(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    .line 1298
    :try_start_0
    iget-object v7, p0, Lcom/google/android/talk/videochat/CallManager$LocalHandler;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v7}, Lcom/google/android/talk/videochat/CallManager;->access$1700(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1300
    .local v4, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/videochat/ICallStateListener;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/videochat/ICallStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    .local v3, listener:Lcom/google/android/talk/videochat/ICallStateListener;
    :try_start_1
    iget-object v7, v0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    invoke-interface {v3, v7, v0, v5}, Lcom/google/android/talk/videochat/ICallStateListener;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1304
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1305
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleCallStateChanged] RemoteException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1308
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/talk/videochat/ICallStateListener;
    .end local v4           #listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/videochat/ICallStateListener;>;"
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/videochat/ICallStateListener;>;"
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
