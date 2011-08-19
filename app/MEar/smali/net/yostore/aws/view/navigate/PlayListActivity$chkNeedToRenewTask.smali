.class Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;
.super Landroid/os/AsyncTask;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "chkNeedToRenewTask"
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
.field chgseq:J

.field mdialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 474
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->chgseq:J

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$0(Lnet/yostore/aws/view/navigate/PlayListActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->chgseq:J

    .line 481
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iget-wide v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->chgseq:J

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$1(Lnet/yostore/aws/view/navigate/PlayListActivity;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    sget-object v0, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    if-nez v0, :cond_0

    .line 484
    const-string v0, "PlayListActivity"

    const-string v1, "EMPTY MEAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 492
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 506
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 509
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 522
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 525
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 526
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iget-wide v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->chgseq:J

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;J)V

    new-array v1, v4, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 528
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
