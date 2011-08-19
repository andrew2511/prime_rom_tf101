.class Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;
.super Landroid/os/AsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindAWSServiceTask"
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
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 326
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$13(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$14(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$15(Lcom/ecareme/pixwe/view/common/RegisterActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    .line 333
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 334
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$16(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 339
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

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 348
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 349
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 350
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    .end local v0           #_msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 353
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/os/Handler;

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

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
