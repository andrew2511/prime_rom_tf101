.class Lnet/yostore/aws/ansytask/DownloadAndOpenTask$1;
.super Ljava/lang/Object;
.source "DownloadAndOpenTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$1;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 138
    iget-object v0, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$1;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 139
    return-void
.end method
