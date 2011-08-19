.class Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindMPServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 472
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/service/PlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/LoginActivity;->access$4(Lnet/yostore/aws/view/common/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    :cond_0
    sget-object v2, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 478
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    sget-object v3, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/common/LoginActivity;->access$5(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    invoke-static {v2, v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$6(Lnet/yostore/aws/view/common/LoginActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    .line 479
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 480
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/LoginActivity;->access$7(Lnet/yostore/aws/view/common/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 485
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 495
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 496
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 497
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    .end local v0           #_msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
