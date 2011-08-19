.class Lcom/layar/UserCreateActivity$3$1;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$UserCreateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserCreateActivity$3;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/UserCreateResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/UserCreateActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$5(Lcom/layar/UserCreateActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    invoke-virtual {p1}, Lcom/layar/data/user/UserCreateResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 193
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$8(Lcom/layar/UserCreateActivity;)Lcom/layar/ActivityHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layar/data/user/UserCreateResponse;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    goto :goto_0

    .line 160
    :sswitch_0
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$6(Lcom/layar/UserCreateActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v1}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setUsername(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$6(Lcom/layar/UserCreateActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v1}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserCreateActivity;->access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$6(Lcom/layar/UserCreateActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v1}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setEmail(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 164
    const-class v3, Lcom/layar/UserCreateConfirmationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    invoke-static {}, Lcom/layar/UserCreateActivity;->access$7()I

    move-result v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/layar/UserCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 168
    :sswitch_1
    const v0, 0x7f090141

    .line 169
    const v1, 0x7f090142

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 168
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 170
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 173
    :sswitch_2
    const v0, 0x7f090149

    .line 174
    const v1, 0x7f09014a

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 173
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 178
    :sswitch_3
    const v0, 0x7f09014c

    .line 179
    const v1, 0x7f09014d

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 178
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 183
    :sswitch_4
    const v0, 0x7f090146

    .line 184
    const v1, 0x7f090147

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 183
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 188
    :sswitch_5
    const v0, 0x7f090143

    .line 189
    const v1, 0x7f090144

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v2}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v2

    .line 188
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3$1;->this$1:Lcom/layar/UserCreateActivity$3;

    invoke-static {v0}, Lcom/layar/UserCreateActivity$3;->access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x2f -> :sswitch_5
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_4
    .end sparse-switch
.end method
