.class Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;
.super Ljava/lang/Object;
.source "FacebookShareActivity.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 123
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->saveCredentials(Lcom/facebook/android/Facebook;)Z

    .line 105
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$2(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->postToWall(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 118
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->access$3(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;->this$0:Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 113
    return-void
.end method
