.class Lcom/layar/UserForgotPasswordActivity$2$1;
.super Ljava/lang/Object;
.source "UserForgotPasswordActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$ResetPasswordHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserForgotPasswordActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserForgotPasswordActivity$2;


# direct methods
.method constructor <init>(Lcom/layar/UserForgotPasswordActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/ResetPasswordResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/UserForgotPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$2(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    invoke-virtual {p1}, Lcom/layar/data/user/ResetPasswordResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 97
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/UserForgotPasswordActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {p1}, Lcom/layar/data/user/ResetPasswordResponse;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const v0, 0x7f09015a

    .line 99
    iget-object v1, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v1}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/layar/util/Util;->showAlert(ILandroid/content/Context;)V

    goto :goto_0

    .line 89
    :sswitch_0
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$4(Lcom/layar/UserForgotPasswordActivity;)V

    goto :goto_0

    .line 93
    :sswitch_1
    const v0, 0x7f09015b

    .line 94
    iget-object v1, p0, Lcom/layar/UserForgotPasswordActivity$2$1;->this$1:Lcom/layar/UserForgotPasswordActivity$2;

    invoke-static {v1}, Lcom/layar/UserForgotPasswordActivity$2;->access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/layar/util/Util;->showAlert(ILandroid/content/Context;)V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x29 -> :sswitch_1
    .end sparse-switch
.end method
