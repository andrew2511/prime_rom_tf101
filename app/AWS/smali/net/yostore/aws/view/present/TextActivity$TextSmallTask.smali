.class Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;
.super Landroid/os/AsyncTask;
.source "TextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/TextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSmallTask"
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
.field final synthetic this$0:Lnet/yostore/aws/view/present/TextActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/present/TextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/present/TextActivity;Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 433
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->publishProgress([Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$7(Lnet/yostore/aws/view/present/TextActivity;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$7(Lnet/yostore/aws/view/present/TextActivity;)F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$9(Lnet/yostore/aws/view/present/TextActivity;F)V

    .line 436
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 448
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 451
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$6(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/TextActivity;->access$7(Lnet/yostore/aws/view/present/TextActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 470
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 473
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const v5, 0x7f060033

    const v3, 0x7f060012

    const/4 v4, 0x1

    .line 457
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v3, v5}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$4(Lnet/yostore/aws/view/present/TextActivity;Landroid/app/ProgressDialog;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->this$0:Lnet/yostore/aws/view/present/TextActivity;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
