.class Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SplashActivity;
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
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 346
    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 347
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lnet/yostore/aws/service/PlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$2(Lnet/yostore/aws/view/common/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/common/SplashActivity;->access$3(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    invoke-static {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$4(Lnet/yostore/aws/view/common/SplashActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_1
    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 365
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 355
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$5(Lnet/yostore/aws/view/common/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 357
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 362
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 383
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 384
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 385
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    .end local v0           #_msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 387
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 388
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 389
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 372
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 373
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$6(Lnet/yostore/aws/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
