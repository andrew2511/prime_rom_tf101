.class Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;
.super Landroid/os/AsyncTask;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "renewPlayListTask"
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
.method public constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;J)V
    .locals 2
    .parameter
    .parameter "chgseq"

    .prologue
    .line 537
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 535
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 534
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->chgseq:J

    .line 536
    iput-wide p2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->chgseq:J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 542
    new-array v1, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->publishProgress([Ljava/lang/Object;)V

    .line 545
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$2(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-wide v3, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->chgseq:J

    invoke-interface {v1, v2, v3, v4}, Lnet/yostore/aws/service/PlayListServiceInterface;->RenewPlayList(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :goto_0
    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->publishProgress([Ljava/lang/Object;)V

    .line 558
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 547
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 552
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 555
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 566
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 569
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 586
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 589
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 592
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 576
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
