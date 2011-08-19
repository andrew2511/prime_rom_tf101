.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;
.super Landroid/os/AsyncTask;
.source "AWSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "param"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    sget-object v3, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$2(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnet/yostore/aws/handler/NavigateHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lnet/yostore/aws/handler/NavigateHandler;)V

    .line 272
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 273
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 275
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Long;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.reject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 281
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 285
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.freeze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 293
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 294
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 295
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 310
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 305
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
