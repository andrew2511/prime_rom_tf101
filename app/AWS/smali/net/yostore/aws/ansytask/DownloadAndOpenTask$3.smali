.class Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;
.super Ljava/lang/Object;
.source "DownloadAndOpenTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->showNoSpaceDialog()V
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
    iput-object p1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 356
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/common/SettingActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$3;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method
