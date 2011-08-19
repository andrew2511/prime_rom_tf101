.class Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindUploadServiceTask"
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
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 271
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$4(Lcom/ecareme/pixwe/view/common/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    :cond_0
    sget-object v2, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    sget-object v3, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$5(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$6(Lcom/ecareme/pixwe/view/common/LoginActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    .line 278
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 279
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$7(Lcom/ecareme/pixwe/view/common/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 284
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

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 293
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 294
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 295
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$0(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    .end local v0           #_msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 297
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 298
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 299
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$0(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/os/Handler;

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

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
