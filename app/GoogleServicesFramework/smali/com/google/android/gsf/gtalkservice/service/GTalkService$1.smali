.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;
.super Landroid/os/Handler;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x0

    .line 171
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 172
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "GTalkService"

    const-string v4, "GTalkService.onDestroy() has been called, no-op"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local p0
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 178
    :sswitch_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v3, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    goto :goto_0

    .line 182
    .restart local p0
    :sswitch_1
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, connectionNum:I
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    if-nez v2, :cond_3

    .line 190
    const-string v3, "GTalkService"

    const-string v4, "EVENT_GSERVICES_CHANGED: NO GTALK CONNECTION!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 198
    .local v0, androidId:J
    cmp-long v3, v0, v5

    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 184
    .end local v0           #androidId:J
    .end local v2           #connectionNum:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 201
    .restart local v0       #androidId:J
    .restart local v2       #connectionNum:I
    :cond_2
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 202
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "GTalkService"

    const-string v4, "android_id is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0           #androidId:J
    :cond_3
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_4

    .line 206
    const-string v3, "GTalkService"

    const-string v4, "EVENT_GSERVICES_CHANGED: reset current connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
