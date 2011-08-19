.class Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;
.super Landroid/os/AsyncTask;
.source "TextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/TextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadToViewTask"
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
.field s:Ljava/lang/String;

.field final synthetic this$0:Lnet/yostore/aws/view/present/TextActivity;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/present/TextActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 280
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    .line 278
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->s:Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->url:Ljava/lang/String;

    .line 279
    iput-object p2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 285
    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->access$0(Lnet/yostore/aws/view/present/TextActivity;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v3, v3, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    div-int/lit16 v3, v3, 0x7d0

    iget-object v4, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v4, v4, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit16 v4, v4, 0x7d0

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->access$1(Lnet/yostore/aws/view/present/TextActivity;I)V

    .line 288
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    mul-int/lit16 v1, v2, 0x7d0

    .line 289
    .local v1, start:I
    add-int/lit16 v0, v1, 0x7d0

    .line 290
    .local v0, end:I
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v2, v5

    .line 291
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->s:Ljava/lang/String;

    .line 292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .end local v0           #end:I
    .end local v1           #start:I
    :cond_1
    move v4, v6

    .line 287
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 300
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$6(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$6(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/TextActivity;->access$7(Lnet/yostore/aws/view/present/TextActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 325
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 309
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 310
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    const v4, 0x7f060030

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$4(Lnet/yostore/aws/view/present/TextActivity;Landroid/app/ProgressDialog;)V

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$5(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
