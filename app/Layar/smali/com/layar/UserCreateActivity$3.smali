.class Lcom/layar/UserCreateActivity$3;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateActivity;->createUser()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserCreateActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserCreateActivity$3;)Lcom/layar/UserCreateActivity;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/util/Util;->validateEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const v0, 0x7f090146

    .line 132
    const v1, 0x7f090147

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    .line 131
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 199
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 136
    const v0, 0x7f090148

    .line 137
    const v1, 0x7f090149

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    .line 136
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 141
    const v0, 0x7f09014b

    .line 142
    const v1, 0x7f09014c

    iget-object v2, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    .line 141
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$4(Lcom/layar/UserCreateActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 149
    .local v4, sendNews:Z
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$5(Lcom/layar/UserCreateActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$6(Lcom/layar/UserCreateActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v1}, Lcom/layar/UserCreateActivity;->access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v2}, Lcom/layar/UserCreateActivity;->access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/UserCreateActivity$3;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v3}, Lcom/layar/UserCreateActivity;->access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    new-instance v5, Lcom/layar/UserCreateActivity$3$1;

    invoke-direct {v5, p0}, Lcom/layar/UserCreateActivity$3$1;-><init>(Lcom/layar/UserCreateActivity$3;)V

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/layar/data/user/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/layar/data/user/UserManager$UserCreateHandler;)V

    goto/16 :goto_0
.end method
