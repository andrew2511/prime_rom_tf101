.class public Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;
.super Landroid/os/AsyncTask;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/UploadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitListTask"
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
.field _mdialog:Landroid/app/ProgressDialog;

.field ctx:Landroid/content/Context;

.field task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"

    .prologue
    .line 194
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    .line 189
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->task:Landroid/os/AsyncTask;

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p1, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->list:Ljava/util/List;

    .line 192
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->task:Landroid/os/AsyncTask;

    .line 193
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, rtn:I
    new-array v1, v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->publishProgress([Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$0(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V

    .line 202
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$1(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getAllUploadQueueItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->list:Ljava/util/List;

    .line 203
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    new-instance v2, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    const v4, 0x7f030010

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->list:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$2(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/view/navigate/UploadQueueAdapter;)V

    .line 204
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 211
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 236
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->publishProgress([Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 238
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/ListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    const-string v1, "fail..."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 221
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask$1;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
