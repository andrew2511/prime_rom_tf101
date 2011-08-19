.class Lnet/yostore/aws/view/present/TextActivity$NextViewTask;
.super Landroid/os/AsyncTask;
.source "TextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/TextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextViewTask"
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


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/present/TextActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->s:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/present/TextActivity;Lnet/yostore/aws/view/present/TextActivity$NextViewTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 381
    new-array v2, v4, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->publishProgress([Ljava/lang/Object;)V

    .line 382
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    mul-int/lit16 v1, v2, 0x7d0

    .line 383
    .local v1, start:I
    add-int/lit16 v0, v1, 0x7d0

    .line 384
    .local v0, end:I
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v2, v4

    .line 385
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->s:Ljava/lang/String;

    .line 388
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 397
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 417
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$6(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$8(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 420
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 423
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/TextActivity;->access$5(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const v5, 0x7f060033

    const v3, 0x7f060012

    const/4 v4, 0x1

    .line 406
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v3, v5}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$4(Lnet/yostore/aws/view/present/TextActivity;Landroid/app/ProgressDialog;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v3, v5}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$4(Lnet/yostore/aws/view/present/TextActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
