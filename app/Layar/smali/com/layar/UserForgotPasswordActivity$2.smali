.class Lcom/layar/UserForgotPasswordActivity$2;
.super Ljava/lang/Object;
.source "UserForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserForgotPasswordActivity;->submitRequest()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserForgotPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserForgotPasswordActivity$2;)Lcom/layar/UserForgotPasswordActivity;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/UserForgotPasswordActivity;->access$0(Lcom/layar/UserForgotPasswordActivity;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$1(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/util/Util;->validateEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const v0, 0x7f090146

    .line 75
    const v1, 0x7f090147

    iget-object v2, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    .line 74
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$1(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 103
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$2(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$3(Lcom/layar/UserForgotPasswordActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserForgotPasswordActivity$2;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v1}, Lcom/layar/UserForgotPasswordActivity;->access$1(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/layar/UserForgotPasswordActivity$2$1;

    invoke-direct {v2, p0}, Lcom/layar/UserForgotPasswordActivity$2$1;-><init>(Lcom/layar/UserForgotPasswordActivity$2;)V

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/layar/data/user/UserManager;->resetPassword(Ljava/lang/String;Lcom/layar/data/user/UserManager$ResetPasswordHandler;)V

    goto :goto_0
.end method
