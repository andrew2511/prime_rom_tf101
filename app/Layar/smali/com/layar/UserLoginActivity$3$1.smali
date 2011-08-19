.class Lcom/layar/UserLoginActivity$3$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserLoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserLoginActivity$3;


# direct methods
.method constructor <init>(Lcom/layar/UserLoginActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 135
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserLoginActivity;->access$1(Lcom/layar/UserLoginActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 152
    new-instance v0, Lcom/layar/ActivityHelper;

    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    .line 153
    .local v0, helper:Lcom/layar/ActivityHelper;
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1, v4, v3, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const v1, 0x7f090153

    iget-object v2, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v2}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/util/Util;->showAlert(ILandroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserLoginActivity;->access$3(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 140
    .end local v0           #helper:Lcom/layar/ActivityHelper;
    :sswitch_0
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/layar/UserLoginActivity;->setResult(I)V

    .line 141
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserLoginActivity;->finish()V

    goto :goto_0

    .line 144
    :sswitch_1
    const v1, 0x7f090151

    iget-object v2, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v2}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/util/Util;->showAlert(ILandroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserLoginActivity;->access$3(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 148
    :sswitch_2
    const v1, 0x7f090152

    iget-object v2, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v2}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/util/Util;->showAlert(ILandroid/content/Context;)V

    .line 149
    iget-object v1, p0, Lcom/layar/UserLoginActivity$3$1;->this$1:Lcom/layar/UserLoginActivity$3;

    invoke-static {v1}, Lcom/layar/UserLoginActivity$3;->access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserLoginActivity;->access$3(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method
