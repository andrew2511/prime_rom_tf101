.class Lnet/yostore/aws/ansytask/BindDownloadServiceTask$3;
.super Ljava/lang/Object;
.source "BindDownloadServiceTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->onPostExecute(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$3;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$3;->this$0:Lnet/yostore/aws/ansytask/BindDownloadServiceTask;

    iget-object p0, v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method
