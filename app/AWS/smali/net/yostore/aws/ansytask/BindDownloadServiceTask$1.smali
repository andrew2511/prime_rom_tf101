.class Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;
.super Ljava/lang/Object;
.source "BindDownloadServiceTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/ansytask/BindDownloadServiceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 135
    invoke-static {p2}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/DownloadServiceInterface;

    move-result-object v0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    .line 136
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    invoke-static {v0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->access$3(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    .line 144
    return-void
.end method
