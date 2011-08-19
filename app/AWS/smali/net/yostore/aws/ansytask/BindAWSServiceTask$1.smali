.class Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;
.super Ljava/lang/Object;
.source "BindAWSServiceTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/ansytask/BindAWSServiceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/BindAWSServiceTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 146
    invoke-static {p2}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/AWSServiceInterface;

    move-result-object v0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    .line 147
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-boolean v0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->bBind:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    invoke-static {v1}, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->access$3(Lnet/yostore/aws/ansytask/BindAWSServiceTask;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    :cond_1
    new-instance v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->startIntent:Landroid/content/Intent;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-boolean v3, v3, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->isShaowDialod:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    .line 158
    return-void
.end method
