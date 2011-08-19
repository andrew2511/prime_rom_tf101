.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;
.super Landroid/os/Handler;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 273
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 274
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x3

    .line 277
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 279
    :sswitch_0
    const-string v3, "GTalkService/c"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "(WORKER THREAD) connect"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$600(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$700(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    goto :goto_0

    .line 286
    :sswitch_1
    const-string v3, "GTalkService/c"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "(WORKER THREAD) logout"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$600(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$800(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    goto :goto_0

    .line 293
    :sswitch_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v2

    .line 295
    .local v2, isConnected:Z
    const-string v3, "GTalkService/c"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(WORKER THREAD) close connection: connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$600(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 299
    :cond_3
    if-eqz v2, :cond_0

    .line 300
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v6, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeConnection(ZZZ)V

    goto :goto_0

    .line 307
    .end local v2           #isConnected:Z
    :sswitch_3
    const-string v3, "GTalkService"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "(WORKER THREAD) update account status"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->updateAccountStatus()V

    goto/16 :goto_0

    .line 315
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 316
    .local v1, error:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 318
    .local v0, connectionId:I
    const-string v3, "GTalkService"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(WORKER THREAD) EVENT_CONNECTION_CLOSED, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 322
    :cond_5
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3, v0, v1, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionClosed(IIZ)V

    goto/16 :goto_0

    .line 326
    .end local v0           #connectionId:I
    .end local v1           #error:I
    :sswitch_5
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->deleteObservers()V

    .line 328
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V

    goto/16 :goto_0

    .line 333
    :sswitch_6
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    .line 334
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "EVENT_REQUEST_ROSTER: not connected"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_6
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "EVENT_REQUEST_ROSTER: already ONLINE, ignore"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :cond_7
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "handle EVENT_REQUEST_ROSTER"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$900(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Z

    goto/16 :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method
