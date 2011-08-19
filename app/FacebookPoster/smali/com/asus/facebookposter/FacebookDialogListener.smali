.class public Lcom/asus/facebookposter/FacebookDialogListener;
.super Ljava/lang/Object;
.source "FacebookDialogListener.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/asus/facebookposter/FacebookDialogListener;->mActivity:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "FacebookPoster"

    const-string v1, "FacebookDialogListener onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 31
    const-string v0, "post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "FacebookPoster"

    const-string v1, "FacebookDialogListener onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/asus/facebookposter/FacebookDialogListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/asus/facebookposter/FacebookDialogListener;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/asus/facebookposter/FacebookDialogListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 36
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 44
    const-string v0, "FacebookPoster"

    const-string v1, "FacebookDialogListener onError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->printStackTrace()V

    .line 46
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 39
    const-string v0, "FacebookPoster"

    const-string v1, "FacebookDialogListener onFacebookError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 41
    return-void
.end method
