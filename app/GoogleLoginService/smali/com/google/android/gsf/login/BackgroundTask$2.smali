.class Lcom/google/android/gsf/login/BackgroundTask$2;
.super Landroid/os/Handler;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackgroundTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackgroundTask;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-static {v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->access$300(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    iget-boolean v0, v0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    const-string v1, "Network not responding after 60s"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-static {v1, v2}, Lcom/google/android/gsf/login/BackgroundTask;->access$202(Lcom/google/android/gsf/login/BackgroundTask;Lcom/google/android/gsf/login/BackgroundTask$Action;)Lcom/google/android/gsf/login/BackgroundTask$Action;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->access$102(Lcom/google/android/gsf/login/BackgroundTask;Lcom/google/android/gsf/login/BackgroundTask$Action;)Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 113
    const v1, 0x320c9

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$2;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackgroundTask;->onNetworkFailed()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
